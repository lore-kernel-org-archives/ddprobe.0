Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA2A32573F
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779558754; cv=none; b=YTZFZBdv1a/27aMe5KUXZOncvVoobOYoIG7IMjmGjWBOQhAv4wSGxwDyvK+Dj7ganRi3v++XNj69FhHfw/QkF3P7NHB8DQI9/0QEKSvzU8/EThpx3YsOM2X6oa60ow0hsYKEZlvojo8gCudJyafJ1BQoQEG256fXDS/xarcl95k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779558754; c=relaxed/simple;
	bh=89s3z+vJAxb2j0hqT2BKo9MwX02t6S7I3/5EH5YwyXA=;
	h=To:Subject:From:Message-Id:Date; b=BrFam1gav+c7xaZfyb2/F6TapRRAyOJbWoLxW/gXa3BZHmnZy5fZ5fZsxTLI1p5roNVlbUFREqlIh170D9g2/aa2PCqgDNG2iDiPD17kIam3lewH3k3qqKWFAqMGtJv+KSMO5VS0Dmc8bWVNT0iuUikJMQHmUimoBZrUP4uW0PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dp8qvR39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dp8qvR39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBD4C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779558753;
	bh=89s3z+vJAxb2j0hqT2BKo9MwX02t6S7I3/5EH5YwyXA=;
	h=To:Subject:From:Date:From;
	b=dp8qvR399NsBm89LIObzfuE/gJGCGvBR/cPSNMD4YODcqKrEEqymTDD+4ZTCgPYYw
	 iUCX8bpwFDb511McwnFOv1UbEuR7ag5lMf/GTf/01HaHZ4rYtNYv6C51pffPiw4hd3
	 DvbWy27336vdXOELPvGDRCs9OcLHDEIFX7nhInqcvi5iaiIS/DduU1wTWyggVqIXWp
	 PKs7uVnWOX8kefi4ziHtO8dyniSEIR8CpUGMU9AlJYUnW784U+a2R0VUk+1aqEfi7U
	 16W/fr2mazyENzsoUMKyKe+vucTJzVCjlVH2NM7S7xUCZjIDOkTcAd2nP4cbbaQsQi
	 YP6E5H/ZbiNew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8886CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955875368.12690.5827045327104759295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7204356c5f68d956ec526cbb384a73a6c7047eeb5aca38507dcfe4d01481322c
Date: Sat, 23 May 2026 17:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779558753
