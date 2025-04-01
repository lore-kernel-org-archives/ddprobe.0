Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338B81D79B8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743536394; cv=none; b=ClRd7eg1H37FiGdZWHx1isAt6SiH2p3bJiMIDU40XRNZA+0cfbbckGcV73WCHS/Z9LgvN0PpnKpNPa62IEfW0JCNWR5enzxhUlAfXzmfkkueNwKTc3L0WmNGakqBsa7BLRbHuqiJ1k22AVOTihXH+EalD382i1qaId8EixpcQWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743536394; c=relaxed/simple;
	bh=rDhWT6cQ7ltX+IA9HcLrFFjITldqgD003Xlv4hmRGOA=;
	h=To:Subject:From:Message-Id:Date; b=s8XpJqAhWpnslJZ6c5bvFyZ6dtUoGsju+Y07R0s06UgbZzsl1UlVyqD92E4oYX6sEs2IMaHm+iXkFiS9rcF0T8iAxWZywxdTByWlcd+zz/+f0NVgN84uYKBxpG2/8uy7Z34IpDkfkXw8jKXPIAetYEBjts8a+fDw6Qup5F3fSqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7BJyn7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7BJyn7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF959C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743536393;
	bh=rDhWT6cQ7ltX+IA9HcLrFFjITldqgD003Xlv4hmRGOA=;
	h=To:Subject:From:Date:From;
	b=k7BJyn7t2AAOOM//HvUba2L2SPNmcapn/KIPPlBhqZDZsN1ZI2woLx4uFbZnW6jbi
	 bdTM1NhM8yPeDXfdamtM5rpdqU2poXiYwW/kNHBGm9HLJfYP2Sl0rQDB2xavMk+KPF
	 7IdRvjo5hbWERSpu/p53dB2rsJPzhkY4yCgXsR1kqx169qQLewKfIAImkgWVoDhGLS
	 cAKn+2YRRA8IvtAE24MELGLnC8LXV+kfg/FXDKys5Lp6NTdGozUH8lFD9cQ118iw5q
	 KA/xudcYoX5JpZGhKySVvjICf3tXKhLLCsXgJzSEykeWZv3V/vWQJG29MeM/sJqXto
	 +yi2qaPtlxK3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9508DC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353639359.13144.16714250451259577899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27897cb370ce7ae5f59d7c167a394ec604d01e72934f2f39b92c02ee17f0e2ab
Date: Tue, 01 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743536393
