Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647DB21103
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 06:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713422963; cv=none; b=ZbLfeKQ8Raet8KbKZ7DpJsXQPOR5z6iNH06bsoNjZYaCRo5YjnezaOohwDeYFVb+UpagK+jBdrcseKGxNSRrfqEOh5FlG8dSDMzQFMeSCGOMMe6Vfu9/Nmat9C12japcx58fldikNZPGakuZ0opwzw6jl2F9e+MauHUXfpdhp6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713422963; c=relaxed/simple;
	bh=th8wxxEwEVsHt2Tofhfj9s+hYtVzxMwuaJ75YKCGxzM=;
	h=To:Subject:From:Message-Id:Date; b=MxK/iZkKLQDBpiTvhIdMiKJlXEA0P/tM0/uuPaYVySFrLRf6kCwyhXZ/PJdx3KZkd4k+z5kzPXSAiJXooT+N6da0mkt8Kg1G3ZaZJIRfaiPuw3b4UAsGp5l5ub6lzrVc5on+fBpddUHPpR7zp9DLucQMtH6/RdLibI7M76JpAwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPN9UK7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPN9UK7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3C9C3277B
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 06:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713422962;
	bh=th8wxxEwEVsHt2Tofhfj9s+hYtVzxMwuaJ75YKCGxzM=;
	h=To:Subject:From:Date:From;
	b=YPN9UK7SEbp9hEz39z59yKXdikiK/ZphOuDbGzDzoJ8vwqRy2DQ+XHNQn4DVVH2jj
	 ONcW/ev+SsbJDYUXjgoc0kKRHAOG62wRDeOPixuqYY3dbYwZRwdN6s1JNLH8gc5nbn
	 oN85UNkP8T6bOPLZKvoG8KzVSXM1j5ntH3z9j/G1CJ63SSE9jkNZx5HMUvO2AiR/Ph
	 SfUXGDkFN1D+63Iy78UfDLEX5VZG6BUerThlVJeM7TzKjPcP5h8noYF7ctT03QH3Fs
	 5w2ViLb/t4+f5TPkxoISML3edDdHW3dxTc97IR/7LL3S760arBBixLpX1WJBCokCMA
	 uBvrIMGaBK2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8529C04FFE
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 06:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171342296280.22849.6700572089053325731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c93e35bbc1d3ad393177bba6eb1ad20516c210e3bd1a1562c919ba6d793dce
Date: Thu, 18 Apr 2024 06:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713422962
