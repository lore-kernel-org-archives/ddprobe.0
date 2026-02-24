Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE361D6DB5
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771893294; cv=none; b=ol4gpbO42j2vI7Qbymaw+raAfj+wiB8IieLMDBRwVyZJlg7Dn5d+XBPnaWUuSo0Qqi1AmXWHrvCUk/skdOhCNZ2hzS54iE5re+Zne96qkSuxtgmd4Xhvuu25qUHMArrXFc+xfuJKP7i3Y6YgsEmO5GjVmF7dxFZ+oX/+zRsxXG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771893294; c=relaxed/simple;
	bh=kMOImvqCPaCXGQiWQ9tw65PcsaTmch0At48XHTgbrps=;
	h=To:Subject:From:Message-Id:Date; b=Gkt9mNiOKeZZxAWu/0VzydBLK3l9ioqEz4/iEVREAQ9kzsA8hMkctOVoxfvB6wFR/uEDRLaHn/BlYDufnN8O4uwJAiYUbFeLbAzjoiKMsg9Gk7IxX5imQbTidjhayD9ZdrcZoA1H4nRaMcoJhAZKThdTa8yXzEhUi7OWr7tnb3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6XHDsA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6XHDsA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E78C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771893293;
	bh=kMOImvqCPaCXGQiWQ9tw65PcsaTmch0At48XHTgbrps=;
	h=To:Subject:From:Date:From;
	b=H6XHDsA9WY2NsnzdE9Se4D4ZgrtgskcG2wdmy3DXLRcl3BoMmrSNobc/ZLG184CWG
	 ut2PSUmUqY6M83Etqb0Epo07L0dJpKM991IgklkkkbGmioLvKn/TUSqrhunwZJpqU7
	 7T1TeLRUtLkHQejq3gTO9jYw3mXp+zVogpIIsl7o/QZmaIziMyGA2Ov+Ov0/8G0324
	 XaMxqei8Cgiy6lcVzaH8KEmHYg05VX30kcI1zTAT7sYTTa/Eqp6kC1u4GHJgKqFmzS
	 wWB6goZH/QcgwzHgkHg5ZhD1tMyZfVH6n87H17ir+1yVY1UjGAGL4lolxCKT7hzXa3
	 QUmdGSVdugipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90570EEC2B0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189329358.24375.2046832921504257025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93608bdca1d847f6635e1cd34d438eb20260d88d0b5ad8c50fc43dbf300c2a50
Date: Tue, 24 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771893293
