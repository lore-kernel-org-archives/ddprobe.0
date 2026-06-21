Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6A22FD1C2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782064594; cv=none; b=hP0+x3zDW8qKrN1JO4r0G9jg2Keb13I4PITCJHU2QE9ByKK7ZhW/0OqO9blWGtrhV6v4gBhRLfbIdIPnXYwnyX36OaGVAmWDD0H9rUIRo5MbAs8kQtKctchMHYmez1Pv49htNKxH8H9WZOkmAOEf3fwnELrvBDPlUD9bY3+IzaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782064594; c=relaxed/simple;
	bh=o6TMLHmg8Wx+CGGY+FQtnR7oo7T/+ILqaert7nmkNbc=;
	h=To:Subject:From:Message-Id:Date; b=RfcsCbznH0/yCjTZAq3jbP25QhKK9k6UoMQ8cIoBGosqzO8YMpSYPasFFG8PUMqOlfRIrGCjjV1C//U0wcTmWb5e7vClrubz2Yiu4RUyrNgpTS9whNVm2bJ2tI4ba3HdSWjDhx29W8Y13auy0hpuAbKOWWMvz5dUyAAluIlPyAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5noOTiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5noOTiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EF3C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782064593;
	bh=o6TMLHmg8Wx+CGGY+FQtnR7oo7T/+ILqaert7nmkNbc=;
	h=To:Subject:From:Date:From;
	b=Y5noOTiwXbUOVnY4m0rlLvgp/WPjdZObfTxppJfjV6Qi6B3IvdSs9FyRVNt6Z0VSV
	 P839ra7zkp5jMeh12ZmfGW32A1APH4ZMW18AnCmouWdSpBlv+7lD9Ud0CXhc06E7WM
	 iiFA/Y1lpEjBoEI3DrLGgnPBpl9qnmZ+dUirx99EAVWK0d17mAS5UkkBJFLkEYBij6
	 E+FuTT4xjiYF7m9pjEtV9IAdOsYUaeFGZqADJzRK/H94kp7NuSRiF+K1adBof50rUK
	 VvN3/C+cEPl2uExuRI2xFhVU71wJALjxLgNXyvKvr94nrmSDzwep3sRnGCOYTDG801
	 UFU2PEj5bRtcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D81CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206459368.23476.15219311924767921309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c07851f1f08e60edcec1115c2198d50b18927bbf91948119cc0870e25c518a
Date: Sun, 21 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782064593
