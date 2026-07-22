Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A10E4399E0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784743774; cv=none; b=qKxWj2Nd7IP2ZHSjPAfWsUlcOADQcl+tkfHVx2T4N7rVwjgbtxw6qdB+CRHBYXWUWOL0WUYccBocIe0tuz3Kd4YfoFo9jHvXxp09bjc1GPAxPiI3Eg2I2KC7lUrznDKP9sWmE/A+6slGbaSXWrPxxk9U+J3sbRYXRuQnsMAJEjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784743774; c=relaxed/simple;
	bh=bUUjbiaG8j8rNQ0RGH0Vj87R2zcEEQ023WySGU07DxA=;
	h=To:Subject:From:Message-Id:Date; b=pwZsfxyf0fQu2t1KiW0LQqbZkZ6YqAfmXcxsq92YVCPwcZLh9nwgzzIsXiXR/qcDgUHXXy4cREyN8/1euGTRHy9MMPhBFHrj7b99et+vb0A0Hrme9INvhSrw4vG/toN3ZQiJQ+BftszgawjMeCR3n5sdsAt1enMsGr7UMQO8mco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbIvs6fx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbIvs6fx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC055C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784743773;
	bh=bUUjbiaG8j8rNQ0RGH0Vj87R2zcEEQ023WySGU07DxA=;
	h=To:Subject:From:Date:From;
	b=lbIvs6fxIP9ReK/aTvQ8S1rmTvg6klu+d97jtR7Klm7qN8vk8Ko41Y1lS4HkEN1Rg
	 HNXPUGFzMjWiFg0QfIrZs65EVIUAtzPzsmf22K0BCp/zdN+wCLTZLCtDs29O2GH3xJ
	 GmjWj4i0HX3fKk3hse+lcHCCPx0gh1Xz3g4ZyoeQ366NDLyqgmJMAsat5YVFkcuQ03
	 RXVo0Q6USu1JncRJZ3g/BY47gFEOrCnoFmPujsaV0U57efPi0vCb0sNVRKxB2jlqtq
	 LrNx4uzPWhGeqEy3GcTIcoCdLd0Rel9J+G9VQu2IJFX10YMtTZLrEvbBVQDAAEMbDP
	 UoFqvJwsSdSyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B770EC4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474377371.11641.7386466628440626248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4affae4c3ab59f6333b19780e59392fca4c0a73e792dcca0d5bc033c6659d972
Date: Wed, 22 Jul 2026 18:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784743773
