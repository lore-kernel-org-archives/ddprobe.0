Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9C31A5B8A
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752683993; cv=none; b=GIE9/VNt3ngiRgRbzoKCeA3UgNFAck58EvjPk9ePZqdF4Ulj9QZXCF413FKhAcvkebo5zRIERKLwdI+cSkj4FcU1Y+FaTAzn8vNv3B7CKycSLFw9yvmidHUOUHcx/ZnuT1S2X31cfi8GBkQsowAoNMx460RW1sZV16rKpV5k3zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752683993; c=relaxed/simple;
	bh=/NK19wZ6GWN6M9Y5VrTFx72i4m8UgVvYgY7BvYYyL7U=;
	h=To:Subject:From:Message-Id:Date; b=rChzANwkm+tS1Y+8+DHbVPwg9miVzzEFVt85TPVT6IL+f//wH/2I6xQyKvx77DCgrSmMJYpNK+N09ehhUvPWYXUFW5JiYyjha2YCLZ1iqkVK1NSOB38a0o5CRBpUMt1WpK94OKTI3MDLhukNEXzQaJGyqToYcRqqLTfg9WXSzX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0MMZH7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0MMZH7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E7C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752683993;
	bh=/NK19wZ6GWN6M9Y5VrTFx72i4m8UgVvYgY7BvYYyL7U=;
	h=To:Subject:From:Date:From;
	b=o0MMZH7PXgwQuWQAgt+t/hHlEGzZpS90cIcko/3MfduWS899+AbmNpRJvBzmEDP6f
	 xwBOkNB9tNPhqi3bLySsG91KtDtiOcOd35cosnTImyvvnbMK7+BIYHkbp4TiRNPaF/
	 0nffkyYpPr/+sVIufETnOtTU3OUOEKt1CZoUOejOBFCohxooG/8wiZ8o9cz9eGnwYg
	 U5zyHps4rCoKJNcMg09OT3IwVIPJovm8IlAuJk9bOjrBLpyZS3mSAkUEf6PikZ9466
	 bDfJy/7pmMiyZQHS+AaqGf9B1eKn81S/FVmNhaUDMnlvvKkn5ObBg2EqEORMfsnpvD
	 lDeInRfCAGSwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E870C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268399357.10186.8343615538139701621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1f5795afd9c53d1f7354f1f3199a5527b6b65b542d307e973b2ecf88c619fd
Date: Wed, 16 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752683993
