Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ED0388360
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783348714; cv=none; b=bX2pk43TOT9npC+Zkr90FCVIwx1rH8Wl1r2XH00gMNTMEM72E2yJWzdpYhzE+Uik4xPp3WZnVB7zxZ/WeLy0XCaByd5vdC518Wq2QooOy1T1SfYsboeR+H1gg729ztlPB8G636DsQWr3DQxs573JI/7bcQCSQBv90vqfkJCEKDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783348714; c=relaxed/simple;
	bh=Fm2AQiEumtYCThrKIsiHREbgphAL4BgO9ERe5cI7l0s=;
	h=To:Subject:From:Message-Id:Date; b=N7IPJ9FRUJxLC6s6prwBvyeJewUzatiiwKu7jdbrGW0RLC3ayU/qhpabdxEfF1KKdzDtRXX9ukOYMyTCOYIya1dV/jUxWlyq3uCkOglYZfREUquwGjPVPF6koyvERrLDaSv+UHL6IeOEb+G4HdxIqB8Qh/2mgTVX5HGoL8iyb3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQoOh/kJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQoOh/kJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C06C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783348713;
	bh=Fm2AQiEumtYCThrKIsiHREbgphAL4BgO9ERe5cI7l0s=;
	h=To:Subject:From:Date:From;
	b=qQoOh/kJLtKMZhSHbIjMgFS6etZZPbJdgk8DQ9q7x+fNHMFJu1KZo9p9eDr35mhA5
	 EK5Iyie8UZjhAg4kCzfXMMOEQYsyeBDZy8at57OrK2im7zQ8rVdHwtzHBR/NFxhKyY
	 8xEO4ZTyQJxDP28oGCpo99ZUUPfPD0o8srn7o2wClniSEaPM+3w7b3q889BXfBz/CR
	 L2GoJIl6Uo4tmlw51MbC9W9B2EO6PHl/OxstpN0ECYHUYgMdewx9KT/250aorFEgiL
	 oAFjB2oXBqzqsU89rXBK4nbXQiJTV0edG4Xwtnq4nnarua5OxDFJUj+cGQu/Vl7NJe
	 JYemWY474KZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE970C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334871370.15204.16854819640284930064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfbe54797f3ed1dd658e8e465e20d24ba573eacb4295fe597e7f2441c3a2fa1
Date: Mon, 06 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783348713
