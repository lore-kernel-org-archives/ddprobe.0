Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF42C2ED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748350194; cv=none; b=RO8b1qdlVEyyQpzYNmAdZSMKMIdSxyjtRynTsvsipmtzIFXakbBWog/r2gsSfHW1p/Y8rmr4G6sbgGrcxf3b9g7/4ylz3hw0zhzCLAXQ8u4Y6c73dhoQrScd+d+vEfplo4PT2REepJBvmetk2O8SHn7Xh60fMlsR8DcXaw5mM6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748350194; c=relaxed/simple;
	bh=EPD5HGV+wpFE0Dk16qxHbge7OFL14bhpbBlb1bEotw4=;
	h=To:Subject:From:Message-Id:Date; b=g8fC5EgrOIxlb+TDuz60XNYn+etm7PMP2pZGog6zTbwtIMgtKWIN3UZyn27eLnIFfkqhB0wpIlqhIA0V5KMbKopiQ2G8pHsxpwaSZASxZSEOyB5G9m3khv3UhORa/B5fFDmKhN4SUnyhhFit4y1Pa+fXhOy4MvKeOJsQcYsGUTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9AULH+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9AULH+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD06C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748350193;
	bh=EPD5HGV+wpFE0Dk16qxHbge7OFL14bhpbBlb1bEotw4=;
	h=To:Subject:From:Date:From;
	b=N9AULH+fIzfrw0hkZRUIzLMiiWmbmrdxkybdNkqocHSUv4t+swM8IwrDSFSfPZE4O
	 6XBGC/T2+P++8TLh2KPWh068wIJ8Rz9msDWqqbz7xzuYUo0E9Qb8eVVcSzwnxHv2hR
	 6KLkzvCbwAtlQbUGHgPNgpquy2kNofkXE7O/2QH7aIG5XKBjB7zoc9u8OCihw5QE/+
	 Aj7fHXLxKSffxeoEnHiuAaJKvBNHbbhP/1HzxUbSXZlI2XW/ot39mLMpI9DOYVZtpx
	 GzUaSRCQeUjt+lePs2TqNroKvx1+74X84gHAyCjJucOerEun9C1zWOPdxic0DGB0aV
	 0NvFg6CDjG+mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF4C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835019357.12116.7330614900828050273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544206c51908f5b3a3ba9b6d0aa39d22527c6a0ba6718207d60f1dfc86dfc995
Date: Tue, 27 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748350193
