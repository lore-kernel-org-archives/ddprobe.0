Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1567829BD95
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772049894; cv=none; b=G7DGaJJm7i9nQqKSs0eTaxTwC3ppOndGnSzIy0/0wymZ/ltqaoa47q6vnTcMedayid5j4ibCpgvsAZHhj6rI0twLfWISKLCO1J3rBeJ4kKQ9hVF77apUroAnC+3smgGKJjibI7MVo/G1M+2vYJWLjCdvGzukwkU7SUW7KzpSoRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772049894; c=relaxed/simple;
	bh=BsQe+a8DQ4ZhbP0588Zp1803wZ2FmyuebrSuGsCviOw=;
	h=To:Subject:From:Message-Id:Date; b=YXkYCGCdAoX7So3DktUf1OoJe3p65njnSZywoDf3pSgdnQLp1TTDneGAo6KCCD/U5UU529fdD/qgDTiXutbA8MLV/XjZ5dc1lHRfT31JiM6ZiAKMzTeEBlNecQivr20yqL5JXSjrVCJr/u2K5Omm/SFAl61jACSliQXBRbz0xtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkURk+/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkURk+/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97E0C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772049893;
	bh=BsQe+a8DQ4ZhbP0588Zp1803wZ2FmyuebrSuGsCviOw=;
	h=To:Subject:From:Date:From;
	b=pkURk+/7mPa4F1NEQoCbhKrd+pmBxGsrI5Gvv2IG6qq2gMCM1Y09XBiqHygNZKD7M
	 6RmPcl7NLRLwyxgbVaDhGGvSGRp2njzI+ROAIRUvQqghy8VpN+G+6g0GypQN0Bo9YT
	 o9OOtnb2niWSjpQ70ls6gK/xfCE/3K9rrWp0gE0W4wfL+YAdyUhHRq85T8IgIJ8lbq
	 Sgfs6oMysa2of7gCof0sYhyEmvCyauxb99xQnazGVTA/ZcAuVCS0MonX/MZS32ySCE
	 ZwKhbypaErttmeLbt5eWaYr6K0mFfrmxTe3CAsNLmdyYgqDl0RVZ+k7Wrc3Qb3NmZW
	 ftBl5jHJ7oBqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987EDFD45E8
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204989361.27410.3799276233409005724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642c1a35d49ddf939f7e036856fcb4c52edd6861bcecd1cdcd6e2c5a9e0d99d1
Date: Wed, 25 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772049893
