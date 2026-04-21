Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2334036213D
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776773854; cv=none; b=s3GmF3Z+OVPPKcAAeG7j8cSW2vCXh7MpT2TRXZtUYEAmcdJ0QLxTk/UOpDBDLHFZu8yZ2TLVnC1M6svkp6rtC1opI7GE6JyU08+IOWU9n2hq3DQk0eDafkBcXZUuTjKD7x7/OHM3vwIcOeX9wT8Jrd6Sr48Zs+22PojgdrG5o28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776773854; c=relaxed/simple;
	bh=uoh06CJLwpdfUH6Yd0e1YZmC4bT0wNxuGg0zLWXYLhs=;
	h=To:Subject:From:Message-Id:Date; b=UACYi0ME5XI0ucviC5IuMJ1Rv1xxxn4yaam6svjLYSrdREGVaHvsyPU54Y8Dva72MhMW8vgvuGo1ChDzHoOrELnB7hqVENNY66b/wsq1FZHjF/58W7pzw/D9LFdl/Hmod/UWAnV07e5ASqUzHpdkgeZ3M6HLmOOUksQ726EXH20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5JS6AaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5JS6AaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEE2C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776773853;
	bh=uoh06CJLwpdfUH6Yd0e1YZmC4bT0wNxuGg0zLWXYLhs=;
	h=To:Subject:From:Date:From;
	b=b5JS6AaZQS6zlyjQ3MJooeCirlEF3pvTv/ZQNKUbxssrgkfYNP6wQeKq4OcfeYVLc
	 sg+qsTygpJdhGenbTlAyj2zWlhWlOvZoCi7p0/H6gkBIp8lLuH3/aeuzoljMaMaxBj
	 2bvasudduprAwcSaTBXDZLoEMTHnqoGPBHkZeFBo7Ywpkq5YPdHgYCo6ZMxXBtC0yW
	 vCkkyaw6MRCCb3bTtAs0J0I3dYvpte99MhpavGPuNNMZ0ZOvPDzY1tSbml6/B3LOJw
	 QIHJYE4an1PSL0pnjSFvvUIIcv09vJKQA1/1rH3HiFHhZ9mOon0vze+cPjf17oV7Fh
	 Otiy3YYA1lZLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADEDF8FA6C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677385369.27623.16780260970232468750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437c7672e3c6e2c43bc4cded3caeef3550811cc1b7ca9486b943768c6c470ba9
Date: Tue, 21 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776773853
