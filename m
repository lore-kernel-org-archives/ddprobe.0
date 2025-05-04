Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BC21BC3C
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746354594; cv=none; b=APhB6DYKNVNIMwa+YDjYNJQhGXBvI/QZpI6Obag4RAF0DAF3I/sU0LYB1L5m+7i7Exermh0Kkm1EZXVPqI7JfC6A8HTUpqAM59omZz8+6jN5gbJHbGNhlpymU07hg1CVhTnM3oyv71IwDv4AcRP2ve5u2h/zwBrMAHPp3vBi1Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746354594; c=relaxed/simple;
	bh=FjGc3RWfzuOQ4MN/ngouIaJ7vBRCiilOmHFcOFRpshg=;
	h=To:Subject:From:Message-Id:Date; b=NG5EQs5Tw/iQu66x5esNhtMBkGEvW38jUelEsiVApkqjRQD5PJpCbO2O4lcoXXj4EckQiDT3KxyhteAyt/jKsq9kfcCG6mX9t2E19imRnJ5PZVVIaJsYRti1994n99X9ojE1VanSzLd/PW8pTAbg+LIvUY3BA41DaMN3OuszCgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoulAC8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoulAC8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD00C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746354593;
	bh=FjGc3RWfzuOQ4MN/ngouIaJ7vBRCiilOmHFcOFRpshg=;
	h=To:Subject:From:Date:From;
	b=LoulAC8K9ZtpW64xOpNYMTFI8J5Yy/7ScN69WudYhpu/Se/bQEPSIUWxRYTefPsE0
	 7CsWZl8+OyvuhnxNXSXGp/oP0Hw9QTO0zM//aa1hlF6ZWL/GyZslrZGtAlJ5CJVLKf
	 3d9bqEWXTpV4HDIojmxAJsPWggQ3pXQNQ1t2ekm5FBeRkG1ovhYOteUQ/lMtDABtEH
	 NInE6/cLOIjYhdSqDqu+g4/XbIdizj1l8JUzcHd/5vlLBIW6MXd5YQ9NjszV2soqIx
	 0YWCByNioAdA3R6Ao81ZmDi9ecetPrgTEMdnOvuqB4dwHri5UT48GGKds1KESthwzH
	 dEJpZnYlkgvcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF22C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635459358.10530.12057321292036476867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e3bce55855a9844a5f6ec76662ee6c48724c4994d00ce8a9ada724d5fdc1b1
Date: Sun, 04 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746354593
