Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221FF1624DF
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765714374; cv=none; b=c91b7QWpMv6fxFO9Zu5FoguLwTFHDJW5cueJeigfkF/4UU/mUAdTRdyff3IPsH1PZtl549i/pq8H8hh8r9liEIDOw80/nJWYvy26n4WnMxQk2s9pQP3C0FIt2Nm8IuvqG3/Tj+cI8IAKiSGD4YzMt1wyZAfK9E4lNnkN/pC/n+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765714374; c=relaxed/simple;
	bh=Rx5goNnUsaRgUd2VUUvQxQLQb2kMInONyPnENPswPXc=;
	h=To:Subject:From:Message-Id:Date; b=Cm36UTFK6ob6jcJw78e/pMhBeJih8TQBXrRb5SQJ6GMvNnhlEsXHJzKXfBqFXuGmebzR2AozYgowUHxMtEzOU/A344/F/lQQj4LIQdbz1Sf63EaZQHRHLkW+9dNPdGgUwRktqSXQUm6npASZr9PmPRzR1ShGRc+aQqyTp4t5sVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ar0QJx00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ar0QJx00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E6FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765714373;
	bh=Rx5goNnUsaRgUd2VUUvQxQLQb2kMInONyPnENPswPXc=;
	h=To:Subject:From:Date:From;
	b=ar0QJx00Zlo6myial03QAkR2HytdJ9KHd8ooENOW2M/E8fk1UAnIPBWAxIHyI9SmP
	 VlBgunUEShDnl6bEWo+ZARaSjo792pKLL4eed6f70kvTtT60LhJB4llQq5X3pILzp8
	 9lmqVJRA2r/RoqoaO7NxbOLpIE9haYMHQ3eAmwUbrjHHxRKIyZUGE7RjEOlmYiEqC0
	 b8pUwA4MG+50lj+GGc+s91zFVXqbGxEuwoE4bZA7RYrmPY6i2wND/2kvrr1Zxb6YRL
	 6Anp0HQyJJyc0NBM1dumtVnzjyDqOD2bmDXYb9VlO4OMj5jmAYIlSpeSaScgPZWji1
	 n6gPx+1xKCD/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0DD5B16D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571437358.6082.18391620186472238484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb9204b0ffecc9d8ea2ff2e845506f65a1a2369856414163c6bc9f83ba09235
Date: Sun, 14 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765714373
