Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024AE29C325
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767969234; cv=none; b=sipgIwgQIJwz6uiPB80j4N0rb4pYGPjT9rxATtom4YanncIm3v10Q/ksjAP5RbigfMlWXEQjm3xe6LyV3qXeB0DTXLmoEsgwsDjyaYy6D6blUuQVsQvUqCzy8DK0YwMWAMTApa22i1gGOSAKOvOON8/QNEAkElzuuM6YYCpDrLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767969234; c=relaxed/simple;
	bh=Dti4CmnNzI633C/di+CY+GJgLuiHz5JywtrFA99JTg4=;
	h=To:Subject:From:Message-Id:Date; b=XY89NqGXZ8NcisdYdtN5Qlv7OCDYfm8HwtBaSz7E5MJ6zixs6Au6cM2PLTDXrH7HB5vfDACt3jKol79L9Y1ItZLS+SFpGZGNhT3wf0NSPQElWq8uCXhKl6FrVLnupc8g4MxWxwe7ZrTXSFWZWujw9EuY+5EUBg17r+NPP+kc3VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEGx8jjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEGx8jjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D339C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767969233;
	bh=Dti4CmnNzI633C/di+CY+GJgLuiHz5JywtrFA99JTg4=;
	h=To:Subject:From:Date:From;
	b=OEGx8jjK81/cexIgm16TdnOvnvOGCNC5fFni3bTHDYKqA0A8Egw7TF4uBPhkDnVKJ
	 0KdfDl/hfeM32zNBvtpF7/xKYPCESQVkhYU+TafweAxfuRxEQiOYi7v+kZ6G/H9v2Z
	 46Y1ENjX3lB62vybUeJtKtIF/+E2ChXYn9372VGyKKwHC0HX+IInWmSD0WWnngeFOF
	 S/Xc/f0rIQcaYsoqsXWKqvSH+0ngdVSclNKjG6+yCp8dKE17SyvemDs54KcwXlzOJE
	 5bOcgTzugPql/yor+ELGgE3UxjDTWsdGlN/+UbnIYz6XsqND3DaznJsX5GdbTMBvbA
	 TFm8l+2XIGTEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA88D1A63C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796923358.25909.4932616853321107733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a7471ba3d1d4078a27ae5902a9343e1d511b2b7db5f42859eb78b15ce268a2
Date: Fri, 09 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767969233
