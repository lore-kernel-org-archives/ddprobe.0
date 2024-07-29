Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1070A130A7D
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722241554; cv=none; b=AIPJbsYABZbI5hatgISHCIJHkTcPFwfNEXnjiGMAAonSjoV210/HTjvDMIsXxVhZb3Af2ociQz2aMpzCgH8KEBnNigf5cEPmMfLlCCuBpjVMPehnaFzB77gAQSa91HalV9wJMQr7YFBn/fBZ52tNHhlaSfGAr1w8J6Rwo9ZmuD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722241554; c=relaxed/simple;
	bh=SwUt4wSS0ir6YtvUIVGnK0YpcXyZIQ9+FSxaEmAIAjU=;
	h=To:Subject:From:Message-Id:Date; b=n9Al+PcJN8GuUSkdK6JYisAnZMTb6sasr/wx1CGD9viJ+F8tpp5dNn56LQ3Y+quokUFCqLXCwad2NLFGXov4PMHrkLHSuwZbU+wQ3KZMaytDFSnabc5ZfBvDKaIUiUboD9nGXWUDYpkYU167Y4d/iHqCwonANo3A9EbS7ZZb1lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptm8hUUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptm8hUUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5291C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722241553;
	bh=SwUt4wSS0ir6YtvUIVGnK0YpcXyZIQ9+FSxaEmAIAjU=;
	h=To:Subject:From:Date:From;
	b=ptm8hUUmKZ7DKicDFRZkXMgIjvq0BpPMURjDtoAj6fc/k4H0id91XPxgv0bdZHvLl
	 nw6nuqW/ZgyUW7twgaaaeduP/J8YKKsrXaRt81lsTCYwUSIAkxS2GQ5oQeqiOxT/xL
	 TYOSnHJLRro0bWoCFAfdQ9W6jaqBF0bkzX5b1yY1RKHKP9Wil+C/qKEjluMOxixcPf
	 +DoYWUnzMR6n84ljAUw9oyHk6NPyuWBqU55vVnNFY0wufSAzq4rGJgTZYDi8u+16RX
	 atdqPxryWQ30eLMq+e7sh5bSkbE3F/9Gj2sHUwbd+15juqc2V8zAv/sKSoRrKb3U23
	 FvT1VpOIPLE/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9546CC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172224155359.19904.2138108510178262252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b938279b3ccfeb43759aea4d465cd4de1e4021419fe1211d7f8508307ce49f0c
Date: Mon, 29 Jul 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722241553
