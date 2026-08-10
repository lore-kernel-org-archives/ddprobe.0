Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519A243B484
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786389034; cv=none; b=Gv/t2N54evD5+Q6ZhPAFYEiTOWsUmlOp1A5pPcVeHnyAeLc+/0AS78pVLVtt15GrLrphbtj4QEqABhxkreRHBk13JF2hAv3UqZcPGbik1khkAuuVJ9k1fm/nvoqQB7KQITRYl+sXsQ2g/kbj/2qNQgFUYcZnxu89EBFt0v9xfgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786389034; c=relaxed/simple;
	bh=ELUR0myrEGVum4mPrnqKwWdXD+EQmEVMD8wVr0R+/zM=;
	h=To:Subject:From:Message-Id:Date; b=pFDrvRQUzACS2jRGVOCAkn5pPdc5XqJPp8GiKkgYWvt7W6QWdpkVEU7JacExJAWKmWHWNmrOVZrU69iqQIFucBLUDGHwacYmTbzKhIkTpwoyNzZMhZxUy7X0hFGR5lC74vdxjG5TdHYWVybHr6YRKQkEbxd4GcIYfYWD/nSot2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+ewHe9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+ewHe9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C01C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786389033;
	bh=ELUR0myrEGVum4mPrnqKwWdXD+EQmEVMD8wVr0R+/zM=;
	h=To:Subject:From:Date:From;
	b=H+ewHe9fc+9YiBBbimNGkNa+cB7mcehTLUIW6AaA43odoZld/WxZlrTjmjR69CJNQ
	 dI9kU/jdHHg87m2xsN4j1knvqaGrQHjTOVRcoTKuI0OA3/HwBxbYx55DqevxNlPcRw
	 /GQGOpDn2JUSKfkVPr80hh1GJE6fMgwrZmjLR2hLjakV4l0Mc4ELBinBQA0ATtobvD
	 NyepLiWR8RBMXIoYQjqr1Z2RE2KwREAu/kTeDItJyuJl+oTzg4wZE/VsfQhfvDO1Jl
	 C0VmWSFK7WAjGDj3zzynZoNZrcaPMOkS8HaptKfmmQ2joZzckCiafbXwBi7m9axy+m
	 gQLVCeKwbM5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6986C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638903373.13532.17702500310649371330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23192b83d4e2a683e4684171e3d2982fb6c9fc6bfb0837ab4b4a3be4476f24c
Date: Mon, 10 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786389033
