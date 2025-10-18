Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204301B4257
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760809194; cv=none; b=SVO6JvL7Rv88gsccg3wIkF/sgL1ZHf0mFgooLOZYyxbyBS/rar7ckRsSHJHh/icP7YIw3fcheHa2xxzuVvPVI5hloAnykJwdMWDbFduk3w9CBKKI/KPiaRgQZ/F/3/UgLX0f+atoXXDIuT2W4t6AhQ3N4eEdRQ5Vxh4XlhxwPLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760809194; c=relaxed/simple;
	bh=/N6TstmbWeILkRdXVwU4s327PQVBIlhnPeRSoM8Nf2A=;
	h=To:Subject:From:Message-Id:Date; b=TJu5WRQhSomwOZukBkNfA4xIJ332qDN7QnEVJWZeaqeEoNBde4lYIGZCmRoi+5RX0rJdIB7XQstth8itxtoCHTQELUc4dLhDgbc/zHnE85U0t459rL7S99buD/uVGAT5f0fbx3UYuCpnczMkEw2wLI859Iw0fo3jVtFm2jD9e94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nH71xdbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nH71xdbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0914C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760809193;
	bh=/N6TstmbWeILkRdXVwU4s327PQVBIlhnPeRSoM8Nf2A=;
	h=To:Subject:From:Date:From;
	b=nH71xdbpZ3+GnwCKb0YxVII7FItjSQpyEa0PtrIxpSWdrdIIbPPGUeT0/46PJUHv7
	 obLcd7A/KbEPyb2hEYDbOkzuRzqaGXedpMaTGCSOOBd2CXCup5l8NV31FhHMOQaEEG
	 LZLDVlsYZi5tRDMt+Ty+JNh+ZNBou28AkH3Os5ClINMkMMNTlQ6e3sy6LCyW4d1Lfq
	 F1bv2IqujtVbdK00VORmo34LdpygxjtrTw/9Dy6qcWMkTUivd8QD9j/iLy/EwqTPOU
	 UwprncJIuCvqSQJ9wjAUkjMGdZc4qGYSyLiMZ5EuxFstMLyW0RxxnGBT9ORIzk1XUZ
	 07VqDnpo8GSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F228CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080919357.4454.1393530253351936493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f107d4e046198e0bd5e2ef7f581ac397f251869479816526c0dd9add89c405
Date: Sat, 18 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760809193
