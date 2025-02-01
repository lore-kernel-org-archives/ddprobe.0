Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2AA10E0
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738412154; cv=none; b=FJL4MAayCJ+HDYYi6h6FNThU5EybHpaYApSMqijLOsz4ThmQFglsDD2wn0fb6mcY7BlZjAAxlK9H5VqHgExZhZAAJNGza105x8SyABTiR71485mNTqFKKRnNf5GpjDYezOMycvF1kIote2hhI2IEcJvLr2QVLLJXBcWLcnaWUBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738412154; c=relaxed/simple;
	bh=j0rYCahOAm0fLT3stXCR4sw8aKqBbDI4u2sLWQK/79E=;
	h=To:Subject:From:Message-Id:Date; b=sR+errZm1Maupb7ljPUOGyIHhXwa0vR/7RN3ypB8eX/Mk3QGlfvsI2MZS8xns5jniNvup6rQKEJ1APAfNaKal6vpf5EB99+1iHWXgdwfzlHaI92JShow+v79f2xAfYlPme+r2my3KscnSuiycyyMjkIOBgA4fUr1cWpX/87jbWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeeqVF1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeeqVF1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B534AC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738412153;
	bh=j0rYCahOAm0fLT3stXCR4sw8aKqBbDI4u2sLWQK/79E=;
	h=To:Subject:From:Date:From;
	b=BeeqVF1GOXkaQvKgQIhyaWCFALoisbjkX/CVJY41RScqhwVi3Mm/+LX7HNzL8JT8z
	 811BE6AJi1OtLRnFKVX/8sbnyU+XqZPjhmmPnLYk+6XCyTEj/SNcZiWY/ZR49NuHzk
	 Evu1nOan2MKtNwtTvHG4f+3+LMTd6QoB9hIoKuUZWjf5yYDFZoQHrov81X4wjRjn5L
	 eqPRtGdASRV/GdVZn7Fz51mWZ489LLivxYfADzuw8Ccj/BFVQP05a7jyaxRbzRCRcM
	 pxltuc9/8XQUGo+59qMl70GWrqBZ3DlNlhH53wEMa6TVMxdcU/hN2c24OFL76jOXzQ
	 HNUBxhO1wwSlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FFDC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841215361.28756.8209053898402942549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7555afafd7a66238b894f3a3f2220ca630907fcf419f25b2db9ac87796f08e
Date: Sat, 01 Feb 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738412153
