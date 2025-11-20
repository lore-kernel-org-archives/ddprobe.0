Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2484A21B9FD
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763620914; cv=none; b=kSnMxSO4Cy2/nhsZ38EieskGgqGUwsQgGUvOKpsST0WDHDcXXF+CC9NWS0cMOUKc9I7gPkyMQmWMmFL9Vf8wHp0eGDjO9plUkIftwiEskXInZe5lbPWPBoyGBbRXOIPPu/ykNYppdtGBWQgjAbAgaeh9GNKC7cFyCfHxuhzgFhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763620914; c=relaxed/simple;
	bh=tKjcsgPKOBiwKd2pP2gA+7H3RklRAEUcirFxCFs+KDc=;
	h=To:Subject:From:Message-Id:Date; b=lKqt6DP2uXSgJtN7Kme3SYcPSFllanyCXS8mVIlMRLrJNOTNpzlY8UDEIubm4sMcSTEJGI0EBl+39AyYKSos9kynb/RD+UXU072Ars3XJDgqzpaE4Cp+Oj/24897pVkgR20EKEOWyePe51xDhC4XrHbh5Zk4YhJwg1y6NlGUbyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LB68ylSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LB68ylSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A811FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763620913;
	bh=tKjcsgPKOBiwKd2pP2gA+7H3RklRAEUcirFxCFs+KDc=;
	h=To:Subject:From:Date:From;
	b=LB68ylSB+V7ByQ9Pr8ArrEyOTyvi0U3K72qlCQmAlTYXSjLj4NyybpYpZd58Fk3/v
	 LfumyacbUCmpx3hH8mvev00KsNdjulIk0uut5+8pjIt5/Zy9ogy1Qi7C00VH1jSHaJ
	 fCEAZSaT9t+fsmxlpnSOO62NPdyaDH1QYG25B6bwmPrW75XU/s3IDHTnUlphJ6CrkZ
	 UOspaZOG5gb42y1rMaNpKIqaUhHOT1H8hsWrhYLZUOtJAptFk5AKMQGzhBkC50S+H7
	 lfy9LBUIfLEROh4Qc+hYjDxi307hNDzxOzpiBbDUrKztnJvJdAula1rRDwnFxa5PKu
	 GSKZsjH1HfBRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF3CF8545
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362091360.31147.13297736934487682945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a372a829a44b212da594986a5047a9a587a2acc5086f1ae6121445c70d978652
Date: Thu, 20 Nov 2025 06:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763620913
