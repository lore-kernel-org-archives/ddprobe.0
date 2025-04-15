Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584B419F11F
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744685994; cv=none; b=jOxowoC72V7/bB1dK6cNuC2oAefsM5KAIDUfavH9lWK26o1LlNX3fVpYVZ0HE8e6KLhJl8hICZmGcm28sQAQDXe1HwnCRQs5CKK00VV/uCRRDaD/Zf/TkRX0p7f9vAsWW/51ODKTIgYrY58aMAHFG/oRycfI0FQZ3gNxmh7AcnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744685994; c=relaxed/simple;
	bh=yVPn/R5g0ALqgbwLdnfMxQmPPEJv0cPQn32rYzmL87g=;
	h=To:Subject:From:Message-Id:Date; b=ut0bnuP/1iemZofKy5qAIG9sJKkd+QHeBiLChwWFkYDktsZV+t0hwbpG+PK/ATabH2/ujZz9GFx4iBjilTwe4PICZkDq0Gjzp6PqPQwNqxyBuJTc74GwYRlYzTtWswOViJyczsWKPG+L4vcYlbJ9RSFGe/6XfNlUrnujSUO0cFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXzTXJoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXzTXJoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C724AC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744685993;
	bh=yVPn/R5g0ALqgbwLdnfMxQmPPEJv0cPQn32rYzmL87g=;
	h=To:Subject:From:Date:From;
	b=XXzTXJoi+flCsCNedg0lj1j5fKLr6DFXZjp06Mz2dH5GG3ap6rkPMs5CtXYrNCAuz
	 GJ3ekxq3bOBBjMZsOqwSOJMpHdKhzij84CLkwlFVhmVLuo1KPEXHrXcf+t7S4Uvg1z
	 td61eudCgYBHfer2BsFieeaH9RibGq/baTrU9zv/X8sDLZSTPiwNlLGHwdtd2ol9x8
	 xNXCj+/zjDJih5pfywRoe0ce+SYdwi882ReoFnxcrXIEy+J8gs4ZsyFx/AfOyYBqlt
	 wZrKzgXPyPmf7/9rvWlXuajDWbRs8tiif8TOrM2fYqi1tMr2VqvRFErD13IQi2Ddg1
	 H6ITj7wRAqDOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A31C3C369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174468599365.24789.2084711896528357443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ea8de65d57932cc4df04539541b369681146ee2a6276f92231477b2ed153fb
Date: Tue, 15 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744685993
