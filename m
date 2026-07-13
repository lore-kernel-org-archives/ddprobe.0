Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7AE2745E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783969714; cv=none; b=JnY7Ug0Murtwj3HF60Q7lyJGqa+aDFg5GZSIq1GzJYKKdWtDIJxu/gD6/fbYOhkBHl0lnd/DcpFzIR6XftR480FuZvhRf9sFY1+ouOgj1I4L3CdlfwKrvxxTy91ANyQomguQdz+cKag27tZvkDPqjr5wGGJF6EfOr8RhnJu5ugY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783969714; c=relaxed/simple;
	bh=f/7Cfk4DLAztByULapfB/kXcc7j0WY2Tq3WswfbHrUs=;
	h=To:Subject:From:Message-Id:Date; b=dO9ofPzDN9sC2we5kH8rW+0WgQ9MpI/W31JeNfFGN8QnAqILfwaFA8PPWPMzAvx5wFlAVXeuFpY2jxWlW3djUep+9FrVy9fQmj3Dhg9v7Gc0W88j4dCa/25AE1Wo4PXK5EYH/s9oIJFIBbascu6qQ1THAEdBEyRp8XCiYJOVjxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDdyDBjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDdyDBjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA1AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783969713;
	bh=f/7Cfk4DLAztByULapfB/kXcc7j0WY2Tq3WswfbHrUs=;
	h=To:Subject:From:Date:From;
	b=cDdyDBjGiRIbbyF7fdu7U83LcqAnLnPoqxfB2vb2AMVYwsq0glRNlRGnw8aiFmc4F
	 RqZNMvOrzsN7fGFsctpTxaZ6sntM+XSjOUd8rDqifLg2B39CtZakbr0d3RK+rWWG2g
	 zMzyOLrO+fmIKn5l3RRPI/kg+yUvTXPWtj88jbnpxw/R7pnA/7uxd8KGKk/sZA72cJ
	 6EldQYxhl1mhzm5Hh0uVTreR9eqYf0T9R3uSJDK1C2fWHsHG9b0QFXJN+W8jUeIzwo
	 Y1KC9RH+jpy3ZkZgJMU/EhPYS0PbW5+nCAW1l/sSMDdG71wJY/QYhsRGWSMdRyDbIk
	 OPB94LnFe2gJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FFFC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396971368.25806.8680193610079208150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff0d2f98f4297033549d8788a523c556cfb5e29656cf5058b4e0cd4c047487d
Date: Mon, 13 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783969713
