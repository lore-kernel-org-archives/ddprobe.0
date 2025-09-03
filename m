Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345F11B4138
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756865995; cv=none; b=BlDANsEiOpcYmD3saWI7zBFbF0zpwf1tMsbjvFkxpPPj3rdvvzD7tdO2nNImTkTS12dSgBkGG7LXTBGIRAEbeh7pyq5+5jue3ms4OX2hiQZi4rK/KlTCExkGoNjrdPE0cD0Ojb54Hk+JQRZX+9jYuTpXO5deI5VA9pUMyDc6T3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756865995; c=relaxed/simple;
	bh=ywme0Ix2aYsFruhwqiAHlQVCxPbs1tMpjG996crQH7s=;
	h=To:Subject:From:Message-Id:Date; b=Cc4vIf5vS+4PC3V5oIVUZ4PrhtQs5qeRwaRjbzs6NOLlzkm2MzWUCdBiiXRSiKYcIea09nYqoaP5KEKgX4xZDaVVg+aCdJgOBenRgAgEHETcnTvnFRtBOhBWc+z2gdPrK/U8l3pphlgAHW3xiykZsMgvTS1dBfV9NZD3CjaUciU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfQqNkZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfQqNkZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6216C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756865993;
	bh=ywme0Ix2aYsFruhwqiAHlQVCxPbs1tMpjG996crQH7s=;
	h=To:Subject:From:Date:From;
	b=qfQqNkZJWTfUJpQxx7teJfE+UEjaF69DepKB4xy17BwwKgFyMhcNfxBSH+lE22f0t
	 JTMqMnnSrJrWUSHP1ABuVgqukTjsP/IdxD0GLLwuc6H4EvN32XzMuIaWQ9cCpqedSu
	 fG3iQgugYCNIHJYwaylmLMsfYjl6TrZ9OkAbFsizG/tooOxaf2pXqf9TMO7w4hpql1
	 rGatgf+DSjftYbQJz4F1xBlX9L8RZkamyHVkLVRxThz9Lqnx6ORK5yC/vzm76p4WtO
	 TVj93LWlX1mFCGhufo9KyDXVxl88zLi7to4mcoTg4qbqZ98t30ApQh7BbStQXB8Tic
	 wtmUCeiiP8kPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52ECA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686599357.29000.15533352908588225930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a53ca25fff0c226ad2777e1ba248625bc394e41f7f33dd8cd407c8ae0ec60fa
Date: Wed, 03 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756865993
