Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195F731ED72
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766666035; cv=none; b=jB31nezK8hdXDZ6WXcvx0/VpiSfuqFdZTCSlqwfiCJ0c5fi97XaiHZc4/Z8CeZjPme5u1V86RR0XbY3OPX/ayPfkg3RBwYFUigVlb6qql8DfDR6rH4o0H183s8R8JEgY7MmGD3iCkSoHfTeM/ERNOuZlsL9Hv27bUd+nIeCbzNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766666035; c=relaxed/simple;
	bh=3Rbxeb87aCvmX4JLoPGsnk0mhTvc/s7qPFKhXHO/Dxs=;
	h=To:Subject:From:Message-Id:Date; b=Pvkft1L6ZjaJDrh63TOd1VTA6+3/xRog5soihSUg2yaeBExjGlE6xwlx51IE+iV9N99QtvUBAdMtV4HDJKOvRYg/sACnfnR2qwjyQgDTemyGo68mnqD2lypOt6j8yKWP3XftA65tX4KnT6m71nAehoxioqBXisVti/QuKf9BO5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WW3E2adw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WW3E2adw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A478EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766666034;
	bh=3Rbxeb87aCvmX4JLoPGsnk0mhTvc/s7qPFKhXHO/Dxs=;
	h=To:Subject:From:Date:From;
	b=WW3E2adw736FpNG7AwEX50XLBAOasRRIZJJMrtlCygKKHTMbYAQXvomaIHWaUpqZf
	 LDRELgyJSD5px3jaEGp7SRo1Bb/Kf86m/Ft5P+rZpTQmBAgoWiGxGe0Kh8FOEqpagF
	 fQEHcWzF7e5U5LocohpLtmo2fzs4OlNny/hlSBQacyQI70Uy1V1eTJB3wpGMGkMueH
	 WPfQm0+btdjddcuyGVYoy81R/gGnOeDi4TzLV6v+78qJmsi899zZB8hDPI8zRGkybl
	 4nkxEcIIShUmOQMkGPwA7pV4X1spOdIng5iijEfn+YNtJVctOKMzjBnKafB9ilp10z
	 ap/5UDTPodVMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C0E7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666603357.22725.15686595884804180694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ae6b43df017348941b68e88359c2a2d947d18db15b94f5f7232e30070c250c
Date: Thu, 25 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766666033
