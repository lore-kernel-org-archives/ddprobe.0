Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11ED17DFFD
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727715953; cv=none; b=LVgDrKkxOujcsdoR57/z6mXl7zLhKApQ0uPw7kIuVzW4+WDAnu8uwmK1qVFGaDlBoxfhSxn1LWBYLDDZot9khGgLYgKu4WM5Us/d/1C89jSan+O4Ow/OrP8Raxt8z1KhUacyJH8BpsFVBxa6016OJDWl3dytaL9b3Xe9S0kGy50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727715953; c=relaxed/simple;
	bh=N5f6Dq86CSklc8+6Mdhel7NizQaFLAFSD1xOTJgufsc=;
	h=To:Subject:From:Message-Id:Date; b=IYjwc1sZS2uj4yV99SVafyI8ZoXFLW5jSAJjz62Yu3gnxPv6LqBsZP7mfhIU3KLImN7aa+LxUnvKPuGSUx4DXdgW6ON/jd9H6oqt819oFJ6Ly7qrZorfvwutmbLp+ox6UKgcWqmPyfXDwROvKdIF9nw8ocXlcR6T+c/lVW9n29E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQvRR8ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQvRR8ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E03EC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727715953;
	bh=N5f6Dq86CSklc8+6Mdhel7NizQaFLAFSD1xOTJgufsc=;
	h=To:Subject:From:Date:From;
	b=RQvRR8ssrCJ5h0Xmt5RuH2gorATcXSdf3Dy3ecG0vv4eSgKGyx1PsxLsjsVus2gLg
	 HeDyA2zzaChHWfb6uNFM1hfn90eKRd40DrLOlvcttBI+F6Rli51QV4+XibJAbnR8NR
	 BY6YtvUL/bfyMFU+JyTZJeFGdv2/mBLxLVp/pcf3tFjf6QoDoGPb7WDRBSU5n48BFj
	 yNoORuxVKzqL7KZDNNxv37A+cMTxQgd2xnOTEYeTdMMZuLzzj/xmTwFyhsJBlQfI8w
	 CJ//ZaNiHGIIXGE8V3e05gA8TASrJfrdIRU58nxRrJLBfEbExt7KaO7mq5ha+gAIpe
	 3xIj6eeoWZ1sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90990CE835D
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172771595358.1720.1785694249592118770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73693e73b4745b156fbb308956c929f0a056c58267b5b635a2719f3fb71c1bd
Date: Mon, 30 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727715953
