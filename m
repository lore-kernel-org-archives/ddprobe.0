Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31629339A0
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733648154; cv=none; b=gtDZwq2OoOQZ8NPKD2dVWpGuxQYoFk/bITrQu0MbAUhp2A2vW5b6CYSZeguh9m897+gGonZ+0XzAMcPYIUnnLeuMJK4bvx7IdNVUIXaNmtS+sSTUV9LC7gd9AJcxO8m6CDD0LL8ptjRyTYsc49iluFkcFCKf/NTK+UnL3iYan2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733648154; c=relaxed/simple;
	bh=dAbwspApmxkNX4mS497OL89/vcpnqSXPWtAkWESHknE=;
	h=To:Subject:From:Message-Id:Date; b=Mi4SCX1JkGKLc+F3pF+cBk1s2Z2Fcxn2P23DoWkD8bWK2LrTFTVzAgvAwdzgPzE2EEVzZYC1pPtiHY/wVwAE1I3rjOxGtdcqRG0EAJeVgjomqIpOmxF5lvXPT3f1DVOixSett9PBM0kwAP+K007XDKqFXyYWQzyQI1s0g53ZgrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANHTPOVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANHTPOVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EB6C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733648153;
	bh=dAbwspApmxkNX4mS497OL89/vcpnqSXPWtAkWESHknE=;
	h=To:Subject:From:Date:From;
	b=ANHTPOVMVYqJDas2eUf6UVs838/91l0TXkHL2x54OcXU1XN7XmQvk8m5/9nJB1XQf
	 nWDiEp3+CQk/lwqLjvGpTm4Hqrfv0HEpJ3QrRusCapSFH1C3xbfZRtYj9qWBTUL6gk
	 ZJ3SGj/jqx39xkE7IgRwXN7KpigyGOXHGpgnHgSWkOYPKCz82LnUtVUgNQShcBemwL
	 wrkeaAZAudNW70otrBBtMlw9m7OnvIUShA1PqUrv2F/NOZ/TIafuj3wwD8VCJD/7wc
	 hC3/b/KPdb2oXR13RfzsRrafdyMvvtTPFXOW4WWXVUFNgu1SX0Fm/tr3FwN0b15kzo
	 wPzEQ/EcGF8cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F396E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173364815364.12813.18006323859071886421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6079eeb4eb3d0c857a812b34a675d90bd5038a8e74f9aa5db084a0cc478b4cd3
Date: Sun, 08 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733648153
