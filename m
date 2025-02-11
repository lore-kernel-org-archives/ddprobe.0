Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3113879C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 00:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739234154; cv=none; b=X0cLI/Up9Kc718iLHR8LZ/67cpoU48dtvwPoDPNATcAmpYF2DCXv1Wed0lm/cq/+e4KiyK6D5xUGqa80hJxOlrC5o4YRDTWjWvNPQ5P1rL65cPSrTjk6FbZqvMz0oNgZbpDm+r+geeQyuLRTRF8pEEKzazOJyzIVufuW50l0MGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739234154; c=relaxed/simple;
	bh=4Z3KmWrime4T+SgM58D27tlH1Yj25R1YWx81TBqbLpo=;
	h=To:Subject:From:Message-Id:Date; b=cClXHl5M9ZOxkGjM2PRhgpXntpGEEXc605wH82d5Hes6mTXfgE7tqAfpjeqBtKA+G3n6uBp7zfljM7neNZa/b6FGoG1XTHAna+BY+36CwfEuxH3PoFlKrtPApsQOMo7IBS2HEQcPg3sLgAMx25Apu6B9hhy0oHWyYKfXdiam9GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6udjzMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6udjzMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05A01C4CED1
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 00:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739234154;
	bh=4Z3KmWrime4T+SgM58D27tlH1Yj25R1YWx81TBqbLpo=;
	h=To:Subject:From:Date:From;
	b=R6udjzMiWMg9pLeSF7trvKLqUONiOnkPO6dsUycDeUe8acFgyNle4T4diGnnCpGVX
	 3V/mHVUhgm0XBCkcG4gVvqLeD07ze2efRg25SjeLqB1G7+hjHxgJpdgF6G8DfZn0vO
	 OLSyb9hWSBsZPSdfMVgfFJJX3qI4CFxnOFK25Yz8YOfF8rUDCMxKdiefBl5ow7UsM0
	 Ldub0l/gawTXi7o2dfvEgxqMebFHNYXhcumzWJdB8Rb0XYDaHg/NTfLowJ7akmdOaL
	 WhfaPPwlKEiNT3c25eo9iLW/NHJDsotL04zhlKq1+dyuKwMmHTbUeciX2i6Z6uf3PT
	 rdLn1OfA9ZeTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AB3C02198
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173923415371.5077.7164067710187862527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84484390762bb470f8952168c73de3802dee1f535f780631691c56c208f75b46
Date: Tue, 11 Feb 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739234153
