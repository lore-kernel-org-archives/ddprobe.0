Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288661C27
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760809794; cv=none; b=hR+1cNkox0ydh01TzLxnsmSAGnHRfYUAE76eIHr0sJgiSHIuFvL11rU0TVit2aHDAYe0OFjb4cV/oKyL9xlHa0Rnj9WOd9faTWIglUMRbzJdXkF0SFy94dF3U7aKAEyGg0STKgdRU/TuVamsg7cYiqL1rMW2dTxu1Su8cKClXBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760809794; c=relaxed/simple;
	bh=jMohzlb2B0ir4jBQls1890j+CAxT2KroRt+Q+oyli/I=;
	h=To:Subject:From:Message-Id:Date; b=X2tNzD9UqfZ7nnsxvbUpw4pFz3KExRkveyDdkrCujj6eWsgfi5T9nTYyrjkfbdJwlrqiP4l+vQCe2GIG06r7rgTS0wOWbH0wq4QEEDZT0nV2dl+vENnJGFlbtndkuT+yZEmwOXGhDcUiPdk7ACwXpqLW9cnnBtZIMEBR+s7X7iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pe7h3Cmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pe7h3Cmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F38CC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760809793;
	bh=jMohzlb2B0ir4jBQls1890j+CAxT2KroRt+Q+oyli/I=;
	h=To:Subject:From:Date:From;
	b=pe7h3Cmv+xrv3Uhxnr6r/WTiwtn/i5T9Pw4YIhztoYIQisYcNS6kU5GB5HpwfQ1UE
	 CSXYNcc3KTeEq6J47XDg3x0r18VNAtdMvYZQJGt3rCJixdKpUTAPKorox6kWTJLHG6
	 VmCvrG9K69X7n0N9ReiRxV5Asi+UZkhvQEOsSlTSYT2S3A4DVX2DLfRwt+nK1HuqCR
	 kYUGqRSrJ2vwvbbAe0Ot7nSrgG1K1W1p3RDAQ6pTapt1aq3a+DVLHyHUjmDJ26Gg/5
	 SLJuWwNtngOFmTZhwx1QmOkG+jUro52e0bb8ybTYfgE94jNzftPop1gRNw+e3RGm5O
	 MfzMFEl2UVWuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB37CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080979358.28319.13528085470373205121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0ce668ca6a40aaa9a6b81abc4f9b19349c8ec6a6115889176dfbe43a880d55
Date: Sat, 18 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760809793
