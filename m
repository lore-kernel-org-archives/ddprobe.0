Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A54527470
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770791094; cv=none; b=g/lF6FXxdVZulXt1XM1z62r3KQIqKef/ZTBCXZQDzafTxprQowhNkVeBoKD080GKGdZeMfeHby05+U4fiTXP/+pqaSXG1jNvvS1y+QklOrdsxCvRjBZuxA8DPqajdiFV+KbSSmzZqgvBpG+O6lSBy6Z5ZVwbmgbjjVpqd0XDH7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770791094; c=relaxed/simple;
	bh=YSYl58anK6BY28MFBiqxRbYnSl0lvMhRrmxjEbECelU=;
	h=To:Subject:From:Message-Id:Date; b=AzCyyeV0faT3Y+jTHFBs+0wzjRvIo7zgXUbf+XsqeHxJja64+U+FyBDoApFFXPvSsQWnY6oEctwGZflelUY7Rg6bbiI/YLx0o0jr6zr8NjecEzQSHhOAgcrRO4O4Rq+s4BfEz9TlrXmLDIvhf2d/GG2KuldN0IA3b3cewHjHvDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WO/VuJd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WO/VuJd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC539C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770791093;
	bh=YSYl58anK6BY28MFBiqxRbYnSl0lvMhRrmxjEbECelU=;
	h=To:Subject:From:Date:From;
	b=WO/VuJd7ATHEpPZXxtrZPYCH4by/oTsLbur+F8UvphMUVWYCI9hfVPZy2sha6ZDcF
	 4HZfZ4/U4h1aUfVtdah+LXXYUJJcRCbHGAZwxdFHmCMTVwxtnkbnZlUVwjnUS53Azv
	 hxiKW69T9enPCkSdsXZP0EljyIKVFWIAqxuyUYnE0zA5FKSuAExQVpA1E63R9vLDJv
	 MR6QSyEqAGA1nlQ3G74KZMdrG6eoKlwOP/vA16QzuD0N/uSyp2VCDRwZSssIrVkFEk
	 1G0yMFNjBbqJ4XWrk9gPxcv8ify29A80ZsWm/dJoy2AQGoDqsNnjP3HOTMDxxkQcbn
	 41rR/fZTqnvQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997B1EB596A
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079109361.20756.12283539731764139128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4916663b155258a36e0434fc945395ef0c60deac01ec2bffaac98649ec18def2
Date: Wed, 11 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770791093
