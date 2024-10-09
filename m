Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFDE1E1327
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728506154; cv=none; b=eSXMwK5I08E6o79T8tExw4wObOr0u7M3xuQ8ql3WhNguvwQM6G/iun7D9FM/YchELFyitHBEMMsV4wo0lasQoUrwE/g0gFmVxnVN9DsJRgDORWT2zvIA6AA3tysh+1cP+HCRFa7F2brTf/O2SKlmB7p3iJ/FcsOqVhq4RYSfDcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728506154; c=relaxed/simple;
	bh=Grq6R+tV2fSGQ6BTcKgDzl5MFMbbEhvwm0v19NOSFjM=;
	h=To:Subject:From:Message-Id:Date; b=HcPps9aOhhPrEHmsrUs83R0TpqeRVYFZfHvbsVrHfxmQVFM45CmkOyK87lsCLC84TexoLQpumr2Vs1bL4j0NmMkfSmePFOTLKORIO+Nx7/oCg4wC+zQ1odQzSZBhAWOhO/PY+RGa9NedUDbIU8TwBXmTy5D5r2qLXh73jjZJAaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+Z0gc/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+Z0gc/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB8EC4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728506153;
	bh=Grq6R+tV2fSGQ6BTcKgDzl5MFMbbEhvwm0v19NOSFjM=;
	h=To:Subject:From:Date:From;
	b=V+Z0gc/9CPitV9hUmZ75ROarMNkJpY9HZsHxWUIQDFgY/reLzeZBEqA9+CfVEzpXD
	 DFIJeN/Yw0XJBi4FBFUhgURcyaJFqwq/fcR699AxI/d7oUfPCTfYZfqIV9d5NItnEm
	 YU6gwg2zF39sZyij2Yayeg3LpC1ZA+gALwlVtzki6Aa60Uu3Zwullt+u86YhfiHgkN
	 4eR+SSLsJaH2Y2lUg2JFdYm6ex8OEsxvpRw+gqmcI5iKklelU7/jSnFTgEuRW3dgPn
	 jHQseHhgXIolvBhMKKZC21mlojc209fIx9RGjC89oR+7d4hJspCFJDvIwGEtpgJ/yG
	 l5kdvjDy2Yfvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B5ECEE347
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850615359.30814.12630339753528454210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e44e3a272510709ac81089d316096d4f5d4fb7c60f89d4fba29b9406625b04f
Date: Wed, 09 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728506153
