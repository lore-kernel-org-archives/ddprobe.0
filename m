Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1921C17C69
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719079943; cv=none; b=ZOvP1MNsQ+9J4tss5TcRRDPpMPtQiMBUfuMNrkFLc06+3jsivnOqK88kIP0kmmCIesSveaF9MnN9q6pdxETUyRncwjPPDH4Lm3CQwyxmFbfPxl6VQkcrocxkflmsU+ualvp60zyaMyY1kxxUsAAQdEdH46sXDXA5jmR9qMCooJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719079943; c=relaxed/simple;
	bh=QLcUn00G9y1uN2slK+R+m5t0QUAZa6ac3Onvd0aJg2Y=;
	h=To:Subject:From:Message-Id:Date; b=HcniU/blEB1GG/5MMJPkmW4sddBvVx4UKLFYydQ3XT4r6Cp/QwYMvJrukyjopFdahrzF1JzO0+v+Zm8kDO6w0KQi9a8dJHG8PDu8RfUjl1HyZzWAAekjohvotfNMVCpE4eJZ4ar11+SxzG4OBko0jzpAZtQCLsEcZKs/i0MIOQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av0tRYOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av0tRYOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA660C4AF07
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719079942;
	bh=QLcUn00G9y1uN2slK+R+m5t0QUAZa6ac3Onvd0aJg2Y=;
	h=To:Subject:From:Date:From;
	b=av0tRYOG0QkmZEgbRa5ABUbuXi3alF7YC2iJYrphzfbqyDf1vl5m0BRWdZMGxwi0x
	 t+Pl7z1xl+IpbudXlSagqakaEgFJ3/lqqQ5D9PuP7GiRFGy7CiXHY5IN4Qn6Lk8LKt
	 CF/4hAz8YsrR2pw/fmJBYkRoTWy55KfEvE4CSN0z6TXLEk+jbucZh5lF0YEJyOQuGg
	 iRY6FJ+q2oH3soWYqnYoYRIjRqtoCM177tYr3YsQ0dVEKSLvRVgAx3J71gDAUmuQWl
	 ALOjVMwdWFPXTYYBr/Sp45Y/rRqksuo6apAgKuQvAKWaqaeHp80y+m45W0WIluYbHn
	 4WlUHn5GqTsMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C66B6C2BB85
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907994278.30984.5036064213788762157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0762c57327a46570c909fb11a83d6069d463a1e93269be3f0c0899478b40bbe7
Date: Sat, 22 Jun 2024 18:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719079942
