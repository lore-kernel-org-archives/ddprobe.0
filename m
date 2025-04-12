Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EFB74E09
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744475395; cv=none; b=L5uOPtXTAShE3QauaVCU9guJXh8fCIqXcS18AYGL4J97EGV+7y4w3Akv6dJbGtU9ojIDpx84LYrVNkWTvc8E9Aq2+GCYyafsOak0n40UtPXlHeqpzwyZ9B7KD90QcfPjkFt+HtI6drh5Mvt680aXSL9RQA+Fyiu94ojLayGaH3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744475395; c=relaxed/simple;
	bh=ufNKEAf/1kyamxsrvEZ40Tj8uPWsSftLZOpLHzYeUEg=;
	h=To:Subject:From:Message-Id:Date; b=cPYfcZ+MsZj7ikbBHdMKfdEX7y0DcO9m7cbcog0KAHd0fPSZs1vjHOltMEygow4HFEWjN8ofP4Y7GTzmcgGJqfMAFKSvBXFfLQVm8q1tWV0zldaHn0o7PJQ7B2XHQT/NxJZYWnRlUH3VMDrFzfuXqVFlslhYeuXomcQfienxcso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeB8qySj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeB8qySj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19CFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744475393;
	bh=ufNKEAf/1kyamxsrvEZ40Tj8uPWsSftLZOpLHzYeUEg=;
	h=To:Subject:From:Date:From;
	b=ZeB8qySjIuOyEky5GE+p3zQs0s8hErotpmQicoVBxWFbdwEaKCHOKvTaxCvcUCZcO
	 dsrlkcXzTeYGoCJ0z1ouRbWYhFvRXc53B55RvBUUnddN8Rme1CL7ofI4IoWcTKXHpc
	 J0iLmdos07bOs1fgfGRzY0CK/r2Vgx81UxJXbjOmopMEQu2JEhvzl7Hgg8A1SewH4T
	 I5rv0g2kXX7Qk/KiQVWvaCe2ml95I6An3cEL4TUNLi8fxwWdVgi04KaNLGOgbdx6RV
	 O8ZUydka7anjnTV39ONFEONHrK395SzraKbIveo75RT6x3DyK0pWOGcmw/R2X/KN+Z
	 hf0kLLLLOis4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C238C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447539359.4245.3714494531319476092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fce3fbb942e660f969247e23bc14d7074e0d80754429db9f02f03cd31a0d94
Date: Sat, 12 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744475393
