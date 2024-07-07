Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1C7D53B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720336583; cv=none; b=KmuAg1Ya7TSMtHYu07XdJreOTaBkATd13AhjvsOnNSXIt/VBY/JLAMGuoi/Tq4ICDrraSZd/tAHxi1P3+dRrIw1hFkue675EltNtCzTB38A2c7OufBv/Hoqaua8iKvkSn7tr+/dKg54Kt4CNUAi9A035NxYTAPSP3xkX2k1dSzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720336583; c=relaxed/simple;
	bh=ukwc5Yu6cNjg4WxeEWSCJbXhfM2t/xHL2JpL8dhBuqM=;
	h=To:Subject:From:Message-Id:Date; b=Pq8c2FFx/ZyZ7pcA6P0t6eakYY+y4aDctf60HoYjb/qocphi4a53CFpURVHnIWeqbh5CRYMgyxJ+yfVgxfEOX+gJF1qOcOxP2i9YlxmJ1uPU87e2hzsVojZvrupM+ydgEcA/EvtwZQ74tGe+XMk50DgoSOtqOzt6Z++cxuvkWJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5GDsxre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5GDsxre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBEDC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720336582;
	bh=ukwc5Yu6cNjg4WxeEWSCJbXhfM2t/xHL2JpL8dhBuqM=;
	h=To:Subject:From:Date:From;
	b=L5GDsxre5Jocp+hy0ofgc8VOOhQa9N6S/keVgQhMhun7TI7ssmjOpALvUpWBZG5ff
	 fXTlRAKmbHSfPDqmnjD6yukmW9Zf9FcrbbL9J1yDxjuU/+iB4BCp0mMZPOGaeZSpA9
	 zhOyqcl18m3qT7PCaAT1+X1v3obIvfv0VYwgEXXNbNkdTmyvEvulX3pxUPIj3zKM77
	 +C4fyydw/76pOqqOPVw3OQsYOGoRJhbVIu1wxWlFm2GievrYy+U7H1hzlCiMmK7u/2
	 sElFn1XVSoGdztdPPm5OnkQw+GIhmh/CfL+3v4pfsD/p1ibC2qLg2j0/w5OOaAe78M
	 0MIdVVWZ2MC8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0425C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033658276.3339.15058350920233026390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb34ff9f33c5815b92c5de5112700b7e5b6aa1be21fd25e2cd2d7e58ee6dd89
Date: Sun, 07 Jul 2024 07:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720336582
