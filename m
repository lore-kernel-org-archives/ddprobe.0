Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D085E210FB
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745984393; cv=none; b=gxdUxG87PNk2A5js8XaUeM6OS49Xg66IGRrQkXEhAl20z8HSyVL4qlXNfNrMAoSuY6YPHb9XY0rdcAGWH4gDcJUZ90IswucWXaCf2k3FPnyaVz7HllEDKXoRUFS2WmjnFW305H0iPhzsY6NpDAZUm48eUQbK/PTwLT40YKkxBXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745984393; c=relaxed/simple;
	bh=liQBy0bZWJFyZ/zWPxoNeXTSInDXfQe9II/z+mlPbrA=;
	h=To:Subject:From:Message-Id:Date; b=tSHUdEh9pekzef415Op55xELYarjuucklZafEsENxKjlxx2Jb2fG4a2l6387x86NsSOljiXdw1OVpUYaUQ5P6BlawOwWGOBs7ZK+qeC8ZrPxNKYE5dOojQG14ojZECJ614SF+F2hyFwgXDawJfL9ooaM1298e/Y8doqPGRnXuJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIIK0scW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIIK0scW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE2C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745984393;
	bh=liQBy0bZWJFyZ/zWPxoNeXTSInDXfQe9II/z+mlPbrA=;
	h=To:Subject:From:Date:From;
	b=hIIK0scWxw/JWz2vUjbjzraZSerUF28NzArs4xBSW062QIWpEkc0H8qYnWRwU6Etj
	 IE3wyigkfnMxNVBYtU47G9OTyIU7jK3XpTL9rU2YckCRlTdhcIJK1WDbMcVBzxDXOj
	 CuSvZ5izOAlUJHF4RPpVa9ZPRon+NkQwgeHUgKoonJjBCbmMB+ti7xBwyhzzzqIERa
	 aGrGykfSteFri+yt+NYCiC3QxG7HMlDgb3clhSo8uvP9i6R0AD5cR5RMhON/UCWIvB
	 TLf8pEfGsdWzaJlu9b56pAzzzZL1wa6MpxCvuij0ZbUpX/rB9vPScytpIu1AI6Fagt
	 Hu0UOAsGTs2mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE2C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598439359.6744.12352879721828978887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e7837058430fb74092adbf191014308a936bf24dfb8324c7fe51718a11b1bc8
Date: Wed, 30 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745984393
