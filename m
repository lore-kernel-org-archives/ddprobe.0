Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE7C1898FB
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735680354; cv=none; b=kOyUYDBvbjafH/Jspgj6GWjDIV11CXzJxMVXQSzEx/ec90nQ9fkbj3kzKEMaApOmiUS5DpDR3jY23bJK2JfzPpmaczW5ULzGNw9oRfKSKrLzQXeGl3IOj4x6vmFrFLqr1YZabDr19KCMcN7HB0GmU4kkHHkJ/M//sDjdVoddHV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735680354; c=relaxed/simple;
	bh=afiyKcVEG7FpsfwPr2LX+XBTg8sdj2qU8PtagOwFkxM=;
	h=To:Subject:From:Message-Id:Date; b=KagwSxOB3tCBO8eo7c6isAbZazKEX3aHwL1Xzdxsn/0rY7q1hIgbcPHLr9IHQrHh1SPeVKPjYP5dIxSuSm6FY0ey49qi6LHpi4tDLtXqug2UrWJ2RL8cjsWjcOUEdK0cOXWFwcD2coK9GCldDgtklD3DiPoNE76bGZMcGrgWonI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzUuFIUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzUuFIUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10B4C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735680353;
	bh=afiyKcVEG7FpsfwPr2LX+XBTg8sdj2qU8PtagOwFkxM=;
	h=To:Subject:From:Date:From;
	b=dzUuFIUf87CbUlU0rYt9cj+4X4nrnYeroJyg/X3j5NMEPCKfacND3DiwaEzpVWeOz
	 cOI5QsPntw9TV8KoKUibYQOhfvscRRdaTHUy7cvHXQ1HwlDWReIHG4LlldsOSTtMYb
	 eMmaMgD/G3/PmIl0X+1O9W/K8jnFKhrYr9dcmWD4z1k2cnXSVkt1uCb5u0dwYHpf12
	 P4K9Um6Kq2F2JuRQ9Jlg6cgYnjx5jIUYeilwXDgJPvvdNUxAkUl6c4+Xax+aHMsmn4
	 LKMqdXUCu1eIvOLfjf5HNje7iwlMYqUSaCAioWMbg+Fex3A4aBJO6pjsDMIzROcy/s
	 Ev5Nb2DeRtKOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99994E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173568035358.24163.1118242423804028777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c567030fb6126dfa465a260deafba294596f94b5e3a9b1f6375802a607f440b4
Date: Tue, 31 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735680353
