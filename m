Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405AE24679E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759669194; cv=none; b=g/TWAi4QnbnN65cGtKZ3aJ7Czi97jx0DfsmAfqcBh9TePJQDhBbKGLabi3B5K2zeWNxKmNbJPvW27c0DyJXcsVCF0qWgl1fRN7GMvt4CELIZO3/348XptOj/08JXHduwidGNVWwERR9EizwQDptBdk877WVCMg2cRXVml2Q4o08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759669194; c=relaxed/simple;
	bh=kNENXMRK6/PNrrSCV6KiZJ/0kSreHzDx9cCGQThEd/c=;
	h=To:Subject:From:Message-Id:Date; b=NShPaCKUg42jFSgi7ZcUsY3++jV9szPiV1zjo2CDmv/0/iLItC42VKSkPx3ZFhF1MdlTQ1cb1yP/rF5C0SXMNukonQnBpxYNzggwh8kJ03oYG4Y5//1TETentdr0bI1IO3s1x/rq7HQvffhDeaUIGaPyrW18NIPOpQJZPxjnohA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrIU94AA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrIU94AA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80CEC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759669193;
	bh=kNENXMRK6/PNrrSCV6KiZJ/0kSreHzDx9cCGQThEd/c=;
	h=To:Subject:From:Date:From;
	b=NrIU94AA0/HeeSFQg9OZDqinkq1SVJcHJeZB3FyRa5aS1PVA2i80aKCmXDAST/DNp
	 fIyYGS3cJsBjIRydws1ZD77zhZh0D8GmXXlyeM4Tnipo/8Cfthovm3bh2a65DDh+7A
	 BoPyXG+9yftzd8gnLNHRcNOjR+sgWlzo2yD6Ni6Ooz2w7tecPmLiiVRbdzFXU9rIVz
	 EoL9aJp9whwtbRCb74Q/+coagntK0lW+IoUmS3gLroDCVqn9PLoC1gHAerxWxtYgHm
	 CiI51kHg8+bn9znZFhHjNLIQwfsgxwTNImPi8khyCs/lv73Pifb5b0oCPN0iwfyFed
	 xCVDVL4ENt41g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C2CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966919357.9075.7258202684217823063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f316948a87bfb582ed3b4487c3c2b216ff2a86c81c50e8ddc33d9776bbb452c
Date: Sun, 05 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759669193
