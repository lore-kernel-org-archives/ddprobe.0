Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30944BA45
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779581554; cv=none; b=nVqHf7gBhV5c1poPY18oarvWBZ1pd8C+nmrDbk2ncQVYkNT1L2oAhhyE+1H94N041g+D7QnTnwWbvC3GXApXU9beqT5YUxT/8YH1rxIE5unaHrVtOlJlwnc8W4enTZXvryxlDLi2a3KBaFj+SSfra+sLPONt0XWCLdRaRQqFeqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779581554; c=relaxed/simple;
	bh=8KY4w7fn35Q8uqpkWu0zia4583xBYqw5rP7W6lDE7x4=;
	h=To:Subject:From:Message-Id:Date; b=J+tvtqbseY4bcZasb9Flj2zf3NZdPBQ+Xch8+kXAO1KaJdxR4JXcDw33/DqXn+NNUWVPXI9V287a0xgW1c/kqUtKCPwFs10ch5TTWopHIjHfunpMnhb06DwQcRyY3q1j5nuwUyzmO9UZSJU8O4s8rmbHGLRZdums7sE3wv8PpKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sy5poDOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sy5poDOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1C0C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779581553;
	bh=8KY4w7fn35Q8uqpkWu0zia4583xBYqw5rP7W6lDE7x4=;
	h=To:Subject:From:Date:From;
	b=Sy5poDOjdQ4FeULMuV4yMrNoX9FzlrNqFbspu7oZlrj8dXtMlPm1rAmGGWVJ06yOq
	 SNaa2qD2rE5YaCT+VqroPLL0ZDry+PH+xMu0Aszpm9TqQ+IQlbEr0mgl18YXJIzqHr
	 ORcAoGEIWKa/oyiALR/+1CuApyECVSmpjhWqn9Lkme517PDiZwCpBxDfkchAS48dxa
	 phXUNLxdEGeL1Q+wPH1gmiHJgxQcFLvYKN8it2OEV7Fs1GWF+V75hsmqfx1Ll5LD1A
	 Bd70+wwSZ2y6RXbII0IGGA2AdQkLtdEDUhmwDuxMcrEG0fubDngHDXKFKfl1Temqdq
	 /s/TaE3J7/SKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE05CD5BB8
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958155368.3159.13053982248393264915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2b69e10bc476f7462c7256120d458bee136879650a401c687e69eef56db433
Date: Sun, 24 May 2026 00:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779581553
