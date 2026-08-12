Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F49A37F31D
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786507834; cv=none; b=foF3ec8pXLHirrJw1QT6g2u2DScJi2WYfzBAYiGr9jNpTtSBwKrKM2Gd1Ey3WK6vSqJ7RYRRluA5OSjrody7LxpCEo792gXM7wpPet4atbEAFC0HGW0PGNjpDmkC4RXfCTtvvLlOIYd0zHHKjIsX6k7zVAP7gzbFjTOBeQVHELY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786507834; c=relaxed/simple;
	bh=agkfXYuWg1fnOn39YsGADTe+SAe82glD05Sy3LqEVsg=;
	h=To:Subject:From:Message-Id:Date; b=HzzM715/fXLZj3FBsj7jB5KULzRS18Tu0ScZESDoqn+hWa6qVVz4YgQwX3So+fq2KzJ92Qt+kecTF19m8Kzyx8W/42lHfH6BmPVVFLNoR5rzjOoiQ8UIHsGVMZIaqBepLB1Atm574VT/1C0d4UI2ukCF4CMf7hcMVW/5GO2ve2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1mSTbga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1mSTbga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2343C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786507833;
	bh=agkfXYuWg1fnOn39YsGADTe+SAe82glD05Sy3LqEVsg=;
	h=To:Subject:From:Date:From;
	b=U1mSTbgaZUaZbqjFLh7bejSJkcOZO6qiwngPgz+BzJk2cedV2reQhvXd37qTvLd1z
	 iOS7NFYeCoE67sV6PM0CnvWhZDZlFrYtrGm9bKRJ7xh9zx0nD7OenOuG87TFAS6K/a
	 ujd7rZvI1W2qai7BHZGHXbT4VfLtjdcdPTKEo0YsnR+7+gfqkkcyHYFCKj1ldrALqS
	 LZjwGrpQbbYx/WmVB3bfBcxk9i2nt/UnhZgIvx4WqIjkiUQyv6m5jUaYYoR5t869DU
	 YMFX1kQz3sIFbCTkZ5sIhMigKrQjABJINDAW0MNyAQJWh/DEjkUJNqll50fK7YJXI6
	 9Mq2lS+ag8iig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF2C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650783368.4390.2161712715171799817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb206087d79ba0dc0108dc56a495ba8aebea2afe3878318220b3e8662dc66b3
Date: Wed, 12 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786507833
