Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FC1246BCD
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775440534; cv=none; b=iNqzo2mjHZES27QZo/InTjAklYzzJy/FFmxP1JxAbgLNKLiLnfPdSiVM9Xv++Xdrh0XA0gPH5EHihjSAa0MgDPuoBOrnuc+AAno9pei7KMlafB4fRtoXJSwDU3miJhJd7ff6uCqB45sv4LOq8XAqfaIE6JapfZ0BydG97AX7KiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775440534; c=relaxed/simple;
	bh=6up8mtnWB04xiCgB/OSi1XWm7MxcNRhsIDzeoeUIJeo=;
	h=To:Subject:From:Message-Id:Date; b=G7fl9Y6mBkqF32iQPFstOK7sT4/xUCP6eXTfDE+rOEVIlcq1EE3u5poVMhcxQnYQ1PjP2b4bYuT13J3Fd9PInECwgH1ClGVm+T7d1zlJXQ/+oVxRRCaaL8Gge8rVrYrQcSvH9AG0DiC19WclT8xNFjM1AJ0XA2ZXyVSQbh4R0U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIUiY7Kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIUiY7Kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C6AC116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775440533;
	bh=6up8mtnWB04xiCgB/OSi1XWm7MxcNRhsIDzeoeUIJeo=;
	h=To:Subject:From:Date:From;
	b=KIUiY7Kntn4q45oNeMLbtCfJqaQECmjmKuOgjG9quIIDtfF6slr5eQYjL39SndAEF
	 UeWitAQ2nCGWxRYZOpleVjlBAck4ruptkCzcfm1QiQV5BJetNKqSTgooKc4m3O4m/3
	 mO0Um1xYm8b0B8RZ7OfQ8F7Dnk91zz68vuWg0uW0yHWCa5nbdUCl9IPaC8UpXRVu9x
	 etVc4ouPx1Y06+1YeuTNT04/XVcwEoZFJJDklRXVW1UiDG1TJNGNcUBrCMocNIhgjs
	 9lzGCRhmricTiyFJCHahPWS3BkZXDRG1StI8YQoP27IPygoRHZNUgZ9AbAwjDC8f0h
	 IHgeW6MO96Uuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69D6E9D814
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544053373.9814.6489497618589653241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f1312e8ee016c701e25d1be46ea55621eed0c7bf35a3bdf3330286722af9ec
Date: Mon, 06 Apr 2026 01:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775440533
