Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7612D0C83
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765440774; cv=none; b=Wc+IAyKTnHZUSkh8NfmhlKTMEBTV3yKsah6Oj6kh0sarjK9ARz2qtLTSZYK8K/4PEPY3ONWxvvLpfRqHTZLHv734v+awjBGLG+C2SLcpATf4q7m9HVUjOEoVpyNoeP8Yrk6+lRa+b0BETlRj6PTX499b0ue74krXLhvBTF92zH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765440774; c=relaxed/simple;
	bh=pvTwxmpytR3lKccjW4/CvnZy8r7Q4rL+40atZaEocV4=;
	h=To:Subject:From:Message-Id:Date; b=KklQ2SbY0fvEjw7ap0WX28BAm1sE6Q6vt6TQvlbiOavgn5a//79MAoZiiTrZLJMokF2AhzYmCC+lEcvjdPg1i9vzW0ukllaVHjpoSfjdwjYuYshcfLntR6DM9BZEPPUCA9CubETZoBslo6BEfd123hEBJ5myIOx1CTOdoPZbPAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puFK2z6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puFK2z6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B32C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765440773;
	bh=pvTwxmpytR3lKccjW4/CvnZy8r7Q4rL+40atZaEocV4=;
	h=To:Subject:From:Date:From;
	b=puFK2z6Gr43GhLkiveTL5+cDujGbCy0hcXgVvIHsIRRnuAQxMd8oScDlzedoT10s4
	 9YbGCVqhDAhRbApLsrnfkc6pr2np/S3cMuLTUROUUQ2O1so5u5m9HqGxlE5cLAkg1A
	 t1jUkoD9c+BAgehJW1/jLXd5rjZJxZtyRlY7MlxpnrkbFOztnNCmHjArRGtuYMGIFF
	 gnTDUrlDPFGIVgNQ9S4d/lU6czZnURAt/uDAuniq8SEdeAaZm/ZKsqdqTqwMW6tvq8
	 +KR6nXxHACptVgJhjga8NzF/GofSaT+CB0b2aUsdCQPdExYCpd3wnhfCC46shxDSCy
	 ZQY3G1LlRqjgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A9DD41C04
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544077359.13655.6265387615610320370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a97db5b3e0cbe516f09c9a5960e70ff64c2480a84f7144fb446bebc3a45d87
Date: Thu, 11 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765440773
