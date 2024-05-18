Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F6F1DA32
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716061343; cv=none; b=e2Qr+bb4W8FfQaF8LwRvufvgz4TlHwTMPZgv8ZHFpKhMtsyH4K5YGHqbFZ/xZufuIVF4GE2ZDD8mbEPsRJC47uLMCPLzhPBEuwpr5ki5nVb66GBdcVaQMhhO6ie8t6OBG61R6hoh0fOrwqAR8sfYqBCcCB4BwnrX1f1F6KUtt3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716061343; c=relaxed/simple;
	bh=DplqjPMQOoWLKcQoYG90aJRH9ylo5aR+XZoifvHzmI4=;
	h=To:Subject:From:Message-Id:Date; b=GhO9GjS/HbijDyXPdK+f5ly80NIl0+OgPXe8Gik/HwXe1W0VN2QMvdTnhRd3aDUUF7uTHOFgFiWxEqAav+bM3ngfySdr6sZEcbDE5uUlBj0xX9O5YR2q1SCbw9ip/TGbc1O3f5Vl2U1oJ5JFgKhvh6VCAWORZ70JZzTg9NU+7Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCQ7tWxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCQ7tWxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02A26C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716061343;
	bh=DplqjPMQOoWLKcQoYG90aJRH9ylo5aR+XZoifvHzmI4=;
	h=To:Subject:From:Date:From;
	b=hCQ7tWxufbyZoR0RC5nv69usFy1Jz6hhynWv13tXJQOOgpMSvNoVNGUYCxX4IBv8s
	 7EJNG2frrJhvO7X12zJZ5nfImTJDE9pCn+gHTlXMtAmx+oghF0fMl5u/PQbpSp/ypR
	 Nf5RDJ76NA9GUWQSLdL1Ou/xbzcNgzKIXiQT1eq2oiMOuTRtztE/tIuXlTiGgrlu0x
	 QjTDP6Z9nLji3QsF68Or+gKQzQUjibsjZcRfjbCWs5sUFjAMG2Q3ZQvgcngg5IjfaK
	 7C92MZFSUw1sR/zTF/S7WZTsasn7mwJC13XMRQ7JnY/TnhhiZPagui1kLDywEzMH5H
	 5MEkBPdwCZa5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBB4EC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171606134287.16878.12100078490081756628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c906d52e68e27356fd9196ad522ad870516435ade7a6b02822662abe701ef499
Date: Sat, 18 May 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716061342
