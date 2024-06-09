Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76281EC0
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717938443; cv=none; b=okuQcvlQK53PHTLzYLw2QLwwYIzCyYCBrSQhOTFPBoNi9Oij+X5CYNSWsdDI5ylxnipArjv0KJGklUJQfGxK9qYx9niS5LBr7JDR/YlX7cTiIo6EQZQlwUcerxAL297G4vGwjlw+rlQ2CDSclRiHFlWPLySh8XFvQ1R9xBfr/8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717938443; c=relaxed/simple;
	bh=pbdxBgCtvkrI+cK5DZtANDC1SmdictJexjo5iPYICxg=;
	h=To:Subject:From:Message-Id:Date; b=lVyFCR8NK5cOPfYWctFkBiUf/0GuH869o+2GNXxpnyyZzNiiAE0CK09YnKLXMdpHj3R6MfwIeBO0ctPixdGZwyZOtho9LV4TAejiUe6UFWR8e2uzE1RgDZyKKKH48pezyO94m6/GVIL3lA+GtB0GHiqBd2LcYWWeh6h49MjisAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8EWtb1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8EWtb1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECDDFC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717938443;
	bh=pbdxBgCtvkrI+cK5DZtANDC1SmdictJexjo5iPYICxg=;
	h=To:Subject:From:Date:From;
	b=e8EWtb1iVVAp1DO8bZ//Hmxd6OljkQZo3Vu3G3CoBOOdNC30WFs7z/t1mlPpAQcX8
	 yJ+NWfPsPEvdaThnvZmXWDIcoPGnlveCn6bM+6KZ7yDvvNn6gEG16kYVpXZGutKQGA
	 ael1So1aKfGMpudqyqCtsTZuWdBmABt9PzJoEZ5APDj9EkAK1a4ppuTwspNxMsKE9z
	 nA8fV+Dx91AI4EhbzBbb8a9KI3fri3azgbtM5aAzSnCfyMtLER2exiY5riNM9tslNr
	 /DVotLrCYHFDfirkKrnzjgfe7JRU7AKzqYNEEsf3KtuVqDY6hL/0jjPdg0QLULkbJl
	 g0sr1fp9QZykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1455C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793844282.18979.10170175832848549256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2eb8000fd5e771033c6f6c9db5a6264b7c7282751f6083e92ca41ae5689a109
Date: Sun, 09 Jun 2024 13:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717938442
