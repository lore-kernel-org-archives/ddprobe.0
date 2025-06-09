Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5894C8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749453594; cv=none; b=tweTNtSDTNbEySfFH6WeeoVtADV4Vaj1e7RIA8cDzounxuybmpKhtrKksWDcEG0DgDFjhChCpWJ74eExmjrdk79RdB5xnNIRIL/vK+yp69MeN5cgCUShkbZg1zJjQIZGjK0Pe1JzYILG1v1XpGleMHZ3ywmMTWhOdQEdw2qubSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749453594; c=relaxed/simple;
	bh=fYcwPAaMZLFOKNOqHaf0NO5iCiDHumwETXrJxlYvvdw=;
	h=To:Subject:From:Message-Id:Date; b=HQYYda0HQu3c+unwWMBATGO3kSOhswVnKYrPd3Twi22kN8eQrFHU6/PmKgoKpRxwesS6hmOEOXsFZxtAsnrnrJR+LOUECWmX3fraKBO6jTcwOLdlTss6IAdyH95pSPZ2cYx8zYPb31KMkrpqUtHowR8eQ0OinmP5U8uJaooQ4MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJkvLQ4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJkvLQ4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0897C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749453593;
	bh=fYcwPAaMZLFOKNOqHaf0NO5iCiDHumwETXrJxlYvvdw=;
	h=To:Subject:From:Date:From;
	b=XJkvLQ4YTYkZnTOQKN59h51G8o4USP6pHGeOW8ejZZdMJ7ttOKwbFin8dFubX6QL8
	 6h23lEUkyzls9H7yda7oHn0MKByTICMHPOKgguAaHYH130ywf8Dq6UTZOZIh9s+/7u
	 /jmLsxulSpU94xXcbFzSUZrS+RWFhgWt8ONb4xhevAipW1K216XqT05460VqDHQMQw
	 uImKrSQRDndOmkqdcLOEg4/VVO0ijPpumW+rHkxu/2uEtwa3R7/V8CVDCRqvSVc3V7
	 QokBCtek70TJ4rOnv+yTeuXTDlCoEy8M3ncDVytnCzNJlat6bsMzRJE8i3XrCdd+Zw
	 WEVyKuZ04TiqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDA2C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945359357.11545.5812972722417316061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e61f39a4e041ccefda1ab257528de72c3a75f6a1d00cf3caf8449ef298a6414
Date: Mon, 09 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749453593
