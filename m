Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F56118A93C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752201594; cv=none; b=CVJltSgGRVhVH4OxUqJMVO8UEqqyPb2uozYFc23lzWEakp6kC/wvH1UN/dDCqWqSCBviejRE4NfxKQbEUlts71q8sgDPyk5egulK7iVG9LAqTCL1aEafSedQPYgxlS1DPXTzdz78Soe7t8hth9sXIE41zUZzWLG8LdgBJ+xX0cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752201594; c=relaxed/simple;
	bh=DOGyzRMkqCt7rqcVRqFRFnaqZo0x0i8P+EE8wpHdB88=;
	h=To:Subject:From:Message-Id:Date; b=OD1esO7ACwdHvzxAUn09PbvbpqzQtI2622fZoQYUp6e8xsfs/MhcPEunoyMWla4EIW5g9RO8uppoIB3zjmW+MC4k6kPiMUBfoHxrgCaQ50j25PN3IsD+8J7wzGxL9xGzqcapxPFZLKtthBsq3XZumNo0I+zuseM+HjjIhJjZKV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKJ85908; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKJ85908"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD0CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752201593;
	bh=DOGyzRMkqCt7rqcVRqFRFnaqZo0x0i8P+EE8wpHdB88=;
	h=To:Subject:From:Date:From;
	b=lKJ85908zpmDDro7zy57RGVRJdKL4jcKrfP4bDfwjF2qnoj6BvX/0+L9SG0y1ZuYj
	 UXoKSXJsQiCnaxOtHeYiKs6Inl5FsQ0RzgxztxfKSiJUu5GTNQ8xJC2crEUAFm2O0d
	 qKOE1x9lZSX5Fjfubz52XwbUTEwvfSXwYIG8KpfD1hbd2gz8T/npl3TQvJJUkBfYoG
	 xEJLIa5JVZEq7oL6UY6/EzW+lyOyjAJGLVrLxBoxZkxEoDTH957lvr8y2oDVzL21LR
	 NLSLcdTQM8B5vFGlypqB2TdUzuw+tfrdrjY0NLjfmHjzkwFMxtSK2QucZjD6MCid8+
	 RfkaFX0dvyg2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E71EC83F17
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220159357.22028.12131740933255043251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98906fea683c22e7c2312c3b5b642d5c3bffa86202d8119e5f4fd7a89bdc6d65
Date: Fri, 11 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752201593
