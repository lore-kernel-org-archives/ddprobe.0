Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DC82D3A74
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758131395; cv=none; b=FirMJMXZ/i+5ud9Mb5NFyqoOk/1OfyRYzlf6+5I/y/wCSUz7ObzpvaV8xBks0dGTU5Kh78hy/LFSPuWQGH8DldyEUSpUUYmnRdeuHDD4dtwpRgUyCNmesyMDaMKlN4UyI3YUPxR2Qf1TEgRev+9+8dYUAY7Hahquq5ARdII+xFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758131395; c=relaxed/simple;
	bh=lWLrpwiASbeWQAi/bnoylDb4+5giAIE7/iRpdL+gQB4=;
	h=To:Subject:From:Message-Id:Date; b=gABleC8e0E6Uy7zbnZF/vhT3ff75klrnhsLk4ZFEsJYKiPCPJZseviqCT8GjAnhsGv5GqzEgpdNTAKS2UrL+pvhORSs9PEdEME53Fdb+ziqhb0A9T9XUQS12kTEAEcSmhOSTpWUvv/KtaITb2Nevj9MOPbPp2MlCcOOY8utHzQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hklxm/8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hklxm/8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A333FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758131393;
	bh=lWLrpwiASbeWQAi/bnoylDb4+5giAIE7/iRpdL+gQB4=;
	h=To:Subject:From:Date:From;
	b=hklxm/8LAqZPoD1weV/dqfO/MQcBGzDct2ihA5dWTB+GY68lCA67+E36q2DHZavMJ
	 EgGlvVjFseZt9rTF1o6y4jiCunR3yMsnaQV6tc2rMyYHgGKHhINrHb5o0Ez6hRFm98
	 CIiSJcJHZDBGMX4Qks0WLoNZhuMM4wcBAum7Gn5/ZCz8njcU+vmvYD/0dYXmMIGi1b
	 FJbLC8SOdqt8rIpZgRXYoCTeLOlwiiZRArhA0/bbX7QLgz9Xu21OrRaGXDuPvpafyj
	 grP19nuzyecBL6VR+7EQ3RoCI1A6lEQzE3IGfNALxoS222ncOk40sUI7hn66gIEoD0
	 XoF9qIhsNf08A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B85CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813139357.6989.6173228262972755283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005db5affbb02d688e37e43f4e8df09189ef3414dd87e59385ddd44a64ec93e7
Date: Wed, 17 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758131393
