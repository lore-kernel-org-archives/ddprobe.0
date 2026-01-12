Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69AA32B98F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214633; cv=none; b=KuujT08FhTHc1YDwGsNx4tEwivRg7BcU3Pm/TXbGosU0/NmfvgmYVYMYbLaFv1JS1BQUGt1NV/s5sEVyX41kKxia3QiJDVdjrxPztvWgNzPoU5aSvQ2f0/vmZmYUnz1qrULqhn+2TrPxjchbXHernHlYRbXYeFiI5pgBarAJGg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214633; c=relaxed/simple;
	bh=GrkX9j8haQw91XQGGVoFQaWW7V9+fdoSZJhbowa4Jsk=;
	h=To:Subject:From:Message-Id:Date; b=TH+GFrJ3UN+n7gBiPA7FPChd1K/xTMtuqVggqYXtMFoblk7y+/wF24G/Lzcnv+3I8p68BSekHo4hjcoirtoxi4Eqdp2mjmPpA2KUxLqp7bG43XilP9ksnrKxPjLL42YOueHIGeIIopZ515tgF8jMRa85erMIVDLQ6N8KE40PHnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPUESXW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPUESXW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3263C19422
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768214633;
	bh=GrkX9j8haQw91XQGGVoFQaWW7V9+fdoSZJhbowa4Jsk=;
	h=To:Subject:From:Date:From;
	b=LPUESXW0RA+/JXJNFU0mSR5sfYSs9HZMZRhqT5QSZqOfKUo9tz4G02gqa67xR5fOv
	 HVY0Jii/6V0bmRV1WLczv06kNt8hhiPH5I9zWvea2cEIWFb7WrMvrWwybXpV6PqcxX
	 vcrCe6CJeo6WgKNasNRpYoV8ChUrEs6X2lhfDlTDGylnr02XoSQqlT9aitg8Cs9eBM
	 DF4yKTLpkEjMBWT1bCa2+qeaISHsLaoAlLmck+J/wtxyTuVAvwEn8d1k0vBq9kus00
	 zgopshOYMtspj0ZePjUYq/a/CMDvFWb9ca7OPRDyydbPt9rdc4Ds3y/5YfG8fZLNdG
	 yl/ld5PfeVGwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94213C9EC6C
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821463359.29694.17733490700544209440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25b8edb8c0ed43911cec98d4f2dbb5e2fda6890326a1fc57d49c280101f9cde
Date: Mon, 12 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768214633
