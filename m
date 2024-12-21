Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527652AEE4
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734798954; cv=none; b=GUKpFD26wsYtTkYcHTAuYon3NC7p73YH9QdE1MzI0thXy40IEYOkFrUouqPjHFGeawR6Qc9wb0j0uAg19uu8zN3XulqbgW08cXqbyeKohlRCcxNe6Xlm0i0WQ/CzisAbihB1pzinEJvW6ViCmffWqyifGjnm0YfhTeUOVGe/uQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734798954; c=relaxed/simple;
	bh=/D1BiB/s6lkFbApbPAE040c8Vr/8Eve0WM3JCwIRVPk=;
	h=To:Subject:From:Message-Id:Date; b=dre2YaZRhFPTbZfnRHke9O+mfbBqyM06Bd30AmIHOUy6CXA1VwuoycRkMUSybamOQ6pxbtl2qT36JEldDQ1EGV60if4o0bwgj1ixXo6dzq7mu++JkJPRBQ1FFqAHlPiNr4DFu9NgQLIba6aQnqizH1CMjcXDpdSK11eLcv0uR1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NH0uwhsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NH0uwhsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFBA5C4CED7
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734798953;
	bh=/D1BiB/s6lkFbApbPAE040c8Vr/8Eve0WM3JCwIRVPk=;
	h=To:Subject:From:Date:From;
	b=NH0uwhsh0cHHk95kMm/N8R2BdorwT/uT3UDg9TYP05G71FoURu2g4xlZ/KiyNX7CK
	 RDwXvxn36DM8uKyOwUhOe6kTGskvnU4BnWYzTRAp7yjeHtMbiQRrW85XZtNxn97ggp
	 cPbpVEy4UBIuuKuBvzY56SFXd4GyQk/T+37TV3GRv4ZBhKzgumjlxPsbUf1C0hkprx
	 n5MY83qps9KRfJ1WJ5PbLdkOThBbC1ODM7TABElErcjQbJjfZhs3ogfaCv9b+E8hWd
	 Gnwn4GujKNTAYAhmsEtL4paqCNxs05ePifseQ+MRRMoTV4HNtAiYwnzl2YNy0w0rz8
	 07eyLbcwlAJZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F62FE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173479895361.3135.12350755837241504032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3132cd30fb81d90711f5bd6d123fff98d628fbed9676aa69dd8e8c90778e4ec
Date: Sat, 21 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734798953
