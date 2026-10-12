Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D0C47ACD4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791829234; cv=none; b=dznzwmXNJVBa+XSv/LAXWBQvAFUdFqmQAHjG9CpYx97s0SGCsXv26ypAS7aORQSagK+gapSDncXRyH7vnE3CZ+oG3G9H+28XAtpU01UfSey0jO2hB5mlS0ggbv9G/YRd1TnzoSW/HKw4YZ9er3dAwZy3tjZY4hUgkZSjcFXDUvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791829234; c=relaxed/simple;
	bh=54jN3rbBYRoOYJd2Lbsz3ziOFHlJ1tzRJrSFCC1FKSQ=;
	h=To:Subject:From:Message-Id:Date; b=o5Id7JiNjEaClgSJ7d0Pt5jHVY/HvDdo4twlDNAmxjkbo2Txvb/68r5dL0figMg16PrxqbrwI2VAhtptB8Ci2ymh2o0yLZcX2/LHba/amIqK6XbpdAV8YSgml1CIhWdJEcQqmp/zXHBSp1FPSUydASL3sdBTnFnjhCkYFk9thAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZhGxK9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZhGxK9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4593C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791829233;
	bh=54jN3rbBYRoOYJd2Lbsz3ziOFHlJ1tzRJrSFCC1FKSQ=;
	h=To:Subject:From:Date:From;
	b=JZhGxK9MrQ8xx8MvJJkZPD1zYlyriLJPj1+5IjX3Ca4Ph8I7lHYI3gVzmhhlrRSoX
	 hPVcSwwaHlR+8CijeHHd2I/nMBnI6FKFzTv2Y5/D2CCWyEml/iXpMDc4bWRaJbs/CK
	 94npQ/timmt63uEpIrbkgVU2xp8t5T1E9Y1C1DfoZTZx4+AneYjtibojnFvWrEbvyE
	 WFQbnWidr09aUmoNgpp6rCnm5lmT0g1b7yHwk1mybowuVVycPjDIJbU4F8uPsE0M2w
	 DdrlPnMjnJLRumPkspmiUwNSV16pY1uvVrUrAQ/7HoEMIYHuzcDiERBSdkrYOV02Eb
	 Yn44Xt7HOgr0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF455CA9EDE
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182923370.15476.18214561222172121512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea010d3cee0ef6da4ca227eb0bd5d8eb6f8bffa6ccacc24105af22ad6ee79ea
Date: Mon, 12 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791829233
