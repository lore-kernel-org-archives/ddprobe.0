Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B0B2B9A5
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734928554; cv=none; b=LYrFY328zo9FlNO04zuCExhfHBJkAc5yw5HCtp3P+hyUeFU29k8Oil+Xo5/7/u92FvY5qOSpKmWQcBT3uQres3moqfureMng7MbLX/zvmjCY3ZJsBZ3fl/Q0NARcOz14PwSs/TMYfibffRoETNmbfKlAPtcfW5YmhXMW4sZKlAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734928554; c=relaxed/simple;
	bh=KqP/90vqDIlZw/+uil9ZiUMjIbZxgv4BvM+/o3HclQQ=;
	h=To:Subject:From:Message-Id:Date; b=pceULob64TDveSriuVvYgkoYIDbjVs7wiUGvWF6HyTDuoA7mgy72ryu1mUJVPtcsCQG6mCXc1n7kpmJbtXQd1O0/h+BxvnnPfukvKgflfNKWoHe43+6W/QdETBGrCSjvca1RsHGetK7xWFuc0xWOF5wqEMzAaC2YKiTrlpR+0cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bu43hvU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bu43hvU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B023CC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734928553;
	bh=KqP/90vqDIlZw/+uil9ZiUMjIbZxgv4BvM+/o3HclQQ=;
	h=To:Subject:From:Date:From;
	b=bu43hvU7+FpBryDsjHaJhpl46YiBEeInjnCHKEIk4+DxHYxvrdkgHy9GV1rYCLEpE
	 416FyrEXm1czOfaQ6huG6o5YTAsMul0yS0CY+34KQUTJyBsDo5We4lljQAWTbuzlkl
	 ia70O39SHnKMcENizC7M1zMo4OO1kzOZPYZmDsfkPAmoJ6cjzyBy2Knf8SHD9CP7aT
	 anrGI7sWBdmzn537sLFidX0S1wnNhXT029dMhdHS6n9VF7L79PVfu4M0pn0zZcFzOt
	 7U2v1xhvKGviTAAuSclNaECtlUV0g2UFQIQizJqCTMOPicq5k7Yvfh6jAGAOMLPSYJ
	 PBL6+8ksMC9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC62E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173492855359.1141.1173018907439411638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29268d3fd3247fff531844cb6eccc05df96691a0c968b61623602264221ad749
Date: Mon, 23 Dec 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734928553
