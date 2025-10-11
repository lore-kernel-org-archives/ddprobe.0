Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B12156CA
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760159394; cv=none; b=ADZhnub/7KImTWe8jLBr4pnv4gnHuuL7mMIW8Bcmbu+Y6LvhDLVqFEsYbc48MO0HNUIarA4KoMDhv01ouZz7hfpl7HkqFJqmX5ky7VfyjK93lMPhRzFZ9Qv1YMI3i7xDtpXIeVk8ZfnWzjz/usODCKmtrPDOlaQxxEYztxuT0qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760159394; c=relaxed/simple;
	bh=+YyuusCC59k9AuQwUJaX8nDTfXOJucI/ek5mTD1jkn8=;
	h=To:Subject:From:Message-Id:Date; b=U5+dw8rm7C6DVdSMsYsP5LJlY6ptB/PG3dlPVzv9394gOHVlwQ7sfSAun/CO/j9X6CC6AAmMOSyZSgG4vsuNrFVIr/5fVa9XPOnz+OSrcn1OT5BUG/pkNE6H6VtiwBC0qv+MJ2F/imBe0itahmoRT4+vRUlL3+K4YpcuGGUPiec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6OLgyvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6OLgyvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E2AC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760159393;
	bh=+YyuusCC59k9AuQwUJaX8nDTfXOJucI/ek5mTD1jkn8=;
	h=To:Subject:From:Date:From;
	b=R6OLgyvb/p3tuaS82ydxkpq3OqsCH8ZDccrPalBsmzWy/vrKz07UEHvAcO7Oa4xuW
	 t+tUKZVpGh2YEYR+HfJ0oXJuYunKL7JCCCNWFJN0e4GHPFIt/sy/s+cLsyaf0iUUq3
	 YJDHF6ZxlvHXPkdswk1PiGJ+wD+eN/aiIKCLjm5kIgJ7f8wAc+vacXpow8QPSXMNsg
	 VIuwekhKyFDqATOjp6V+5WEyxaH0+WslBn9nA3lO0EmdKCbQpQL6ysyNeXBndRns8K
	 QEkdtAJK49vRCwwk7tPfn2ZzRPfPQ/PatM+hulZgg3nlgSI+mfYE0uMSbCeU5W5piJ
	 e8iu6i/IuL5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156DCCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015939357.2075.16213922178921545036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750e169d39177b3ba7bd0486e09a192a505591ba90ea24a8faf432452d0b5b64
Date: Sat, 11 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760159393
