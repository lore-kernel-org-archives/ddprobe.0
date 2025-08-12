Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3BE2D3EEB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754957994; cv=none; b=k+VIryjzI6EWc7ZLbxYVXRRiFP2Ev/S2Hzf8Ko/Y4AZg+RBjXXA21+G2et53Q1lp8X8D25QhNQJ5kW3ZG0bFaoZPjFefkNCY+I56ks9uEHAWzusvAAktdPNMLau5Empfz7vprdNfQcZWgo/biTZTtpL/xGLBY0FGxRxuJqFUIFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754957994; c=relaxed/simple;
	bh=jJ6J+sCY2/YUzOz2ItRHAmV0iX06FZ43aXf/i1wOY2I=;
	h=To:Subject:From:Message-Id:Date; b=WUD1/prLK9/WeSsK5BxEIgNo3zC2df52vqzE0c7IXxa8CcMmPWUOEuqpn5F1FQO9+AXV/8eFEN6x3bmTC2/18UMJGILDOTt4xH2B+f7Q9bGQbpLeYzd9H1Hb9y2bbIF4Aodo1DvWLSY0oShpGiNRlEBjZ1rvcx3lnicIZ3cMtAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVQRkoAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVQRkoAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB29C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754957993;
	bh=jJ6J+sCY2/YUzOz2ItRHAmV0iX06FZ43aXf/i1wOY2I=;
	h=To:Subject:From:Date:From;
	b=MVQRkoAUtREYyDnWZA4rFVJ94wuNk/67Hdnlm0JubQ3YjbbUkQcquBTFJhmjCqUKT
	 nTDxPRexn5AKeg4tmjhLKsWIVoNYCuyzgaqlFm8afnXOg5AyUwWF85BVALhu6rq+8d
	 +lCYYnEJXeCEYqqo0ohGuvEjOs/klzf8qVtY329Ld32Q20edmlpGPiotdPCFxmA+ax
	 kZQeIzqrYDRwO7iwlRL+e3WN8iIO/rAU3+I7hCLQ/p6z2IeUjqOBvZjSilntlsBmQP
	 WooOaxT56NbGypFW/VyTT2YC7FOYE5QATvENpUvh9clUyLvpnJfq312g5egaR0F51j
	 xFlFTcFR4owMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE26CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495799357.26080.3968757496003217402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3c94377d5217ba075e66d1c1121e456927786c6cda34cb6c2b4c2771b02aa5
Date: Tue, 12 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754957993
