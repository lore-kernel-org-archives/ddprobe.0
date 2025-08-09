Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B67C1B423B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754767194; cv=none; b=ffOdvEEzRY2K6BRnCHcTQHXLeHw9KSTdHcOAwxw8cxfmcfQr8MauXyunvXFNlz21FbG7WhlbzIRWPJcv4To6XJEsXcUxl/beuK99x4/URMOoRuAEEdjDacthe2ujYk3+FgWhJFIlmjrXFF2TFr0RpB2XrPSK9hvqZTe+q778LZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754767194; c=relaxed/simple;
	bh=QoMHZzSx4vgMTx7MLFydcd7AfWBjPr1z185Z6bxBXK0=;
	h=To:Subject:From:Message-Id:Date; b=d57lZPapVFxxbNgKYgbQOJOz9gGVu4oLGoOYbXLFwWyZVBp+C9xVD/nsTRe6dANmf1SDcRNJz7tqHuP5z3FLNLrRBuPvPOPRPMj/h3rGqsPls07/Mh4SlicjNaVersm+CaX2oq5siegT12+/9071eu4oweo2iA2Us7KBBtA8W5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BC3S3SVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BC3S3SVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ED7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754767193;
	bh=QoMHZzSx4vgMTx7MLFydcd7AfWBjPr1z185Z6bxBXK0=;
	h=To:Subject:From:Date:From;
	b=BC3S3SVD7kNRaZUjp9AQTmgTnLJNAl7hJdw24f5ViNx1g8nNd1udY8jw2K970rh9o
	 l+piH25hzxA7xH8XRYxFs8J8ScknUU77DDFmM0CppWkYA4Yq9uXu3jhQZRAW23jVcV
	 yzEVCAXfcSc3qHx3zgwMdIPI0CBsFVtHzEZUI0XNddOk8NufPGYahbZ1AMEw0x6tfW
	 gu5UzEt0W6N5JZ0AB9ZghGqpr5Y8Gdie2cwyqVRtpy0zrU4k7XiPvFW+ZQOk10LhmV
	 mEgzgydPLRzEeYNonGAag7r9/Erl4x0Enx1pMByAom5w3W7mk2Kl4uVEE/OimkU82u
	 rtdjI7bcDElcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9436AC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476719357.6122.1327312699127069211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: facde9e319d8a788f32e5b70a1543b959c7ee1ba27f472f417888e9dc2a79d55
Date: Sat, 09 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754767193
