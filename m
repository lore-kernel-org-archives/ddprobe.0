Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB3E28D8D1
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771369494; cv=none; b=kuvXEAIbU7ksvg+RumZOgrdiQmC/fz5UK1ho2/eeDTEusJCmTKc59JZtSkkHwShQu3ue4z5czVHPuxhn7wVtdEG3990i+/DKd237Sb3/qqjcKPT3HTJZJ38SaBh+K2rBWMVRQxofPLM11i5Iim54g77gfIQpZyZyT3U6OrhXCVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771369494; c=relaxed/simple;
	bh=tEIG7ZyPRTFvUgpIoQ9ZO/K9gux3AogTfZd4OHjam6o=;
	h=To:Subject:From:Message-Id:Date; b=Yc75Ur4qlhkw/Yqh5Z0LCdv268TVohjrD2WXOspiZRdo4qnCIgZYECnwMinMfP2ul91D4IHZbsVS4q+MJeaPFCt+/jvtiGO62g1MMT/AQjHSRStCI5Ta+BaOZBTbwVT3TNRVI5dQrHaqmGmQzSyIzKhGNkC/UW9ZN0f/wuiOQ2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6YCRVO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6YCRVO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC92C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771369493;
	bh=tEIG7ZyPRTFvUgpIoQ9ZO/K9gux3AogTfZd4OHjam6o=;
	h=To:Subject:From:Date:From;
	b=N6YCRVO7hZhWeL+MSDHGJ94jak6KQyJd9IVBXwG+E99pcjuxmGPfHAxBnsuWOQyaj
	 YajsdHyP/RrU8fpyDQ6L2Wrlz6219iDlADhqoje+JOBaDhkwKn6Erj+qpt2VH0ZbI2
	 unJeeuzeAYaVOjyqj1g60mEg4QmZ1R6hHgn1WgrjrfHJoeDMeGsNt1uE8DpfTOi8QX
	 KtgXWJFnitqKK38G5AtkoAAI0AdJapxZ3yrulJhg5wpOb2aAhT8KCVLXL1+84f1suV
	 EOsbHdBTU2XLjrwKGt4WPbGUIGVb0fgiGWYHe+HUgLEg4BK1TjEaNkpChDILJchIhl
	 +zJjSwhJ4rOuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A028CE9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136949360.28808.442497775603604832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90683d36f1a974414e142322b4ee0ed6819395e0c3ad1eb25c201d040bf0b46
Date: Tue, 17 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771369493
