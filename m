Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF152E62A5
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756120793; cv=none; b=iT9wEKdRGrZornXKq4IrEgm4b/c52pj3Y2AfT3fmaRoDeSr8fDzHIOseT9P0Xvr9P3TcGCpSk1WB8nO533ahNUQjAJa1R614PAgrqhnS02m70TfOQ8cl9bsfiyRSZlt2kAtnyFPeXz05bNc+2QAazrHRPyBVBbkoAhpao5EOiE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756120793; c=relaxed/simple;
	bh=ox+qi/ZTzclE+d820N5Sm0vlAMm/+GhkXSGtqd5VNTg=;
	h=To:Subject:From:Message-Id:Date; b=K0+74FLQHh5dy63DZFsX5LYp93k9qcd3t1ir21fSMczmo+EOR+9Yg4e9TuI5rXRiCL87PrSJRGJM08Ns6lvOROSiDDupieGoM/0hI7kWm8gaU/ZAW3up18w4+bRNZlP7PtjR1Fygb2yg8emWbU2khmMBrzAU8Fg7Q/S5JazwYgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpT5oT3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpT5oT3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A171CC116B1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756120793;
	bh=ox+qi/ZTzclE+d820N5Sm0vlAMm/+GhkXSGtqd5VNTg=;
	h=To:Subject:From:Date:From;
	b=MpT5oT3GVD2aX1wyBXmmtOGVAJ0J8olh9GIjeoG7f+2zh9Wqvw3ZJs0I8HUPzLDMl
	 tX0wIfqm7j7yMXL9QD5xETVxkKfgH6X67tha3O7azLVlsEnTIfJOkDyPJPHEqDxoeb
	 iVdmtx5kSdUGFZLPm0wL6BmoWQVIvKERI2w68YroAwPps1HEYbFOnqtpNOVGspn6YK
	 palrkGnGW3vHvdt0hHIuNLaUZ32bHdm6uLb5OgLscDLlaVQhYxspda4TfN0qHL323X
	 xOPL7HWHrJun/jS42oVcQq7autpFP+fY1RGx+TOVfxj2MUc2uh04jTodDZbpO2rNxs
	 11yg+t9BAx8xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B5CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612079358.28186.1502570427083735341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98c5f6b79b2615b82a1685a0954890c7d578954120fcaa3b181b7def031a5f2
Date: Mon, 25 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756120793
