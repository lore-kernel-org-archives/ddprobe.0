Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2ED47141A
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787248234; cv=none; b=nSsNtCxs2DAw5uJsti6TmgklDvfrd3DuT6vJohPrvvbUkAra75WKJl/VVQxwfqCOpoDWbu6xEyxxyp0buuW3edY2ejOKsCJrPO8k92GVBmY6brzR0dqqnPOFfJkK5sRuOJ/5yPeUkaUsFuQnhSt/S5mktREEXR2xLLkLciXP9zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787248234; c=relaxed/simple;
	bh=/K0PBTZTt3qHC3n07NddBba0DCg3W3VGVw4KdSPM8E8=;
	h=To:Subject:From:Message-Id:Date; b=IOVVETY+sCGTkW0Pl4RJftud/T6B0C6DQLMUsQa6hCUt7LTcdWn2blq9oXhYQzkciTIsaDJu/Uvcu8SMZh0qecXBNMRXGn6d/SOpX276bq23Z34WBwe4Aozxl6dcUZJrAf48kTVFBSA0XwzlD93f1FaIOaokDIrmcNJEPdmCtKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVH6wFzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVH6wFzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA69DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787248234;
	bh=/K0PBTZTt3qHC3n07NddBba0DCg3W3VGVw4KdSPM8E8=;
	h=To:Subject:From:Date:From;
	b=aVH6wFzoOOXobEQ9Sp0F0mMMsePjInAdUFie34NUnKgFh8JhgQszOEVtHJBC0J+/e
	 mD46jBD6Px8LOpq+ximLAFBDCjB523+gpASXS1SLvQB6mHy0dioaAua6nEUCud1ALo
	 ArZTcZiH63Tgf8Qc/JtdgNGjtsIt5Ix282ILbqj5mWBYzaBuLNtig1fEfCRKb51T8p
	 l8U7ICZH+eLkwx2ZN00r3lJVnUuS3pEJRzS4NPlNWbyonH9V7ElvA4Q2Y7CRamd1BH
	 g9QyCUQzOoIPZn1YOJemdqrSCoIylUVTC4TE2rchZf4ywEGM1mC8c0VOnr7XYJMtJt
	 wYN1QqjrKRqGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCFBC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724823376.13481.2158385769697250967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960a6631b7defa617628359517a1f5331d83a1c47b471494d384929329a50c41
Date: Thu, 20 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787248233
