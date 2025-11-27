Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36873277C9A
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764217974; cv=none; b=ZLp6GxrhuH6/V7Lyh6YmBnqyuRGLJhy10PsYbqQ6IvQNrd9Gp02NnRjQ9LfIQv72p3NbVHUoMgltIKCGjPC2/x6dycKKQJ+Bpl4RCbeBYW8YGH2hv5sRJVzUFrL7UQimESjy7tQ3jLhDNZ09UXjNYsBG9hv/mRiLxCh9H8fUQIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764217974; c=relaxed/simple;
	bh=4hlI8u6e/CSoe8/SZVIjF/yXd6mNJyNjdri9Ytz9eLc=;
	h=To:Subject:From:Message-Id:Date; b=MP8H/vw6WnCRUkL7xa3NlPgNBSm9BWi0d/ln1l27WyYOvryRzobU15gjyAeh6DnD6TR5H9yBchO6NAl/4VNLWhAsFzT15pNWhGye6EkQcNnqKWraPeevEOb0loB+yFt2x84FkgjwMFBi1umMo5IhcQsVj8VKHTdNXVPos4rQwhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOIsp00I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOIsp00I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB150C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764217973;
	bh=4hlI8u6e/CSoe8/SZVIjF/yXd6mNJyNjdri9Ytz9eLc=;
	h=To:Subject:From:Date:From;
	b=QOIsp00IFisaetKWkHyFyPGXsC11W9Ie0ghHDiJAY+eZv9KmsqicqMuF2LgOn5N5O
	 kG46ngpWmB0BfkNPemqABZQ0lgIVXvqfV7dHFqzvK8GPNgJE9PpJaDIJPjU033tt5J
	 qwejWoXJeSwWSb8tGcGc4twclZ63DpvosdgxgYL2Hi38ozobDJLpbjNkVt68ZVZHkV
	 pZLM5TTgWyrh1NfW8SeCDhuvjAjwwUAaWD2Kb2KUMGL31YB0lpypw6KUmmg/PYrn5p
	 taZTa8YoDB0PlFUN0dL7jZhuGH3Lr43FGtFcpfujHXtC9/EMIo89DacH9kVZXf+wck
	 dWEFhdtPTBGsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC7D10375
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421797358.1939.5292878222225643075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b44cc4ddfcfd1a6fbf4f758b52658a7bb16e168149317dec52a74bcdd807cc
Date: Thu, 27 Nov 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764217973
