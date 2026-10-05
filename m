Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B88186341
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791161434; cv=none; b=MDaslpkJnNAwdOImh0rv8bgXseAlm7j/1KqM+JlA0C29lsvf7o3e+iU1Z0zVesy4fJ2pavvQUtz1fqWM0tKQyQbZM50r+Dto3dyx089nlF4+RfdiY6qMe6ndOtTTuGiFknyLPk8JtNZN1QJ7PWH0wgruKVQ7BDo8LJpun2OYqC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791161434; c=relaxed/simple;
	bh=BlKDuUzPOQuvDUPJJOpQM4vBQZPXoZRv3IMDyK9TdZA=;
	h=To:Subject:From:Message-Id:Date; b=loTpqSV6edekoreIq7kjMxrWVw/CaptFB4ovwlL8BL3tAkqDr9xYXUAJn/7iPNPtnassBiBSzmRAbFxpjCjfcmhMYoVnX0MsPZkqE2UAgRuKina0fgIStdusdVPpDg4AsBLiqSK1Dh6CGSnIlN7JYlVrk0h3EfDrFRmUhK6DTPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGmn+qG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGmn+qG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24F9C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791161433;
	bh=BlKDuUzPOQuvDUPJJOpQM4vBQZPXoZRv3IMDyK9TdZA=;
	h=To:Subject:From:Date:From;
	b=jGmn+qG346r/oN219IZ5y3IL7xFEsG+izJ5+p1VVa/0bCzx/FtO3wEafXsdFdCo/4
	 ETzyyqKvbiMIBGkfCaftdbhvYKI8aQ8/zu5cJ0zJFtTYpeEK5937gTujCUEh311DrZ
	 CHck9lxhQ4BwA5hu1Nfkbkp9N8PNuLUTkMj51pejSaZ/XmxgCPuWoKqwzqXEAwn6Wt
	 9Ck7wE3t29H+0l85em3QR/RrCtLo/NDIX5Gm+zCEMoTJ6HqfMKVTI+tTe9vaLc1Y6m
	 WyPLdb+ST2EhVvNvxxcT0nHqU33lX0/iP708V4VRNWTXbVZexX8E/WqsLj1g5uV5z0
	 DDPuXJ2D+20zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9AECA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116143370.28128.12307226647701795803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b142cd6b138902a639cc07351f39aa8ceb09186ea174d566d0f6c687869b0b
Date: Mon, 05 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791161433
