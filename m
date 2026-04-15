Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A252773CA
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776230254; cv=none; b=Sfwb9mFU4Clw33773sYNmv8zmjD5tDtY0UnCQUj0nULbgIlzOAubLPmrgM5uHHUlA9Mqgohlda2QWqMscOGl+6LYPiw9I9ynasqIkGU5ZLz5wfUMEIRx87INIIFrUz/Gd/GqsQHwN+tsucFfDmuGoqQYXF7sJ+EyCJlk2z5nDHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776230254; c=relaxed/simple;
	bh=V3t8oNRGftNaxrrKUb/Vkr9QV/a5/mfQs2grxdxhlhw=;
	h=To:Subject:From:Message-Id:Date; b=lufIYUIoYHJGcddSmpRSJs9TErtDgHNUWeNix/xoeKeLWnyh3M+B1NonPyTh7AlCWvHGRcHaN7BKSb/47xnCgGKmyGbzSCKeXIU6HHf2sKGhV5FK0WBl0dKAirRPxuVMVdLdFwhx+ADEVLXvfQRXpz4GkMxYnUPNRR5sbbAvFE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPFeUA1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPFeUA1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2D7C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776230253;
	bh=V3t8oNRGftNaxrrKUb/Vkr9QV/a5/mfQs2grxdxhlhw=;
	h=To:Subject:From:Date:From;
	b=dPFeUA1SHh6mfywNJQhX+Y6XOYo3PbN/HjB3K4Gbnak7PpNF0GJXbZB56WTXRyoTr
	 dr6z+quRUd5dQO2798JQFzUIuql5Fe2GryywVIzrkZav8YDRWwmAsV352y1IU4cKB1
	 FztbpnZT0Ihu5tJkbMpgbfsx5V614cQpq4hZYDDdFvDz9cENxFAGp33aUg6IPfT9Wf
	 Jbc2kA50NcFJCMdKKOhq5lZfqtiZSq+/06LK+Seoz3ZRcmSXHVE55H0Vy2pgPEyfMT
	 BuENVf6MYUCmRhHaOEiLCfI70hkV/usVDpeq044tXNTCLNVsKgZRozSGcx45m8TuI/
	 Lt56AK9WW3ZOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9410FA0C2B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623025368.16885.12413573914536803129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e063fe76fe3596ff3c12c2377f713a5e273d906e48afb830a15531e2f3859f49
Date: Wed, 15 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776230253
