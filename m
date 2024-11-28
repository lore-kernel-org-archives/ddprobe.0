Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197762563
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732765554; cv=none; b=B9OZDjSnw+GD+HySb8BfCnADosLpdl2/gVUIXoozacC57XS7b+gh3qb/P2GWVsNRT/xZo8UpQcKo7z7Sv+P7tFmFRaq53eAphXM/0xQyiG/UQkpLGvgTgw1O0J/aOvxDiYbsxhAW3bNCfUly43QcLXMMCUq6FG5FzS3uPIynOR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732765554; c=relaxed/simple;
	bh=Mvzjh3xO+W2+FYk7/MNbMBk1EatCqoJAzy2KZMw0t2k=;
	h=To:Subject:From:Message-Id:Date; b=KfQ7F1YOsyR+oGNMXp8cn3/k8cPSnOeSW71wGcqgShHMFCJowQRfgWutMi6bjOFYQiu1TmCBjvNPmId03cKimkX5dqyqtvZqWWR5ONez21qyFqxfaLYzijDd8mp70I2HLcDZzA3vSIggghgv/aIOFFyIfFevQMiycwqff2mLgUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEJvX7pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEJvX7pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA61BC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732765553;
	bh=Mvzjh3xO+W2+FYk7/MNbMBk1EatCqoJAzy2KZMw0t2k=;
	h=To:Subject:From:Date:From;
	b=IEJvX7pmkpsFoSJ+6bVb8ih3u7WlDm0xGCPjCDTsB3KntJtWRoYxjU226ZNW6pgA7
	 QS3PktOVqnV+w8R17ejnvU1zjXTOyGOfXXLKnP0/3SsUh3GXJmpyuBH+qSIW++9z+5
	 Z8RaeeJuKUqNeoRadhn5lrrVZ2hDFlatw8KCV8yx/DtV/kFiG9ItIY6AIVq5gPWp8G
	 tzlD0gjHWKjXF4RLT3OHcuKnioaoYdbapyyQNtFmV/HFRHna4mAeTyNH921kpm9mNN
	 /JwUKHgJLCOCTPYza5H6gDdeu1s9AKBjduXK5F4aL+e6W3ogK8RqV149hUhsS9zeRV
	 xOuXmS1cy+Ypg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93467D6D25E
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173276555359.3241.16191715826754443684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b613bfbddfd8e0a8c9d9a57ad1d6d9c3c8b44aba21f33ca82fc1b8996274d3d
Date: Thu, 28 Nov 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732765553
