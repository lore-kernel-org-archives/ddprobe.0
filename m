Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC993016FB
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776596254; cv=none; b=ZoMiCzPMcorJbM3w3tKFXDBa9EMvYA+nh4HY3H8nIz0d5bjcB2kiZUzbSs/H13JyS8pLy1xolZSq8Q9uPE7Y7e5yHxcXL6FyG2pKDnuMQiYYc4+EH8Fuv3B/HCEmV3nHIGh9x6oeZiVYODUgxbit7GDq3KAZSngz7Lx9yKEleeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776596254; c=relaxed/simple;
	bh=N2T16x+LMkdRZ1wuFJx9B7+b0alPhGhnQQM59o0Y61s=;
	h=To:Subject:From:Message-Id:Date; b=IiUg32Lwj2zouTClLkUoJOzZHMdalmx/Iha4NSFKNe/aNxjxmZ5h0sfJMGVIkUsyYYDVFbG0CM+/6WVklsza/sfbRnoxA9vWBhVq99QokQFQU+oTDmI1WedxgK0GNuh2/dWbE0UaN8ML8nnIVeL7rQOP4tK+MrNa5fvJ0ImvmXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GinRRR+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GinRRR+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E7AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776596253;
	bh=N2T16x+LMkdRZ1wuFJx9B7+b0alPhGhnQQM59o0Y61s=;
	h=To:Subject:From:Date:From;
	b=GinRRR+TOknmdEOUi24a4Vhn0yojswsfkgL5dPrby0ceaULgeEJlS8QziVuymRWMa
	 vSw33B9/QA/x/ho6wJrhoKnrHHUTwCkUDIFEjtWvWGIc6v1wH9C+hLwUupxEayHzdh
	 9j8p1VxXaZS7Ld0IQaJcnPmp6Yd86Rp7KO/EPs2jn3Yd5uW+lL57pcmhmbEUfOGoEZ
	 GvCeLkcW72LDoUfrs3dzNQKIGaOe3bofmyeE3OvyrX2BZdyhVYD0UikQx3hMMEB6pP
	 qVNSp4pkZ9CO1GMx4cT9dliU3wA/8SFlazAqtW0vsRc4cKj1WQVyyCe6CqfAV4EbPQ
	 Jf2b7yUwf6Fcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A981FEA7195
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659625368.10680.15958066173798598547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34ebdfdd1ba4cd73bba0b8a99301dfb48e553b4f5313deac74f9bbf336865d2
Date: Sun, 19 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776596253
