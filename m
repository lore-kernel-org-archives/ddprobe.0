Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F92125C81F
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756594794; cv=none; b=mMRMAHrTLbRAoss4ieCxzhmTc0XN6+i7ZlQE12N/4AH+sP3mTpMZvTSQeA8KntmMRWbQMq9bTYritLmCgLJxvxduCpmhmltfeucdxP4NmxUdrda69h6+7Q8vlHlRh1m1JOQRig5e0XNzSABI25rOPoEzCy5V6LzVBHUTRRWI+m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756594794; c=relaxed/simple;
	bh=eTszzZGc3MSoxfKl5Lj3ivog0rQj7c1dOmO40uIiEvw=;
	h=To:Subject:From:Message-Id:Date; b=f2UA5evwTv0lhCbjop1P/e5psaOxJPv9RmB5odGeJYDDgz+KHhG5O75WN/c2jQEgnqlcLa9RABG4QcYJ6qO/wPlYBnD3fI6BR/axBgPqpKD7bm37TR+hXb05Rwpl355dXdcAsHsXR6azNIibWj8A7G0AKKWuqkaSQWs7hr8npO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEILSmYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEILSmYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A665DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756594793;
	bh=eTszzZGc3MSoxfKl5Lj3ivog0rQj7c1dOmO40uIiEvw=;
	h=To:Subject:From:Date:From;
	b=IEILSmYpOlRma5y1PCYPDt6Tn5LXuEj7Sks869KCWI02R9gYmQ3HxHnl6rKX3gQvA
	 GbxHex/IxWvHG5X+epKMQ31q4l6OaVxZJ/ZBrl9lxRn32kyIoq11eLNMNlRFwWllnJ
	 ujAF47UQqi4AnCzVtCphdP1lEPiSPE4pzJvom8d2UEJpnDZg8/T9hLGjNzH913kdcN
	 9yh8w9XaR2x5JSB5t8gSZ853OA9ovSi847fxGeswKQDhFem2XoEJnWlvzpG59ayauW
	 eJiiaUs+AlJ2xEKk1OLyBpsMRhYwF2PUKHYJMcT7OoVzM+ww9uGXT/0bDTzmIzM7of
	 B3N8KMNlf+esw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178DCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659479357.13174.7764998212683956337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae5430eea0f79e887a43596a54a9acd9b5c7f15b28f7b312a26a6b08d834412
Date: Sat, 30 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756594793
