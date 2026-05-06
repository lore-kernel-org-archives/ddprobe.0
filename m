Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20866345CAA
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778069254; cv=none; b=q9f0nSV65mzkNIDL7VNH/CkkM9XtsipS8OHzgbFzKgdrUbHyr3UUlzFczgvpntH4pX+YFTb0S5HrA8st+hdIrYyZj+b89ZUiH0QHAxF74jb9/OZigEoYOqj7sH8I4qDA3mfO+aznJzKwZucgO5Ujbeb/U3xOaSpVNPTm1fDakGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778069254; c=relaxed/simple;
	bh=ny3FWpBt/vne9r0/b3BnjktnAOdYx9m93BSNQFgxaYE=;
	h=To:Subject:From:Message-Id:Date; b=VzwaVLzY0L/skRXpEhAmmSjoNNRDcPf5kZTxzhObJPwhOnRx4vTzADkB6s8hu/EfZRNss4OfhZznMRdgt1zl9ampXMyEH76Uiz1GaEDSA6cNYsKLRkbzkWw4a82GLIQGEK/bsV+AVyUmc4/ZgYuUkCgqxO7iZWeUkeFgp7p3UMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuqSXAQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuqSXAQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD129C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778069253;
	bh=ny3FWpBt/vne9r0/b3BnjktnAOdYx9m93BSNQFgxaYE=;
	h=To:Subject:From:Date:From;
	b=fuqSXAQkv8bpxftvFpXPFND6O0S03lu6JmM+xTDlnio4lUt1oBbKmkPSZsgXplF8h
	 CCQgrRiZvuLz1E69T849huOipOtLDyniiHA7ulnDPiVOZnDaxGbmYrfPp+IvDF7TIe
	 CqaCYEFv1eLGKyr0RtEOQjjy3hWbZ9OLDJ4yKPybcr8NeFPFSkymmq6K/KdXRHStYI
	 nedYg9KpJwcyT/xLHrZKN3ZPf/ipa7U3+320wHzOCuLAziB8Esx+U0WqeLpF4MSemf
	 tqTIg46+WzbuQKWeX8IxENYkK9ZKte2tDhvGZIGWFtJAj3Fu76x5ahuy7MT54V1rmM
	 +MhMqEtu8mGpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBCCCD3436
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806925369.8396.11085696128580486413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72366638a2799658cf7c323080278f97b3cdded92480bf1ef9f56f374314514f
Date: Wed, 06 May 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778069253
