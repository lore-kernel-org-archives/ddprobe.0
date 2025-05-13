Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1812BEC41
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747159794; cv=none; b=DdczQgBUmxEEjcyHPcHct7YevuV0Qrni83aEtginv9oe64KkaZuctYANEQbaQqAkCYsgVCXeI078ycWv40xsYntGJDqFaP4liEAk+vJvlreJYrmvvXZaUp+P1wkb5GpyPnR4kU4+T5o6PlArU9G2GR7Nx+YnxIDmwGwZExvQ0rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747159794; c=relaxed/simple;
	bh=6gmfCtLLY2vLWtJTHzDO8785T9ZGPvX9iDPiVNysORw=;
	h=To:Subject:From:Message-Id:Date; b=JgaJAHOu/VpBKgEaKcp433hZdKht6aNIIIPxGcGalspvUVj9TllBgy6j3hmoIG63ppWWFmOpcUt4eo7IxZpQ6zBY6HNrDDy1gKlW3Fc/3j9IBjzBfZBsa9ELflepO7c7EmtV85puidGYsx6dIW6FuadIj6ERQlUR0c8QU/5R8K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H61ETNbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H61ETNbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0013C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747159793;
	bh=6gmfCtLLY2vLWtJTHzDO8785T9ZGPvX9iDPiVNysORw=;
	h=To:Subject:From:Date:From;
	b=H61ETNbUWnPY/m59mnaJiBDQ36SrIEGT8WhSuA5j6Vf/SP9HFdD/FS/IHw0RQqWrh
	 6YXWkjsjuNYAydt3ym4QO7i4ET4CgNFUB7mZT/+kZEXweyx5xdbPgLyAcLt47EDH38
	 z4Ql1J94HVfKP62NnPE8BlRYmtn8RbLej9ixxEvYmErqceJ/DZbT+t0Ka9ZRRtV+fw
	 nu1TIpUIhuB7nRrzgpgG+jsBDuTvNOVBCcOZpMIQr69kRd+9ErSj6wyAc3ZRnHHT69
	 XzPFSi254ICuD1vRe3av7uDqgN7iWCyF4B3GmXZvSpsm2BCJKh8+OLDyIcDBEFsEvt
	 kOVk5em0jRGWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F705C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715979357.28964.1312197627015831480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1a6b583543a60f873564c5bb161780ddddddb50b2406046449557bda814c6f
Date: Tue, 13 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747159793
