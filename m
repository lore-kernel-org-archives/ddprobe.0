Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13943CB54F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785357034; cv=none; b=gA03Pt/wPX9ejmWWwf6yKsCPrX+mTaglQhfD/0gsipLyEoqTNMkHwCdQW9YUQcJEQCTE96AZpubIcuIlmXaCIJI498k/CkcpKvdmtdY5TxHW1HhZCgGj7zc4aVYkgct8gGGMfGkORlZBMSZu2plulN8/Dha1rz1OiLPY1gsldw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785357034; c=relaxed/simple;
	bh=916z3klbgJJjKkC5KEbhPy939DNcgMlFge1+PfGbfOs=;
	h=To:Subject:From:Message-Id:Date; b=Ylr1GOnK03JqDbq9hx163h7z02grJttbmdtJx/VBx/aE1kIvliR9aUyc3NzDcNeQdlwo4ZWxv+vPWaaW75/m3qaBRFHXEGXYswAvJ98fQNJ+UkFCHx2eqtNflkkM4mUuSXrlJTu6lHE6sPWO3xd+LJl6/q88lMVlnoKoi0MC5nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZ7bNHNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZ7bNHNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFA0C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785357033;
	bh=916z3klbgJJjKkC5KEbhPy939DNcgMlFge1+PfGbfOs=;
	h=To:Subject:From:Date:From;
	b=eZ7bNHNh8zOkXINQA7c99cOYmUxUntsZsYFx7B05REautN0XsyO1DGRuqq5lcAr1n
	 HRuXZrFjx76w5eBHFMtLPEJK2I8sejUN1ryvdr15sJGf4+Cnc2LMNnO1QtsqqY6ygW
	 9BU+Gg/znCzml2PPWTKRh8JNnNa6SvNOw/beVNXCe3baaXQ7QBcfd7IMwkBoMeu28M
	 ipiKKP5ij9O0YRgdOxsFg/46r9fujse6ly89gjkHVVKEc8IFEc9sFusa8iFQBBmEKp
	 fOUQ/9s2u48bSqKgA/7RJuI8Q205DuoW8Tm7MpFs52+PZFxwS4ISRH6yXIa1ReJGe/
	 3UOLPVaeEF8tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5727C54FD4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535703373.24928.12560331959204793217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2c81959f1d999f902c297e79d00916a41609749cad803c57369ab77306a548
Date: Wed, 29 Jul 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785357033
