Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074951400C
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760162994; cv=none; b=So2Ja3CRsDdwbB8DOvr1VqdZZcTKbS09tc85b+FdZItILv9q2LVbrM21wdCxzyGfwhFQYu+BT5i+zeDB0dUyERIkf2cWqjaBw7ISmUP8Y/wDcDNcIOZhdni02ikHcWD5Z8JM69fAO0uWoEyj4VlgSlIsShC4xYjyPk9Ka8mXWuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760162994; c=relaxed/simple;
	bh=5qQS3Uw+Kpe8yXI+UmlfxahP0R6h9BljuQeP8XH6SzA=;
	h=To:Subject:From:Message-Id:Date; b=rwND8zUsn57Ae32w6ru/3dcKoDLQob5v/BqavJ06fCd1k0bK8K/lp5qztYmBb0dAov16FxjQtrkNlUoSRcx1LkyUo6fk6Xz+xC6MD/jxzjtHNroEAVAj7fFHnm1NZ7htd2hQ8f3WaOSvhQtk9hOLRApucwDWbpk9eiNAS8yhwRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRCmhylS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRCmhylS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52E6C4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760162993;
	bh=5qQS3Uw+Kpe8yXI+UmlfxahP0R6h9BljuQeP8XH6SzA=;
	h=To:Subject:From:Date:From;
	b=vRCmhylS9IafNC+if3xMEINlLh9mqcKOgeilLOO/KImMGcXWn/huqDqZdv854OGKL
	 pXuSYsv4d6KfrO1hKNUdIKV4uwOakNtafrY3ycLGF0T83pTk9nKsXTkWZtS34hvX+7
	 GE+cKA91SXdmxlNYUQGqrEKGLte5oyFvy0fq5udRNduLQDAhIw3qx176f+i4U0vyn1
	 0e7i0PBNlmbdIRtUmDF+5uotouPDQWSlsY02u50HGEheWgU0eqM3CoePAxXcZjgom2
	 PWaubfqw6sm9pdKy2l9hRd6Ect7YTkI8RCHvMQJXo5AjT+c7tbjinARKVC8WdHrwEE
	 USTeuHhK6/HLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB0CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016299357.12336.17136142440626531335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a789589108ef32eedf0b37d4b331a547b063e03bb044ec743c221e9883c43f
Date: Sat, 11 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760162993
