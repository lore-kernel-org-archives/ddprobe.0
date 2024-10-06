Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4981379C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728177354; cv=none; b=STPZx/VSF5dibOdenYpxb6ylLKVzurSz6Z3vjZVTXMsZCb3tZZvsYt+3WFeoOL2dVbM3r+jr+lSgX0gAdAM89FH4mXTWOBatCJvtSkppbuxy+NgORrXcBL0qgYvcjL4OyG5wbDVKyiDw6bPqfd0tyovWM0rx62GczPiPfJyIXnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728177354; c=relaxed/simple;
	bh=vopsAuweVokGnvMCqq7+Czja23l0j4tEisrq6QAQl8g=;
	h=To:Subject:From:Message-Id:Date; b=SIMulLaW3BCK1h5lSJ08bVhk3N5W7F7S7byCxB9MKwY1y4T6djoGCU08BmfQLjkwrvlBHfsgi7/EvjwvraAYjbRXMSoxmwm182d2oDw4AFPvgZG+Psiko8KD/Z3BvblYZbJBmfoTTBRR0s85D823Qv8PC450GSuYGOP2Ut6F74s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJKGAosY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJKGAosY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B27C4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728177353;
	bh=vopsAuweVokGnvMCqq7+Czja23l0j4tEisrq6QAQl8g=;
	h=To:Subject:From:Date:From;
	b=DJKGAosYj3sk9KDyQEMhlJAJRki/xKG8Gp1qki37iW3L8ee+g8wSfi5J9Bss191b7
	 W8TRAoY3kiZg/GC/9cxyyrt7/4WIczkT5fFPxmIkEQZZGdX1c10HVd28kcexDCsbh4
	 oxzIonhcHUbiS2hKcZXM/WajXMr+d3ocspic2abyKGQQjn5A3XwACiqpwt0emrGcgo
	 OZQyGKCjUrVL/povEbLU1bD9D5Nc6xRoqTOodkAEDi0f/taBLrhrcHfDd4vSfz8FNc
	 wbDIVcFelAFKIhSXxnwlrfZNKx46Pl/WU+povyj/9hPXLul73SPCecP5vINGb5IWod
	 kBE347j4Vm6og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC845CFB422
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172817735370.2847.17718955152771943313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae36e627da534fd212463ffcd110add0e43ae92fc94e72b8d1bcb05b9dee0e1a
Date: Sun, 06 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728177353
