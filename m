Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2685924E4D4
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758220794; cv=none; b=opofMFTSv41q0puAGWTIlB91ulprtLvCa1LPdGfo0k9/SSB/u60bQ1lRVRqEM8glONiawStmBp5TthS2d9NJ9e4vPPfA3at9FLipFKvbbWDiTgBj52DfZ+lQsYE3XPXH4k/GW/0HrzYOIOoE1X7kwkSIZezCNxgFASVUDQNFNRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758220794; c=relaxed/simple;
	bh=ZmDcfJrBoR7V2kj/HFucUGRP+iSPXGSxFfIluva87Ok=;
	h=To:Subject:From:Message-Id:Date; b=EypRAOKx7sc3ew2U+oDc3JtFz9z6r0IKn/1oJ+6XbW08q9wodr0FafV+NrE52xulFt8jpGw+CjPL8g8PBNBft74eEBrOyXDllzGjeqDMoFrq6cplGgFo1GC2wrbNzHnwBr4CGEWQ6AG5THh9V8RqfdvwU9/UQPaZnMNf8E+a16M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITGibgRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITGibgRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E9BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758220793;
	bh=ZmDcfJrBoR7V2kj/HFucUGRP+iSPXGSxFfIluva87Ok=;
	h=To:Subject:From:Date:From;
	b=ITGibgRJQDX6roJ50z7w4boCrdHAQq8TGp5BRk+MaeMKlo8vfJc7BJqsZW36ffiim
	 XtuyQfzQzLk7Xn/3u608MDnIVdG1FdKeIaXKxchnTeIddgIiWX+R7x7P3VFIuCeW+/
	 shmOyb6wty7rxPwuwsXKHqlgZaVT57Z7mFHVuv9AZaEwQnfrpCx27JX9fcKmHUUdc8
	 o0GWVTS1uCqKJbHouLetybNNBco4cqZAjsgd9zO51JyLd1oxcskJhndmx4x6gewvfY
	 QfnybkyphYX3QhVIdpge+eK7mtNBZkqgpnk14g2VMM3oMcqmliwi177T0XTHLDLhM8
	 UxkC0tqug7CDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2CCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822079358.7508.10488147035795121079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e06831637f9f10647a47f01d057a0209e89f9cc70674fadadedffe70515068
Date: Thu, 18 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758220793
