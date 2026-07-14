Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4743F257435
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783990714; cv=none; b=dO/YlFC6xKfwMuAMwjaojgt8kwGjp7Y9pDN5yAGckCfgcAi5KgXCfPlEAgCvtEmI/KoDDBB3eOuOUfKZJjNfPISnu8460/x8rwEvnziOWdPJeQRjoGQe+yJZqbc06UB8Y4C2PB6NLQxBqzDmbbER2Hz4L/rXjToNVd3cmslGklI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783990714; c=relaxed/simple;
	bh=qIxuIks9Vhg68coV9th2UfO1CfvH6Fd5EoJyWo8mZXg=;
	h=To:Subject:From:Message-Id:Date; b=PtJRYq+TeG8g62JtOQSEQ7meeNI2OpI4AjAIn7k4PFzFnKbttML4zTGzNc5bIv2QrZEArlg0+ph+ukRWr6HzN4ssyDPkabN7Kb77fr6FuuI3Ic2N5yyp/vHW1A9jTc2PaD8VSIK52vONNHqNDqmIPvlEgyj0YhdMgaALYHizh8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ns5WQo4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ns5WQo4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEACC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783990713;
	bh=qIxuIks9Vhg68coV9th2UfO1CfvH6Fd5EoJyWo8mZXg=;
	h=To:Subject:From:Date:From;
	b=ns5WQo4TWf/o0D1Tli7Khuk4Y3b9IgiY5QA09HJAWgLmwHvazeZLnrEqg1qCjEt6m
	 fEfKAA/XMiaWJpodLIe7ZEXWsQPqiObdJQ6TGu5pl7VSiVCmZ45xFUWSXfXB/qxiJT
	 Eatj54WoXkJEGUwlb+ud1gGQU2HkeZ9p/NshSQGAgzKaU88Mo+Nl0hPmdepXpBNpHU
	 7U0Ei2ZYPsjLCaUyesWWRdObW0c3HJqVsYWGB/2+is2YjGs/OFV7QbW6N2w2i/3suA
	 X2m3zuaMtSkVR8+B2VJ5pkydW1fW6WfjnZa8RIcFYodTIdcJtmKM5Uum423DFITpt/
	 EWfAM/n0CpK6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD932C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399071368.23280.15047436545341972726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca21e9198836e7ec1d452dbbc3b6e3d3fd8170e74f917cc11cc62a48b87770cb
Date: Tue, 14 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783990713
