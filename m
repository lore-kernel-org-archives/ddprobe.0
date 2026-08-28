Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6366F39A071
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787943634; cv=none; b=ffPe9AE6T5xEi5vqABWgIcYiY0yhIvqcpIhe8panG+laa6LJ7Ue2PsNJVEtBqGWsOSPf/dEXFWtr/ZSbDGawIlhfUL7gk0g6PZ35STly3yqYvOQloNVw0pPpGmxT2/Vw6J9gGSWWli+qfqC3piTGc9g/ymTHbkqrHxUxy/DACrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787943634; c=relaxed/simple;
	bh=e5OcpgyIyOrEo0E26qQSgNJsvDhQGv6PrGULikh9Eik=;
	h=To:Subject:From:Message-Id:Date; b=JUwxIrtvlKhNhz+ip74dkyPQhiCp5ILPi4Kl4s3hDgfwmw7fiE2zs0WeyBC/eHQCP0EO8trN97k0V8y46X/k4p6+Q1bg/2+DljthSg2OyEz6kyWQtx9PctbuDvkf3F12Yari0NsW8cPXMRGH+zGT3onFEQXDshGUf8ooQsOpT2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZVhOpIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZVhOpIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7663C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787943633;
	bh=e5OcpgyIyOrEo0E26qQSgNJsvDhQGv6PrGULikh9Eik=;
	h=To:Subject:From:Date:From;
	b=gZVhOpIKonD9QEyBWvmUIlwsfn4tfpppOp7PuNGRlIVyceynP1CCoXxwfyaAdxMyo
	 Pd1v3tPzWLv5wsrR3bhbMVXaPSIb8jX5GcM/bgvX+QwXVJbx3Mns7a2tHo1+NXKcY+
	 ckjm3VRkSzJ1U+iSsROJAOAl7Mg4tmkFzBPyu1MKoSCMtzi6Wo0Lo7I3AVhuHuVsei
	 SEQgvddgSqdBiK94NJ0ixlVLb3iepL2wsS8sdzSOUNY8I7A4bklVafo6llziCPHp02
	 gM/1tecEKIKzG7g3huN9f2aGk83Do8T1a+V1XNEOcyYCloeSgn2ubD8mRbaiMpvKOx
	 QIVj7E8u8H1sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1447C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794363375.30923.4815080791153480102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0165eff96670edb2f9fbedf1cf71d6aaa6ad16624747d8aafe3cfae699756c2b
Date: Fri, 28 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787943633
