Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EED43B19BC
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788501034; cv=none; b=s2Drzp4jWEpqk1gyRb7DU7yKaAHE3Dz3Z5Zlhi5MQmC3oHwzAgYbh/XCGFX0NLmaBPBtX6Vm7W9QIiWBcSd/OuISZQjrMN6hDQ0k4EPEYcwvB++1M6R/sDizssvJK5i6gPhGVFW62C2mfZWlmepO3c7KRzDEmVaIH6D9Q7wzJt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788501034; c=relaxed/simple;
	bh=uz6kLiX0BPoz8y22p96oO0WdDD/Qnhz7IFO51J2pZHo=;
	h=To:Subject:From:Message-Id:Date; b=dUFwRy0FzDip5rz91xECwmRC+N2PeAmu3GAtyU3enlEKTePw8UMAl4sFy6tD2iHUP0JiuSprmBo8kw3hPAO9o45+x/Qa2cfE08OhsmLXksjNRWC81tNdm09CoIJzoJrP4jRLcXzlvxRnlxr1XilMcw/+PCBCWHvyJk8rgWS/30c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIoIEFXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIoIEFXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AF0C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788501033;
	bh=uz6kLiX0BPoz8y22p96oO0WdDD/Qnhz7IFO51J2pZHo=;
	h=To:Subject:From:Date:From;
	b=GIoIEFXIYHlq26HFl+D+NJw/QTysweIPvKNAUcW8HfzpsPJ03Khk3zYojIxtr+XV0
	 Ba6DW2bV3onXMRA7xy9aqmm1RNm8jb8Ca1yza2mn3wkGcrAFc7N5C5KUTEZRDvznO+
	 USzEKcM0R6nKDsMSra3jKXLktalokBWZBk1M+B/aAm8IGWIpiEqgj2aUkXa8roPU32
	 Ikii9hoAKN3jzHsUFAeDQ93weLPqycpIPK6mTKETWN+fovwULntjGFMdU63lSH+JEm
	 IYF/+1NqUkNOzorX6fuWTvAFEQhr/lIx6cERgJOGUBBQXGJulIVPjdpNxkutJh5o3r
	 tLF1VelgINx9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF300C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850103370.18572.3006666374421159511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e472725802a08ec4646071236e4244041ae2db58860b0845d0cfb6521974d883
Date: Fri, 04 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788501033
