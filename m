Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B0A34D3B5
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762128594; cv=none; b=daqRcz11Iw8in4HwcDZAGM+2rp1UunnnuYGIuXUOMWIO+h0OZMwS1Pvy0wazAFTaTDn+AswiscYTZ5uKZmcNIaD+wGgLln1ctYmc11hNjnq13Fv01R4g5tBE2192MGjud8ouqsPzfjJUPB3tzmkWJMfz1qzRHmyv2XZHB3PGhl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762128594; c=relaxed/simple;
	bh=qqT074xdUlNcBUzHjQ0k+g87eDFm+E415IHHnuUZVxk=;
	h=To:Subject:From:Message-Id:Date; b=K4rK/h3fKNSpXoxXYatRcbKeIhOVNiIBYdh+VmIZI32mx1sSSINEp/DSukbp7iV9Wjray4r++fxoQMVV+WQybJMxD/gzVmDBc+VTRBgom4I1Bf4arRnQsA4dxCsK8z8Nb1B+qvgtJVjBLkV4/gxYffFb4q6vLFGN6SXH0GpIxPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psS0swDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psS0swDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC92C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762128593;
	bh=qqT074xdUlNcBUzHjQ0k+g87eDFm+E415IHHnuUZVxk=;
	h=To:Subject:From:Date:From;
	b=psS0swDcVyM7sopUKtTDgB2ACWVE4L0+o8SGzum6nNQ+PalgdUYA4L2hdZDRaHTau
	 5XOfXzTvn+94JixXnha54CGm8vZBa12Ogo3v3fbu2zuBsdAzhZpIGBDFv4WtkXXnK7
	 YqOXmcM4FtgU0k2mHg0ni0PHas5hhJXzuIYbLtPdTDCHvoETcHA30Kef9tW/okvD1X
	 PyCbbfMK12PrX/29ecK8sWDRbGNtTlmb4T/5dGz0rG6Ip1PMmnJ83L5pZYVFMYZVLH
	 C5Tn6RFKuZ2M8VxJU1m5iOFcyq4BlvVNqTNgLvuTFvt4h5qtNbLhb+86fsDsrL+gEm
	 tZtbMPamGydHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F3CCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212859358.25493.11979728676074556400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20883cc9c4d60ebb79a9966c492adb6dff52b8c7fd3628f74d93887ac5995837
Date: Mon, 03 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762128593
