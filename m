Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C12719CC3C
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745503794; cv=none; b=oe4JMMoMCWPSJrTNzPrKzbowSbDXkv4yvfvdB28Y6bi4kHZ4gpc3sImzG5I+IEWhKiNOgh3KWuigUlecQE+hPRm6gaXeaqr6aB4fzKT4hXk7AAacQAW+EHDGbPx+L3Xqc4pj8ZsPeNeWlZ3M7aRO/P+wNgACOt9GVZ6aAcHsCE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745503794; c=relaxed/simple;
	bh=z+5lbX5eR54wqaSnUyaGUdgPF4+gfOsdj8pcWrhV+qw=;
	h=To:Subject:From:Message-Id:Date; b=Onc/YiXp3y7mPB4IRo6OdrPRFqqj4riaxlnAovaNqirmpBOUyYb/6CS/7WeU4Ap331zIWg7JFbTofUT4gohPkkmPXe3Br1ZzXjOnuzqIe3UptvOoLloYR6hEOceAUl21wYw0OMEp31E/JQFirwC0qsI3wddtoob0k91PYawjGG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeFFVhqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeFFVhqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F31EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745503793;
	bh=z+5lbX5eR54wqaSnUyaGUdgPF4+gfOsdj8pcWrhV+qw=;
	h=To:Subject:From:Date:From;
	b=VeFFVhqCSEYQ35ZDLWczvCLAxs3DpvfxeBUFfuawSka5ic5Pt5Dj5+xSyHJuj7MBQ
	 4LHL8XMYWBttBiosFGLQD2vmu7oOGm0gA2U/o1le+tMPd/LDrwtIg2C1OoNVHekyop
	 NzD9SynHfxBp2z0FSq8g1AoQrGzsPF5XkO9Py36oGcCublyC1pFUzGAL1xcL6wxmWx
	 YF2Jz1Vc4/D3Uirf00PkW0mFjfi0uInE78ufWre5Lvuim8ZB8VJ/Ey+zI/LINGcfZC
	 l6LDT7i5d4L9gYvaUJRhKLXKVkc2BNqpdYZeFkIy9TIwKnGnjUr+0fTS7mdhZR7W+F
	 Q1QmFM+b7qa8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD2C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550379358.14148.4364321794077244206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e43bc7f9d979c95b497eca9fa6ceee4a5540325d07ebc684cf77d2c19f055da
Date: Thu, 24 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745503793
