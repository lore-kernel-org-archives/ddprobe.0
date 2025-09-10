Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041AE296BB7
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757478594; cv=none; b=QwjZTqDO4M/dR3rMJpQtBbDzQxqcdjw2Y0O5IoNMY5GCC1b4zBavJgJ3L1kXaGA2A0cMDw/d8kuTWivl72hGrTxoaDQFfMxCUw105wGGySvPmjG81zqs7dvsXirEn5xxNLKJHBqO60xFJpWuiQG7tcNX2FB1j4hhCrrUl+eukRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757478594; c=relaxed/simple;
	bh=AnJ3sL/Ha1i7W+S7lvaZ/+KIoFbOeohuOP18D3qCGls=;
	h=To:Subject:From:Message-Id:Date; b=BuEOZlZvegL7Fiir/IJ/HejFNeEaFgt3npB+sBIuhOGMEwOxamWue3MP3QUOmGg1gqS/t9Uhdbg/ex0D2cS/9QuG1xMpSk0WVynrWXgM2gLCvN3HRLwVsD6Fzh9ZOoCAF6MIaebQ98MC9uB7c5VqMsc7WtDsPjP/BDiiCVSuM5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvhtDJo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvhtDJo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E6CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757478593;
	bh=AnJ3sL/Ha1i7W+S7lvaZ/+KIoFbOeohuOP18D3qCGls=;
	h=To:Subject:From:Date:From;
	b=CvhtDJo+lVRAkb1fh9sRwXGQaIHM+94i6EFZpcLdORXWw7TFeIwNCVhNudT6o1GES
	 wfow8cMozqywwsqhB+gR4LTrKLkvGjOnT1qEgAuznEJfj4jUTH+C738UlHI2L5ziVt
	 H+JLxBcQ76D/XGqHIuKp6Wm/CNYR+frmI1ctzaY61xVKXdleq4Am5T5jRBZMM3VFaM
	 NAWCpMF/G+ainoUEQvWRR68i7JeCiSoVnPpGZi5LJLd4CRSjFCp9AnRgZEvNVOjgk7
	 YUDdczAxPLF/E+74f3P5oog5ROIgdUjodCShIVGa++aSl1EEoyeKys2/RpLVBKZa4l
	 D+gmO0YMZABOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B17CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747859358.27746.2425916110263869648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da1bd45cd4ac6b412e91e22894a97a083f432c6d2aa42830adfd286f642cd82
Date: Wed, 10 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757478593
