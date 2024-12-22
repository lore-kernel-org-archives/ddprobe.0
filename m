Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493ED22071
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734840954; cv=none; b=WBzMcTS7eFPDAUtNQnjVoktg6WeFLrbi9xtrJjWw6y6xZ40vkLCldbXRcHPtr7G+DlQTI5AvQOM5tbTcmmPnxNlzZocfKiPtPku9/SBvyIeXT87lMfat58DZXh02uBzald2JgsfPg5GzkZdf6eGnkWKPmnxsVZzOzzNiKLc77aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734840954; c=relaxed/simple;
	bh=lhBZ1v+q4+OzgfUDweFem8YRrRf3hxIOP1TGuPEaIyU=;
	h=To:Subject:From:Message-Id:Date; b=OBzwi6OEwQgrwdo9MS0dqhVt0y3hyHAaAtPpNUDg8LcXvgJyd0Ik8jqcuuaK11tUYKbhmv8Z2JSdUxG1Lv5u1GJbZ9qUVDCw2YoKv4gmGAVVoJkv8jFdeqlnObg6kb3vKOT2U5PH8P9+szLEpc4Ne+N4Mx3xkoKEnjguCNmMObQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fuya12AV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fuya12AV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE8BC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734840953;
	bh=lhBZ1v+q4+OzgfUDweFem8YRrRf3hxIOP1TGuPEaIyU=;
	h=To:Subject:From:Date:From;
	b=Fuya12AVyuonlRxEToX1Cf3vbNbBh3M6yD60N+w26CrQEsO+oklGdlqrGb8PEfx4/
	 Dh6C9Ywxp0n3CKY4S8i1LR4Kd39sYrUjleo8OqGf+6qZ4o/2XGbdQ/Zwdsv4XD0Re/
	 D7jLmkBIm2An30qTWDSe6n9PynW8A5jYQlG8gbsAPshtnmw+lFaehS+nNVe437NbIy
	 rIP6TK0LgFH9JIzkPxqGjPUDJtYnPECcd4Nekxnyei/L6VzX7b2V3X6X59piKWKncG
	 POzGB9MonYLI5NNlqxAmT0jTXyfCKmJUBc+r+A27r4Lay7UtqinKxMqNtnjO3+34+h
	 daBFHOeDXRYAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7203E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484095366.14661.13451345278822540514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4d6e0820743ed6637131a8221d379b8514f6e13fb981fed9bf6baf79ec5841
Date: Sun, 22 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734840953
