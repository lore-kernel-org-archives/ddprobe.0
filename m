Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F643597B
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777094854; cv=none; b=nfFJ1jBRirVPEgHd+I773TIZ1atjHZeR3FZV64762oX9ncQKNqvo2tsCW+6M5ktNBB9z76ogHf3W8vSDSd04j7SAEUb3+DGCLqmo7WVlsYtCurG2tweaZ9ubOMSG/1NneI8BsnPftj+Ll85R7lVh9PbydEwqeHK1nUy0vq9XKV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777094854; c=relaxed/simple;
	bh=5zWaPV5JUh/S9HGUijWdOio0Bn+zm327hvSImSXxGa0=;
	h=To:Subject:From:Message-Id:Date; b=TaPyUVEwcV2707qfxvOLUV/kXtKdXc+ji9jiHs+kolEOuzuVcRlutLKcFXOmup48JzV+ioEkR1Lz51J19ruKFlHSzUU/5f2i5IUWm0x/zAg3NnjD2pbMzfc+B34GExUXffZCNPh2TntxQ+IhwK6gUnWmwSJp3fX2kUF2m0r9Qu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVqUpCyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVqUpCyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CA1C2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777094853;
	bh=5zWaPV5JUh/S9HGUijWdOio0Bn+zm327hvSImSXxGa0=;
	h=To:Subject:From:Date:From;
	b=qVqUpCyW2mppdm/HfafqXLttN2qv9oGf3YIUqbvj6P53STLOvNSqpE4pJxB95ic0g
	 QF0RApfsVPmBhO7+qWl9y+J8kVayARFNSHM6cwBrcPyENLNI/2ZQMg+Ig8yhUm6XI/
	 rBIEDTm0jDXiyq9iayguvoNi6y/1fQTb62q2D+l35bn2OmjCEn8EG4E4qZBFavRku4
	 /hgsqF3DQqdQ9tvvalELgEKvAh1tg3U8kgmRAMQciqriuxzh9vRFuIomoZKZZdAnoE
	 s47jpPChgor8skOl89ltZVuGLIyXj89noBVfxsk1JatlkaeYewhMUsjRLB5MAEwVQC
	 hua3K995H3bMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0C0FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709485368.30101.11505105669946258824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08f5acbe5a24acc10a66fc1368228aefde2c7cafff166d5c37ba4237cd09fd5
Date: Sat, 25 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777094853
