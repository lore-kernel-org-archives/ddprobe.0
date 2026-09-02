Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51961399372
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788382835; cv=none; b=D+/xA1Z5xDce4Kb2it0ZG1gILvd+SNyrS8eRHQTpTeeLDnv8FEC7GcmwSWm00+EU2uxeHe37XKl8qdzdFP71C9ndkRzh1R/vZJamFZ8NokzXBZ69mhgNEYPGPj/Eh6XhdhI1BIDKgwsB4RAfoJbp39gTs7ZEsOkgjf3qET4OICk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788382835; c=relaxed/simple;
	bh=jqP2hhoH/QA40p6hgydBSXEoTaeV9IMepQtg50Owlzg=;
	h=To:Subject:From:Message-Id:Date; b=UdSRHUb8aJRtypfnbBvqtOlB5i4FQQtvj6zkDecsbh2jtZEst/LvAIJBDo21W7c+bd4qXlSrp3db3e9CGNAtfutz7f4UlogOLrIa9ky0WlYIH/21ri9JsS2uhxO4v467bWOQ4MTQW+HS6g+YHEWe2fzyoEO9atINlXlkctd/zjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcZxuc/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcZxuc/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD253C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788382833;
	bh=jqP2hhoH/QA40p6hgydBSXEoTaeV9IMepQtg50Owlzg=;
	h=To:Subject:From:Date:From;
	b=IcZxuc/1DMN9W/OUJ3t2P4/aHqpXrUCiaLG/oZzgbVHGbKbkaVDalvJgd3bXrBp/Z
	 MNHkoBld0jm9x4ICbmE7DMc8pMQ2kTqeELysa/RJ9/BA0u6v3JePXMGUYwfRe7jrdo
	 K61vtddL8Zev67LzamADOXSJB1MbZrvuqld9kSKTLgg0e5tFogOmforOj8beL+Ag4d
	 Myab2HP8HPRNVaN+IuVcu+R2zsoG4vti6aVGLEeuT4toeBP5lX4ukZwKcbe7zQo0iK
	 Ulz96+SmzIuOLzNp1QuArGczt0UmXDjb4YxNLLMXYSZZtLwMnDAybJtdaHZtamLVAi
	 mHF00ZWdjcztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA630C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838283368.9984.8783284080437208690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8425ddf460be38ab26c1c8beb012adc452af5aa46af1b33c2d4c7c19b0cfe5d9
Date: Wed, 02 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788382833
