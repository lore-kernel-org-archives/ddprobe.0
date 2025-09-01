Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2945525FA3B
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756758595; cv=none; b=TelTg/sEU+H/slr07QEl4piplJg58lh8k+66Xe59+0OEqg9m/rx41LJE1xTYM9nFtOGZWqhNkxQxZqA7iIfrJQjsfy7iT+VGRVv3GarVuPpBwEmysriIQrHu+8nvjVc+zah3Zow184DxGNsRc0LKRlo972Cio+WOIRQJgnmQNe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756758595; c=relaxed/simple;
	bh=kA8GOxde8qJly1Rkr2Y5D9L2tGZdvvdgzsv5NAkgRu0=;
	h=To:Subject:From:Message-Id:Date; b=jjXObtEAYgkCxpS4l+nXNRpcNQTbnBdYezUK2z2CSk4UfBOYza5DItJFxJrGkUH4+b+6dAolOBAlRXdwGZsZLzsyQh4jxQHMTaj3+/FeZ0RtxMuVE1rtzNurNxMazsB4hu437GPUKgqH1uXWA0A3WQVytx4CWWGrdUfDX28YpJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcKzS7PV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcKzS7PV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10EDC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756758593;
	bh=kA8GOxde8qJly1Rkr2Y5D9L2tGZdvvdgzsv5NAkgRu0=;
	h=To:Subject:From:Date:From;
	b=EcKzS7PV2zb8XpX1fSt1N5cBU8+WM9TWGBE4HcXCH2d5D6Q8Sgkon+j4TzVq2ys/r
	 6fviMS/hvyzVmVSZ9R8IfVBxRcN4JaLh9/0YbMHB0gkZeMoagQcCl82FM3P/4j7glJ
	 x2DhTdvAFLuhpCFUOks2z2hR4zChiw/9GvOanRJlfe3f6WuwCTktn6LggbNL0GHi8l
	 pli/10jtIEozN/O21ZMvBrjcmIgY5khNuufqDeqv8F0d6PWv97lyvsIbLWhul1kGjn
	 kPb/3lQeR0e7pDu9Bbtd68FnI80SaTgdBsfNtShSYqq9vMQl0JLj9duXcrgCA5OypM
	 vc4jO8B5zaDiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC21CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675859358.20187.13898919679571235193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00512d1d5a5f32318fca4f0f385fdf70a4554b09ca777bd98a4d0a479682ab7
Date: Mon, 01 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756758593
