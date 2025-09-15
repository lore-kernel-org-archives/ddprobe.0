Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198052FB63D
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757937594; cv=none; b=W04ryEUFsMZ3UYTe4qBgeGegPambfXgl/wCdVCRkArdLhChzA0OLZ+iDcppaDg/0gAYns/GDnUkW2DT4V7xQTIBkIm/xyoYX9jrgDxZrabc41Ges1SAcxnQt520Z2fAaKk/ddQ96bYI6hcOIGortIc2PtFV7ulAhWDbexZpDhlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757937594; c=relaxed/simple;
	bh=J//ETpYwlXPK7u6YTtaRquvi7oM8aUhOruhTrUrp3MA=;
	h=To:Subject:From:Message-Id:Date; b=eg6O5Et3L7qrkns51QtixI6CIgS+XMsujdsl7jXi6jC5s4GnvYB2oovhiTNsfJu91m/2Q3kOs4ZTYC+Q7gJqIpXDctFnIOS2dJkr1jCzOR63NuUFbWXvB1TooqCkrG6lbqonoSl/LeWSqIKscTIBjqbU9jeybgVUck9b3VQ+5CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gu0JccE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gu0JccE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F0EC2BC87
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757937593;
	bh=J//ETpYwlXPK7u6YTtaRquvi7oM8aUhOruhTrUrp3MA=;
	h=To:Subject:From:Date:From;
	b=Gu0JccE09CSMw+S67bwSvCO2lD7WYRO6W/G9FIaojbjv20zy8wNzrJkPPVMLN38lJ
	 frQ1FvivIA7Z6G5ZoiQ5z7MgBxr/3RvW1Ym7YCSZ8msM20tnLmAi1a8ZBBJQm3/kj5
	 HMBz7vaUw/TseXrCYqXTAWJRHlRlowpsR6VTGMO9IhXPVIptxrK2OlpaPXq2tDKTt8
	 34QLKrl1O48o/TV8MKpnsI6yc2fd3aSzklOuKgH8f/ug7xd129c6ViWM5sTiAXLTPm
	 6u51k/pBEjPUKx3dHvo+SWTEAJeqpYApLWBH5OlbohSi/vgu0oicRGupJ0Jmlpbhny
	 0mhJdpke81yEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028DCAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793759358.20005.16463046063391046877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8fd7a87b882e96971ab890a1f1b3ba6b2e03fbb37e50edf5f4b600e611a52d7
Date: Mon, 15 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757937593
