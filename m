Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3096F1A2C3A
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746700795; cv=none; b=jE4Gwuy3x07AJxk2qqfk5pJ9hwnfo3obHxAwHF6KLwWHW4khYL42QhtCcMop2T09ZY+IQ3WloCrjzIGWwl1L2tcl1HOZZnTwjOO4NROTNFaLrr2hih0vVyO33qhU35G1SctBpR2fJ0qxX8SGYnA5wZAbp2suWjy+7gKwwN033i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746700795; c=relaxed/simple;
	bh=dQnfpO8A5wa2zIh462gNdfz2hch9BLx8G1AcHEUVy3o=;
	h=To:Subject:From:Message-Id:Date; b=n7moiQtlkIGIlqNufnQT2ey0XoKUH5+IGFTV+wbgc+Fw8AObNJ1AkOrTp9UazCX8JvSoJ70PJpZ7F+oS6RVR+zOzGf1bJtyXtX0chRGJoa/v0uOKLoSTtmuUNryx6scvswOxpZYgubWVOG6bYBX98c0o2Ho4mBid59Bi7TdUEI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AR3a9kvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AR3a9kvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746700793;
	bh=dQnfpO8A5wa2zIh462gNdfz2hch9BLx8G1AcHEUVy3o=;
	h=To:Subject:From:Date:From;
	b=AR3a9kvu2L95L01C3l/PJdSnJGzeKeHA91fm9NVz6g7CZiOC6YFn4r09oeNZkfn1v
	 48Dw9+gSkiJ25mM8cHzmYkzHmPHm+vF+buUlluFEUd4ipX68H74vmhmFYrcN9Hx8a0
	 PrkbcRJhMkeizF7DORtWrgg9sIJnjMJRx6e8/bLjXNBFE2yaGl/+lot56JtEF+tVd5
	 BKzMT2+TnSIPR0i/qfolxzOxR4kVATOUadZ61j26EAFhwfSgk0vdK8HP1oncrIRikh
	 qRRgqc9RzZHB7/6DAjZeiTxzmSBls3+86Hwk+eP+QIkAXeOTqf6II7D2IeXH9w4Xw0
	 +KRwkpWMAY3JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D1C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670079357.4321.1655443677525413734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23a25bd1cb5d5922d58dde876a60cd609019aa20dce77c84a33d62a627c7416
Date: Thu, 08 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746700793
