Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2939B42AA6
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765594374; cv=none; b=jRCLJYxNS+g+2+F4gpPgBG8yJ6YZ6/fpme7i6YM0heHBYgH/dfDJjdVomN+PxA9V9OT6g3/D/YeYBQykeul7TLiJCqiqjTCLE2ExPm56pAlyhN0yTBcNAq22tJFxGdKupawE0V10WRIjlATFFEoLxfomSMzzPa25xjj8QGeMDrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765594374; c=relaxed/simple;
	bh=BCnaki7W0Rn+LDkemR0L8ubiazilg0qMhHexeHXns6E=;
	h=To:Subject:From:Message-Id:Date; b=qlIy2EuykS2lSrGczDpanqe4EAIrWnURQLNq8T7Zq1/AKMkBU2QXv6wqnwotcg26nVwfh6BjJwP5/PsoIcUNK4bamJzcvJqQwu7f5PBqL/iqw4/1IBM2Qg3jvfzY8X2x8JCGFqyySeuPUHWRy/4aTCQO6c38gWQDztyZB1+HTKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uk56tGh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uk56tGh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A662EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765594373;
	bh=BCnaki7W0Rn+LDkemR0L8ubiazilg0qMhHexeHXns6E=;
	h=To:Subject:From:Date:From;
	b=Uk56tGh5lLdPc5K98jRTboBvN2lBl1B91pRMwwJO/dVlqJ5n01bfpPBLxVm98mNdq
	 1TRwnxhybyOIPvudI9xlb55pz8Vq0+5R7z5NIP2/4xdzEXJA4n4sK+jK61FYCVY0rc
	 WJaLTg4TjrJld21h+p+K4U+20Zf3EjwzOkfPb3vZjVrU+Gmg+bsswTTwFOnn1pg7fs
	 +vClm7rpAY9Bom2Py30/tkosyTOy29zh914drlVBJQXFRWn2S0rkChnB+uM18WNuFn
	 /nXSv3TAqDFYaJ6H/K0j5YrEuaW5/EPjEGAln5vnnqBLK2Pex584a5GJW+GqwIwFPq
	 AbkEDmci2bTbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310ED59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559437358.8537.18433476430622003962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce3c0607472f1ec49ac6140c32253297637d102f92477421b5ee143891e5ace
Date: Sat, 13 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765594373
