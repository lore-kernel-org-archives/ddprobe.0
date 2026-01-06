Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8A42561AE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767680634; cv=none; b=Kd03cOCkXg+/Na6RJjhKRNWXPhwm9irBpofVCmyBZONUfGDk/CtUMA9kTUoVJ9B7uwaEfXC+5tvhqwz+CCfstj/88wKFe3svTjaVirCvzP/esqENlQGos1Lv4dr2lNKJBvzClomfTGmsMmi0+l+RZL7ReBoJNcdIacO4fdob7Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767680634; c=relaxed/simple;
	bh=6ilkphpaSTHQYMuB1qz5YbCSrvHpa/0klCvKEjMZ6+8=;
	h=To:Subject:From:Message-Id:Date; b=Bx/r9zRzSBWC2Z3XEf4ZoMDOJbLI977aHaKvv6PbxvEJyGi5jvtwzYefcZE2QYxsp4Bqk9UdwqpGgpQi4hXXbXC6ZnNVQCn8T/0zH/RimI0GCuyRZ+aobaEC1hZqJ87qvf/EyRmzEVXm/2mRMj/ci2D2iD4TQgN/bK0D4S02UuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALWHBY/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALWHBY/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C346C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767680633;
	bh=6ilkphpaSTHQYMuB1qz5YbCSrvHpa/0klCvKEjMZ6+8=;
	h=To:Subject:From:Date:From;
	b=ALWHBY/2pYW89xHliBasbzOIpzkLy8m2IgVtrFer022NDY78+tCADNj3Tyicd6Rdt
	 H4tnz/s+dqNQ9ySDoemYHLbIOQrW2srPUDak3hNh6dYKU4B0N3ETvdmt0o4zQ0QmaS
	 uZAp+t8/hTSrfBrPd5IfcOghV68R9i8Z3ge3wm9efbpxNOF5yDWJ/ClD31EfrCOfCW
	 8fwol69f5hanuBzKuRo3ahu7eLsRoKkrCZ9FUzfaJWlnVuezKmX56t9gPdFejVg73x
	 jpTH0YFkQTUu777gZctUmtdBL01Pd/bqEs+oQBYLNMDJNaxh4+yMQUlRpPb+V4hfM6
	 ugVcXzeXr08Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB3CD043F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768063357.24958.3634172666278784618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39723237af32261a0e8049e9774c58f739390f7ab179afa5164fe808c868d82
Date: Tue, 06 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767680633
