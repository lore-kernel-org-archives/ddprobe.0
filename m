Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF5BEA4
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714871543; cv=none; b=pPa6Z3wk5X1KlLm+L01/io+aJhkl7ZMqXWSyR+E/QzhCAIDmP/l+g/BD39cyL9keCWFPgYLsgoTjsbGcZp0xIlIS+5TFQsjMf1+lmlQdq7etPGbdh10qgUbJ3NDdg4mEAgzMmCBnkAoZpLzPP+p1+hCPnJ/Pl5cRm98J0A4lyNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714871543; c=relaxed/simple;
	bh=ZL5L93HQdqX9vRfQs0lr4qCORfZpOGzqYO5yUdpWZTo=;
	h=To:Subject:From:Message-Id:Date; b=KlhA4hZeNKgs5vXladzPEUleOKSfdhSSpKD1+Tqd+X5ypXftRN6qYh5XXjeprbUgPtlN6FieP5PdNHm9g1f82teQ95+GqFS9Y8UqC7BxVbCS3/Yp4MQZTyGM9fuYWBHMcwNbp12QuJ8w4VUkuwl+NoYZc72yvVhRdpG5MhwARno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etE49mkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etE49mkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C6CC072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714871542;
	bh=ZL5L93HQdqX9vRfQs0lr4qCORfZpOGzqYO5yUdpWZTo=;
	h=To:Subject:From:Date:From;
	b=etE49mkPYZPhTzJRKtptq+l7p0tyJquMhcq6Tkc2tEnjYnFip2BeeeSK6DzGhlXMF
	 HZLE/7YvXDRA5qPC8dspHMkWh5Xy0RGWhy5SKmjCTOOOf73kQ5W/92Pjmq4Xrf3lBk
	 7vAOdcD98B1jLgfrhEBU3UkgHHUNYka9mS8Hw5KqyC1087M7xHJGQjazX9lOuL7bwa
	 +PSljKwFJTI+3ynw6MdbuuBeaT25dyWh7niac72kRDpGawUtkEj6dLE++tABNyvQT9
	 N8W8V52iEuaCuGQct1IOt+iWF28qT1zK5aiUrArP1Jeno+uTbiQwtQQAXzRwjkDxYg
	 tZadmzuZyUeLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A45C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171487154276.31558.6655102792262761130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66acf0f06d234bea910146622268c99518ef705ccfc3c196e5023e0f789284b9
Date: Sun, 05 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714871542
