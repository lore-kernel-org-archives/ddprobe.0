Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449681B4156
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779259834; cv=none; b=Jw6e141MnKfKEHDWp3XVVznJ7wFCTIZfSX4PHayW90dxo0BJrsLn0pbmYcR6KP6vn6SabqJyixwIJyE+AMf8dpVujzw5Lm9Ku1sQ2tMTZr8j+A5l0Uky2eVAGWASpDey9sPkr+Md/uCZ+2mfnYlcOzJDWTfuoVpaBbNRLtsQqMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779259834; c=relaxed/simple;
	bh=JGNiXn6M2jaamTHpMoTlCsqVZLaisM8Y0knLYNefV24=;
	h=To:Subject:From:Message-Id:Date; b=T6ligi1XOe3O8UPl0Wj5Uz+B1qky+36OiNE8RkrviZ46QVR4pzL2ZJKU7vJw0tw5qwnJcJNe/gS9dxHo3xTqyz7njypKoGzbDlnQTLBVqDn9DXe7VLUvaB25DH3FgzThq7RwIfVShaq99Ojll9sRJzQQSHqW3vOijoCyQdI19x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MugN6Aa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MugN6Aa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA6FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779259833;
	bh=JGNiXn6M2jaamTHpMoTlCsqVZLaisM8Y0knLYNefV24=;
	h=To:Subject:From:Date:From;
	b=MugN6Aa3pJ/wf98se+Kk2D9UBwP+5kbvq1TaObhyP0DwXQAZAPx8UWhziuHUQvEDo
	 7PtAkWKoDcIj9OZXHCS94UO1FSdj2eoHlhBA5iRe83n7/RHYrklF3lz8qFLmR/gfva
	 qW4gze/85leSXUNzKhHPYRjX0YMEt1xafOwlhm4aT2ONX3JLiG5Dl6KkWmHhphEXh5
	 mQ3PaT8GgmJtZZ9g6b31PeMeoQw6pGg2VQqLXwXKQbgs6y47Mszz4gnSvc69vCmaa3
	 4HIvN4YXo+Ci61LjavmPLY26CCotnc8RqQU5AA3pnfSyISz1T2i7cGhHZp19AHbdzt
	 6dEUvZ5A23uYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1015CD5BAA
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925983376.32316.7364475931502059031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d2dd9b4e5ba2d8247e1b78f5491e11479ae7b7a1153f22a66590ff476dd2b8d
Date: Wed, 20 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779259833
