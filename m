Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A8C27603C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772680494; cv=none; b=dPA2xP9UjsC9qO2OrxmlHk2ctczKjbx4IWMeYlK0/NXR1qp6EjaKeZKWhJ/gQaVUr7h+F5paoL/nrkiF2cWJ45c4lQzTmR0AgJuhPqDD64S09/AfZqQyZxT5XXYn4rRARh7G/IHG+q5iqPyA/F6R3VhsVe4s2C+Ru2L8gS2ZA7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772680494; c=relaxed/simple;
	bh=XacvRiPxVjsrM4EPSXIKvnCUj/8Mrr7VmKEVWv29OI4=;
	h=To:Subject:From:Message-Id:Date; b=FAYCt+w8eDNlbFQlkH8e5DW+1HyrC2Kbo3xfnFX6HNXthbM8mLnU90T6f3AbBfl6dzX7izejfefkNqL/hpE6SYJqN3SrZfjTdgqkLcmVByTA31CAb3eVrWq1P55uOAvedEkB++26N409Ese68EU8oPt7g/ne7gbMmhQ7okmJtw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbOV5Dww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbOV5Dww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B776BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772680493;
	bh=XacvRiPxVjsrM4EPSXIKvnCUj/8Mrr7VmKEVWv29OI4=;
	h=To:Subject:From:Date:From;
	b=sbOV5DwwNlPHMkU/7zS0FhOD8bQv4bauN02lvo4FMeuuh0XeIb/2L647VZgD3kqhj
	 W0p8hu3T/916N3ttunkihx+wHqd/25oZGkDnxNTJBDQEc3R0EXm5FlL5fA41guPYh7
	 W58YnvndNGlMdcvqsFhwXfQ2tUC98B2HHPxm+8deZBjMmaKrY4Wu3rJmpuDJchsoJK
	 eP6Dw//82AyoagPA9jv7hDgHtrYfuMC87po7WqBYqoq2vXdYC29hjcr8X374dTF1hj
	 3jf1sz+9FoJVrqR3GuhtzRZUTGc/IeDSX3u3fgSO0mxF4YWjy2S5O3Bzw13zhKTS5+
	 Di0hjF3nDfAXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0701EFCE5A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268049364.24373.732227632617644916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d2dbdf476605723ee191560b1d121407891045b3295dcdd6e54c0ff92405f2
Date: Thu, 05 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772680493
