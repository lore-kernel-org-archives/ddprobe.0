Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F0715C3
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727660154; cv=none; b=S2jV3hHxBe/x7NzFkgk3YYdEC4XGBLf3SK9qNPvnW7HtoOl1qI8MBo5kjpJuOi7O7FQbBj/aQMJ5cWMm6x1QT3NQpAais+3KyqsxaarowZeDflKcZGH834FyDvT/glpVHnSCx9tvTcJdGJUJJ2uCYfek4aiArywqZ4s9O23YQ1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727660154; c=relaxed/simple;
	bh=5BFHWuCp2Rw2/DaQIvuOuXmsFJAqAtZAvVZ82BOQxHg=;
	h=To:Subject:From:Message-Id:Date; b=p2ZeWwtPA8n1hkmgVGVbKBM2KL+7Fv1FSnm8zmVe3Q80wU+cxHwC3o6KxTQ/1BAHc01VNO8yzcdLIhDKU4Uxh75ogB7RkXzo22FxtdBeALm+4iffsK6eO2tSnPaRJW5CQF2JDYWzKI+fygU+fbqxgrCSR+e2WMly43IwTmSwzjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/4qyXem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/4qyXem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AACC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727660153;
	bh=5BFHWuCp2Rw2/DaQIvuOuXmsFJAqAtZAvVZ82BOQxHg=;
	h=To:Subject:From:Date:From;
	b=g/4qyXemsZwWHPlQ8S1ysZdQ9UMvWTNcW5QFnbgyF4XyQM9FD5RE/ui4FhJMJXDeJ
	 6lDSzr4/YIQbaD5stEh0q2ESwIKmp0rrq4pUeOS4ot9PmluY4ZGhY1lgKhF/dDmhKx
	 gZdPDxNzUvJiN85NWwZWcOMhpjJL7nq2AABzULiRoj+po8OcdQ+z7LoiFF+9R8oZxU
	 wJbIgqSQdOTFHD9/Co05EKBo3iUXVUCoTAacmxnPOmketnC0sV1vmv87UtYxTz0Tl3
	 JhCj426t17qVBGpyonjN+G3/RUNRqL++U7yDyx/5+HuWn6CsRKMyrX24X6K8je77/H
	 419AGbmrZvSTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C11CF6495
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766015359.28889.15007931001562686301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d2bcc4cb8da58ba091c73a24be090fa791bd2984bc3e3f1b676ec6d0b55b10
Date: Mon, 30 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727660153
