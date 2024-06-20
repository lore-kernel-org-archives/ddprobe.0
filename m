Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8641AB91B
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718890223; cv=none; b=KgAXkwVFyTXWI5c5MyZy8d14LW3dnnndqZNbuA/PbfklmK1NTBFMsN3bhUg/yYjbQk5SBo4eZqN0iqezHKaooDOyDIFzdqnwPPOQtzoihFacON2h1Bqh6K4eHxtoA7IQdGbKa6yChQWOjDbmRoK39bpIPE5Pkzu+dLV5QWILZvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718890223; c=relaxed/simple;
	bh=Yd3w0XFsJyXwFCHIxls5d7+ewmtU99qgrwe2iJ1mqKM=;
	h=To:Subject:From:Message-Id:Date; b=lxyA0JZwbTm9QNNteRJrGDDQ7FreyJ4uzSFT+3AnMnf3y6f01paHl5VuZru2YZQgAhc/GmimO/W5SR+tBZSwzxc1Lzta0g/hqPDKabc9OC0hru0tLg4hRU0Nli6KU6wr6ecqsplJRRUlzl24+Y2DaoXtJxv6VtDqjvjqrjfzd8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJloSQ8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJloSQ8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5677C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718890222;
	bh=Yd3w0XFsJyXwFCHIxls5d7+ewmtU99qgrwe2iJ1mqKM=;
	h=To:Subject:From:Date:From;
	b=VJloSQ8da6+u/8oCPu49UsyyQnnRgi7Kloqb8hAy/zoXCwPr4qEwvXZ2NFfSL5p5S
	 0p7dck5Do+/DTC7WGFepsYZ6ImNMRbwVZMnnz2HxT7beVOvZgx/7/8662q0nGJwysP
	 nCpRHgNCG/0McykQaXa/Y/2t+/hq6k9Dz4Xx7rd/ZdI4T2/5b21Hwoe5u/yQg1TLlS
	 zXBNJkAXpJ9gfUI/rswn4ZosSBTWk5o4MF62gOjvBw72meq5bujPUei3R4re6QkC+g
	 zraWjDCkqLlLbrnr0I7pdjM+Eq/tC7GSJh71IZlQ3Rct2FOVCbEEYTV5jDKGurJTAI
	 V2RUu+QcX3eJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94E8C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889022280.8783.3814127143268631827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6b291c8cba2051061779f0f1b4a97e5525873942aee5bde04cf471e10a9de8
Date: Thu, 20 Jun 2024 13:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718890222
