Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD6F2FF64F
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764817373; cv=none; b=BSD+Ja+jbWYkNNRiYw2+G2i2K2r6PnaNCDjF6wlJdCY0vG0s6mUhpejyiNobk1sBsLYUD+FQvF0hXDm0mqMCXAhCu6iYrcYY+8FlAIq6Fz3FTrzmZTA04zyXG+Fcsg12r1C4n7p5o7XIDt9VZJxDjVdoWrI7Jw2Sd2wQ7C0xYT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764817373; c=relaxed/simple;
	bh=eJpEGAd/xr7938NTQN/vHSCRsav8cny1YsjgoNJOdbw=;
	h=To:Subject:From:Message-Id:Date; b=isNqt1gOyMoSAlqSavJQOTMZ0Oa7m2ZvegrSxhmMNZ/GOznlSyhDuGMIlvD95lzrLh9UsbFBoWVQh7oPO4HU0gq6WHqUv7F2egrnuCN6nvmS8cY2KqItTgVyVV399gpwSVUa0I4Q3R76hWGVEGu4aY+RMOFkkxqGDFJIy+cT6LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5UnNVxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5UnNVxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F89C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764817373;
	bh=eJpEGAd/xr7938NTQN/vHSCRsav8cny1YsjgoNJOdbw=;
	h=To:Subject:From:Date:From;
	b=T5UnNVxGPz/kp8Kh/7J84j71Rm48OyoHDKyyTpY8tP3CZRPS4JsUKre8EuMI/JBFg
	 8PT/Lxkbk3CmHGNrmftRSCD9DYlx+o3VTv4Fh+jbXK14Ra4F2ShDrufDZx3EnAm8lY
	 /C1TmkFbMcs1lEeA7xECR2ixhvPVDceD4Sow94GeKE9ST7xOagfKuqt4LLpkMXGA5z
	 b2QwBnkDYPmyzgaGpQKUivoPZsNziGkysBOfNvwJPjOEwT6A3EBFXlvlNU5wTxIJsw
	 u1yDqVNbhl/mSVAF9alzSLWFb6ojTfFZAIPYhwuWAJnpXVindRjqynxn/j8nS5GPln
	 LqRHZ0i/G3NHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E61D1CDC1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481737358.18935.3450707883861944158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2b4874b0f9ab169d28d055d0cc7c8e0090e22edb17987ac8c88fdaaf6eebe0
Date: Thu, 04 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764817373
