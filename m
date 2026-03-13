Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E0B383C72
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773390894; cv=none; b=aSlHkKKq0CTbcm2ASVv1oSGdSU8K0TPIsmZ0NXa3Zw7V/lRTdgCnKOrLrSiKZefKlZlkjVQ73npiYIsWEfkP2kE2XrHCwWKBEEkJGIk0ym4js+Xqf62F7ncMRjpjrdeA854ytd/L/p39/hlafXZEWgK0OoBwXC0Aa/8u2A66Gq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773390894; c=relaxed/simple;
	bh=cmyIPFLQ5DWT5oGt+0iDacWtUIQjyIYWVqR2bAw/VDY=;
	h=To:Subject:From:Message-Id:Date; b=PNoR50Bh2DVGUZnqa2r21FK6YxXUDaCk2bxDHFZ06SDOhYrSvfsnmwizj1Pnsg4ugY+OYvgaRcpygqnKFgmhR19IlMOuK5grYp9OxfX89vXAidsceHHWCy3e3QfPifttZkzx1aU4S/OVZMqQdmxADMI0D66Bs2NdR4ylvlBKs2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXBnteOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXBnteOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F01AC19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773390893;
	bh=cmyIPFLQ5DWT5oGt+0iDacWtUIQjyIYWVqR2bAw/VDY=;
	h=To:Subject:From:Date:From;
	b=QXBnteOexUCp0LVwcodWZ3Erb3oZrOFEQqckqxP/YQ9p5iWFd4TzMxpHMRxPe7iEr
	 KGdjf3b1sB5EF8QlDpzRidtAqveOmkMK4mdk/gO5ThGMR0W5nWwSuFe9qo/A58B54x
	 Q7rI6suSidxE4mV+ImruMGjH/OFn/Q5SBK/23/Ix2/UZYAX7OsLcqIsFfYIb5Xk/Ny
	 ctQ7Z5hxKIFCyJTYZmQ5NdhESeyjFOe0uKrm4vkpa2OSEJxng1/PYSijKSLbD4O5xa
	 hPEte+CFJ0EltO2DfZsDFargsjrJhOXOnlGRkqEqQhfUw6PEBhADL+TrNL0GM4zJfN
	 DnYE204tUPC2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F632106FD9A
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339089358.24566.11293133888094107920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee38fdac75565453e70531f287e40da2a476b2b9c9db429a8310d560b84d641
Date: Fri, 13 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773390893
