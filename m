Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320713BCD01
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784578714; cv=none; b=S7q+BDW69uBK3j4Y9IpgpNZymE/1EUY1S4pwDxamLKvAuKiPFdQX8FqMTXnzFL/6t8w2Y03k4IDRGHjhN1I94zYakUCfQfq1Z/XF9XcOWaBXkGjtIvum7cMRev+O6S86Ft40/fLOvWPoLzxkyzGfr8x/QHrHn+gfj3MfhjHAGm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784578714; c=relaxed/simple;
	bh=teeQtDlpwtkbg0G66XfWS0h1FQ/bJy6X8l0cpRPg+0g=;
	h=To:Subject:From:Message-Id:Date; b=NqJNa2KehiahLnDBL5TwpmPZioQ3ENoKbPtzyO6t8Mawh85xawOPl0h0W3P3XKD3o57ciinnEXW+CcRllhPaeGHPNPYZQs5AiuQAX0Tpb2WZiIz1cppfp2oBvnGHHSWXsfLR4pMsXU8UEnx9/HkjvDcTNlKJNZ7Xjc4lbTpDIOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfUpA82V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfUpA82V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2808C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784578713;
	bh=teeQtDlpwtkbg0G66XfWS0h1FQ/bJy6X8l0cpRPg+0g=;
	h=To:Subject:From:Date:From;
	b=pfUpA82VDMlZZMDcnW/1kGGFJJvUn0TJ0i+7GUPpxx6Uth+ZY7yN1ct6xD6prWQjA
	 BcYfkn8hzCPDdmpIBhZIyboiiiEmEBE9CeH2M2seppuJwYaFpo+ERhZYnvDeE75sFu
	 LbIC38lVDmqq6DbWEG0tr6OA/rhVlwbe1wLyhWKtROFGhz9zLr0Rvfxe4XmkPhztDE
	 xx75CRTBHmF4rjHJNNed+Zb3cnRKUDU7FPw+IDEz8tMKflYUShpUFgfp3HSGlRV7dm
	 /Dk+LDAmvzMpygNbvA3neYTdbVSvS0CTuV6QwGbzFEwoZGWGbT3W8XhGY9vaeKo9Vn
	 VNx/RikDmSttA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC23AC44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457871369.21418.7423681290770378423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee4558db8ff8ce04f7f88bd4d1d9c1d04a3c1c90ee1646b5d55c859215b82b8
Date: Mon, 20 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784578713
