Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5591936073E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781907994; cv=none; b=K8NVjeDoqTI+RnqeDVGpFCiS9iOzkXQpLV9UAfefP3wdL6lOFZJLzrtj1E3eB9CHM78/RqER+f7DwJtyDSoVDZftVPGvDMHeLLGphA4PBxxkpk4Y8Djg3Ku62hN3xyhm28nzRAjA02Ke0k8geIXJrHkCNosMq4srf5XjBL+HRDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781907994; c=relaxed/simple;
	bh=YqsUY4cSuqqbCsQwsJEyUD5yODCg4wfInZIFkGpXt6k=;
	h=To:Subject:From:Message-Id:Date; b=p/bMULMycKb8xSiE60MqC1L2WosLeIiQDLHufWJj6NPLzfS4Muh+dg6ohi3QOpS8A1k1tlKRsPQYpjflsP9sFRI1extkfEWPq/rn7dhuw4d7rwqL6LT4hvuPrPuV5V49BnWa3kFhHAiZbQX7qqyNknrhYOAzsHeraD3dWUCUN3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otwRxanS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otwRxanS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD099C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781907993;
	bh=YqsUY4cSuqqbCsQwsJEyUD5yODCg4wfInZIFkGpXt6k=;
	h=To:Subject:From:Date:From;
	b=otwRxanSL04dJF7l1wUFydIkgwTArL5yjpwO3qcLssxQJuQyl4LnVcCTaDwlJv9Sy
	 GBMUT268+Y20/l5Fh4fjalKYAU5S2mJS1f8pCJ+5UNoQjhMaGBlwyuwRoFkQBuHO1j
	 uCxfWImIUObuHcWb59QCoM/6M6fN9jGOdaGJeSQ+UfvbLHFa1lmBJ+mNphxFjzCUru
	 61/8BTEuwAAYt6hYrQg15xhoFOKh76tp4BEfOkkbTtU62wCudtEyKAF/dAs2Bdhl6m
	 ZKXzmVyulU0rBI2Nv5pyRLN/lKhOMgkiuTlnbu7vo5oG/flXvgID+s7a5eJdzYW4AI
	 tKMKVDUhwxzGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9732CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190799369.5567.4351670457376283314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d5ddec74ea39b83cbe78306715be47632a223407964bce68aef12e4c52f514
Date: Fri, 19 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781907993
