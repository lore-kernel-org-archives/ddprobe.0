Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3262717A586
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763668914; cv=none; b=blxwrJ9fZvFgIur7hNTYnieT5xQp92DKoTA6PQPRXRGcT86L6F/ZPazPrUqHR/sGxWqh2jpK1CwkM4FT3EobsARVnX1j+eA3Iuq5bOcnmrVxgVZmInuz01t7ZLE1UjGxZUOThof7nrkMDVhAcVHkJDGNXD48t6K2J4upTyuDT0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763668914; c=relaxed/simple;
	bh=L4uCxs4qIVceKRxDNfxtof1h9xcyJFNMrVt3xM7Ik0w=;
	h=To:Subject:From:Message-Id:Date; b=ucfETytN4l6Td7EyuvKcD6fJ8YwJwEXIaP2Sd50mvoW42rsHWlDUYdv9Fqq8Nya8GFn3RqoeQzM9xJq4Yb8TCMfkuODRmF73cPFelcrQBj39arOqK9SlnV9oi05AwIx6zvI4tyCuT+DxasCbXwbgjUFuddjEugywzYIIUJFvEf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V95os8DW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V95os8DW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF707C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763668913;
	bh=L4uCxs4qIVceKRxDNfxtof1h9xcyJFNMrVt3xM7Ik0w=;
	h=To:Subject:From:Date:From;
	b=V95os8DWWb8zuWijIkHd1XQiaGqcKlJns+oHtgxdfpj88Cjp61EYu1K5jBDUFJnos
	 thAODJkiJ4DWjX21sjPKCGy5YPj45JpJBUmzegtIYnsKgxeVo3YLK2P+WWPwGUWIC+
	 6YHs0eeM7lEjH6bt4y2GPW8yHy2sWeWO36zLzmGmLdDXhu9WRLDdPLPW23EaMkSxHt
	 VEwDOqqfcVZPVk55XoKBZ7THdgXxlTHU4vIReBsiIhmNk00vz0atUHxM7kqYTiXzEU
	 0Ke1ZapOknfWJu5+j4qk+Zn1iYTPm4V+wToyj58PhpWam7epqwZrsZaZR9ZEuyfmmr
	 119P7JzlddyYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC09CF885D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366891360.6635.13095418978555737019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbe1e43cc58580a8f21e7b72669318aceb1ff0c89dca48c273086e8031b50b5
Date: Thu, 20 Nov 2025 20:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763668913
