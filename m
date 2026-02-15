Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5DA3EBF0D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771113894; cv=none; b=Ae9nhs6yX8LNYMjo4EtzYCD7bVu6fLBaA2axkdryhiJKLHhd5jL1hZ7/wjAat10LGot87YAydcWFwzEw0L6JTBPAIk/BvnuCXBepNKPjcYf4yLkTna8I7oRXqyLUZ90MYG91vuyHEeN6JXv3l9OMtFxHK/23aQAh0C5lgu5SbhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771113894; c=relaxed/simple;
	bh=Iau9U4e66vCK1aoLQm08W9lS9+CcjjxrLu+x24MkGCM=;
	h=To:Subject:From:Message-Id:Date; b=XRGsskXCxlUtryn79ILSuRnhgXvLc7JTuVm4ytHG2S/5tAjBtfCsz8b1YhpCsPrJgcIVvF7jv1M4NzEUYdApErZtNpf3U7PGsHTOVYd70e9Q/6zLJfXXLBHdIFzWYbltdf0iEVJFRxm6BK313xlON0tvFjYQvUNrJOR4REP0nIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIcydpxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIcydpxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBEEC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771113893;
	bh=Iau9U4e66vCK1aoLQm08W9lS9+CcjjxrLu+x24MkGCM=;
	h=To:Subject:From:Date:From;
	b=dIcydpxcP8hUVhq+1snCxo1SLmlUsBRYdX8Nhai/vL1m7+7J5/Ojvpg24W16qq+a8
	 BneNothVtHrxr7Z3YEtwLrM6WY63KTER9ErfprfMdgiG/no3Plf9QPUXFhe7jOUPLs
	 S2E+iqQMpUe1eWpNutuj7H8y2lEq/XwFKXof3s5/wAwdQS3uaMR6kad1BQmDLzjulf
	 Osns8Eb+NC71XFD2eiYDJlKUkR1GRv2+8K1yUM7tiVthc8xlXfVklMZ43Iu7Ipl3g1
	 LBQIz0SaZgE7wjwnK6HTeWlV0q5QZkOQRJy5K9G/L8eDbovCVxGZ/pFKQjK0okTodD
	 4vKBsfCr3OG9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974B3EF5857
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111389360.5538.9285836375208053974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2edacd6a8171db9b5d82c0f481fd5ee42cdfe16cc5e06afc2b968771a85d2b1
Date: Sun, 15 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771113893
