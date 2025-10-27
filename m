Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1232F2C027A
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761544794; cv=none; b=o8dKugpNG3CACNR6Dua8hQ9ItIUY15qK25lyNtDQhcm7hVFbb3wcRimXYHAm+kZtRV3W/jGk3CKv9nGdn0v7VNybPcpQzgkHk5nZp3GRak+T0DvNoRgQb3JwhZ+9RQvZqYDlyA79ctHuV4oqiBdY02bP6IaKduw1zQQVLD+U75E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761544794; c=relaxed/simple;
	bh=mWdK8U7yQZ7CHa/dNyFHHvNRt6jKQoEQ9zyLeOp6iao=;
	h=To:Subject:From:Message-Id:Date; b=JSaMGwOkLRGcQsPVbqtjKf6FOX+DNItZ3oUp/UWay7tApP0OvhLi4PB0LxkHexkl9zQY/UMstKx2MbPZPsbdDjGqkhl7Wh2c2ei7jybLlagFycKlZolDwNw7LjldfdFGsF2V2CPWPGSPtgsilluSltlx5nyBWs76QWX03vK4lYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUrodMnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUrodMnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB02C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761544793;
	bh=mWdK8U7yQZ7CHa/dNyFHHvNRt6jKQoEQ9zyLeOp6iao=;
	h=To:Subject:From:Date:From;
	b=JUrodMnNnXXpj5BDAqZJpCGSFwx+W2qw0qKiTf4D0mMP1kxDY0uCwkLxEL7qxrtQ8
	 zNsdDcKP/8WMIq8MNG65sLMQeOo9gt4B9mfA8QGPkXtLLk/uw3AGAkCTvDbQ8tD2Tm
	 d3vIEnWluEF4FcStb/2cdkzURnSG946GnkbbiolPB7FqKl2zHert4GRrHCiU9K9kth
	 cnukRWi+Wx7rddqyPFETYPP4tahjJ7PmTQt5r2Oe/k2585NtROMH4lTxiXxWVcDx1D
	 7oOsOPexOV4RCPhU7izPbfjaIF/g9XQDXdVpbO70TMSmjgdATr8wp5JgsM7FiNyt9H
	 QPg3LtJqqTHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F062CCD1A5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154479357.24364.17895490206042273740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9804d05e93e2e7c58af61d4e6dbb63e2e640010e9635df2d870f8a80c238989a
Date: Mon, 27 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761544793
