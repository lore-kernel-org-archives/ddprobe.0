Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2642B342C8B
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771595094; cv=none; b=jx9Kd8ND6wkkQQmrVoYz01N0oHqeQwnBnwEj1xbcGYgl1g9gX0WqlrdMarbpoA7jgyrcyIHDfe3w55U+nW8IiQWOVyjIETiYmNdq3uwOcARCq7LvpgyiVGX7EmN+949o/6Cqpc2Q3k2+ikyrgn3LhrHxs7sHYYeBXmt52YyGreE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771595094; c=relaxed/simple;
	bh=FDKeU8kv5xLs0FI8sQua2gOdQkyM0kCkPmyBvgf0NzQ=;
	h=To:Subject:From:Message-Id:Date; b=oP4U7BCjXwaNAARQy4Qt6NYYNbNgAF1Xh1xnuWxa4CPFtKa/dfVnvohoCcRmVrK3swNEzAkULq8zGPQLk9x5Fho4ttsSEMrwmUgVyMcy3Y/iAoQp1TwQssfl60HH0MJohKwRcOjB9fEMgxDaKWCx7coQfg6zIqk3Bd/7iNL+LEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rf6QXGbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rf6QXGbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CF5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771595093;
	bh=FDKeU8kv5xLs0FI8sQua2gOdQkyM0kCkPmyBvgf0NzQ=;
	h=To:Subject:From:Date:From;
	b=Rf6QXGbmkHMcwcyhajIoRZWS3U8xin2AOUm7hcVX2Nn95gH5APs/VWxljuUanjLAF
	 RIhX9RHNj7JvCrQ7b93tMZzwZ7dpC+fOZCNLhOA8oQDFGt3daHR+Lx906ICeE8t5qO
	 4Ec7mvtEMyvhUIJgfUnNqrnRiBcPEMMWkpOAtZNWiKssddqZRjqBrJQGTX1Ix9dAnv
	 BxjRvSfExIcQ2/d1USaqAOFlDJiwWpYxfNiCc2JkQBTaliCUIQIG6Dr33D4pVjRSTG
	 NMLx67p2Fz6Jb2HrQlUwYosCUfDNo4y5qwjBLxkm5NSHS8yPOgesBoLyO5RqAJCpF9
	 mRBpX/j/yvOUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF17C54FD2
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159509363.18069.2123484812369522653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658c684fe7d5e6e3189f15c1e1f098f6e013b16f22016d9cddd1d90613f4717b
Date: Fri, 20 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771595093
