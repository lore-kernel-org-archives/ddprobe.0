Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AA31E515
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748731195; cv=none; b=pKc+B9TuloqM46fKhkArPCoYixPFTour/seTTzYZNXYRk761v+OsTYDQk0OoW6t7pxRLldQ87H+EYFkfHkbxESAyxUXy6AKbay65g3HwiJ50EFtRTd8XMkCldr/cjlxlTUmbtS3hVVPpaB6dLcT8TaUDSHsjkk/yfA9GW9hrc80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748731195; c=relaxed/simple;
	bh=UoBynfst37SdISrAKpEQrRiEduv7rsJvuXnRkZGSzLA=;
	h=To:Subject:From:Message-Id:Date; b=muky5V9BA8QagF4mWK7fHUqjYcRmJA3M9xvg3bcl6ACBXATlvMi9FHvFZhxCilviSj9yIGeUUyl0K26ieS7RKQaltkDI/xc/ssoZ1PWe8DsFCDh9xOQ+xpLDjfQ83ua318w40Z3FnWQo+YXkJYuJ6PjVKYbE3HJ1IdrQ/VxClig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQOCvPs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQOCvPs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FDEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748731193;
	bh=UoBynfst37SdISrAKpEQrRiEduv7rsJvuXnRkZGSzLA=;
	h=To:Subject:From:Date:From;
	b=AQOCvPs8/AxgpbduFDczvLSPmwe2sJxLT6nx8MPjOdRp6znvD+QoZlCpY/4w80DyV
	 jE7JcKKMig9/QULG+1p3IT7ybbvtRua3rsEtIhJTK9H8V34XLYO3/UkzFXAq0Hlivw
	 atsmYlSN0dlF7DV25nYImV8lwCX0uCrWph3xQIhzLP0pJppwK/31FlgXexe/hFOsSD
	 qu54iJcQXio2mzLzUuWGWG4ExRY53v3ZYYYAMUB3cJureuSTsJ+8g0GybPkP/ksQaf
	 CxERtWJh6uHVnWqUa03mMUwmKlxDsnkdVa8pS1jPRubkA+yz9GsKk2SX80irnb6uq/
	 2UGFoqTL8Rn3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D6C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873119357.7238.4683953777124912356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1343737acfd47bb53da3048a0284f601bf2bcf15e4427af094eef300a0dea8e
Date: Sat, 31 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748731193
