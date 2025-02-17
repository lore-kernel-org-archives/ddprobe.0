Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4618C130A7D
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739765335; cv=none; b=EiPRwcnxhm5E0a2Sn24UuzDuUjiK5jo5apQeD5S+xQAUTwSaW+w7TH4zs9lQgFKfYBTJpnGaKLjFaGOY3DHWUfrHkDD9/Akgmk/4vPN3I2SwzAyaGkfo4ieJrgyrQDy4amGpWdjs1bg8MD1o1z4xBjk7pNaBY12QoBQQSpVwJNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739765335; c=relaxed/simple;
	bh=ugkIe7xMScyjVMMyZ2Z48hl78PC0LpdvYSlS6lN54TU=;
	h=To:Subject:From:Message-Id:Date; b=VHa0Olm5oSK/ytLOX45QMRh8i9pe8VCEx6IicRZjQiCM+0HuyvUu1RRHg18wHS5OZmFtsnEfHkhN2fGlr81qW/SrUZagBWgLVHtyj7Zq9iTjjGz4cd8S67VB6N8MW9bJNqk1os76gvYU+devSMvyDrPSKhymZITWh+P3Axz1JSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjYDnM3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjYDnM3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6E5C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739765333;
	bh=ugkIe7xMScyjVMMyZ2Z48hl78PC0LpdvYSlS6lN54TU=;
	h=To:Subject:From:Date:From;
	b=rjYDnM3zzvj6b+tWDoG47M4AtGC3pHWKivVR7BKi/8it5xu7ZNE5WxLLa8WCGl7If
	 7q0bhY4erUL6YbeQHXFpkYSSp4Es31tO5PAItUluT1FAic65HkHNHnINkbq28EbgGx
	 WFrBtJz0EJmhGC/+wUL7ti6nROnqb0xrcO7pSLUgRJsau78iQAqs5a2IMrVf+scUVV
	 O6Tg3x7Bq0MP+/9oArHtVawp7ko3Ogrok8/D+cAU+ehjQTC6z646z8nKGjuzfhGPRx
	 AiV+SSewJ370ZCn6bahbn5wYZcKR4+JppMuem58ohiroVbPVdc/fJjH2X9OjBh528M
	 Yi4+PVc3yozrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5FC021A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173976533357.29277.8455184825399521220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568e741079984abd7e6bb15a2c856a43a84d806fc43796dfe7df6a0f8e0f28e1
Date: Mon, 17 Feb 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739765333
