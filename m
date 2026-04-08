Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E86D3A75A5
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775660734; cv=none; b=Yt2O4YFNPiwtXcXsghtm4ngAQKM8Odo0nMlQ3jQ/yOghFcVRUU2M509iJKrGvymsCrJZxNDlRLdfMtVfo9KAE8iVQc69RNxTMW42BO/SEaE8KiQS7mzEnbBmQF61Gj5fZMfCs8E0CovW43bE4+9xva1k9maB8FHJ4r9skmG/g4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775660734; c=relaxed/simple;
	bh=8ZlhOGDl2mtiXz9r1EyzwWCv+5D736ogbG1BESMZOHo=;
	h=To:Subject:From:Message-Id:Date; b=Mao2o7MKNQIfjjStJ0xA/PZKnyUZyBRVlj8QBM9w0QZFUy+AXqw+lHn5R+oWjT3swdQ0aKpLg4xsPek3P5JVni0B1nbc2PF5maMeqld9iSi8xwULReeO7mZmebPbEdoJIFIA8LkHmWy/uTKiGQKhDalIYJ46b7xTptaJPInIcPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyUjSpxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyUjSpxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D1DC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775660733;
	bh=8ZlhOGDl2mtiXz9r1EyzwWCv+5D736ogbG1BESMZOHo=;
	h=To:Subject:From:Date:From;
	b=CyUjSpxmrP4r2lQn9UYFgCKXVQwkl20npkIXxEdl3zkIX2Rs8Uhvqo6q8GL8CSB95
	 ZXjtAIENNwCYTEVc8k5vNhqM9l3WXvkMIiLL82JZ8Ln4OttZrR2OeBpBS63GzmBIK9
	 F244RpBiIZyQ686aKa+4FSyEJ6EAvkih8tXY03JsmhoXugMLkjejmQdjYB0jVgZYo2
	 lus2avyuSas5YV5LSBFtPBTDtVSYM8u+Ycz0qtbX7ezWHUcaXB/DXS+VthcRfLWcuo
	 LwvUTe/9icNpKXKht34wayD0jiowbZCo6gWINUil0VbblXZstjI9h8ESFEvEEA6gfh
	 ejkBoaxz6yqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CEF10F994B
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566073372.27108.5593494531735079832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1cafec1f8783a09f716c34188881fcf7822209b5d7a35b118f3859a9c9955e
Date: Wed, 08 Apr 2026 15:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775660733
