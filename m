Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2BE175A8D
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786669834; cv=none; b=JW7mGTGp/o9FPXH9qAmXewNbq6CzmZPKmgdLu9Y6oDYshetVv+sqcEV9zkyqxD1vIAqeGDNbxg3LaoKJvC8TAsvJ0PbAH1kStoYJjiJnjBjMkJnwRUP2QjhXQ1LzcUDioDc3iVedArqhAsHu5iQr1RztLOjibjMuAlXnIOJ8ido=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786669834; c=relaxed/simple;
	bh=d0Nz4DqN/9gfLyhn3n8PeqetQTl2yL1L2DfCstqEYc0=;
	h=To:Subject:From:Message-Id:Date; b=TQVQwfC9R1BD8eDRubjiKDEnIBednOL16Rtp0RtevxG3+mBVJu+zu6B/Tg4F6zZk38qms5wfYFbI2AanRog0v9ZaYfHhbhVE2U4pE7RSYkUfRAIaxledjlKh6+YCXPCkV3rvvYaWBrSdV/SgjX1VSB7oWRgB1hazXPUgSJGS+vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSFbwbyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSFbwbyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB40C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786669833;
	bh=d0Nz4DqN/9gfLyhn3n8PeqetQTl2yL1L2DfCstqEYc0=;
	h=To:Subject:From:Date:From;
	b=eSFbwbyg0OnYPI4VlDjYxf1CpDDqDWHUAIloRD1dmNlSunpSxUw4Aj895E2z/XjmT
	 yb5sb6Kqgj9LVtc4QbesATmvt/sQWtP8y57oIZSouGJPNnIFolbdWxbhFPM2cwJzIS
	 SztsSDWfQ1bDmxA6mOS6Gm8WOQpVYQ5YjuwWeRh8pE65bjCBAAQ/OgA+yW2sqwCW1o
	 UBhRGnouIsyJJPbDF85QWMEa6XZtbaRhraWU1V9gotsFRpOZCtknWImtTfxAvzxg7S
	 9PO8bqpeXh6ERxrLxpx06/7z4SXuRy1ckA84/7XpJDg3POt9jmYcfq0izJWA+OOXRs
	 ncFK+QkYxXI/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ABAC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666983368.20360.10100145759119722232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5625b3b49af71483c4f6432fa6b98e84107bbca476885f85d02daa72ef2ac68b
Date: Fri, 14 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786669833
