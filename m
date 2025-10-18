Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF88CA6F
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760797194; cv=none; b=UJf8tSnlNHZHjb4bCGNmiQtSeAxKXtATlALWtZpWDTIduZsEP9FdLTKSd3xincUMbcNfnGKj0gkQu3ujlhIChMBf/pNXIcVp9InTGpv1eHWE8uukHq6vdUdo0p9Yn8a3MmckLTomaYFE94ZPYIUGq6JWzb64o4zWG4CNV0zlq2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760797194; c=relaxed/simple;
	bh=FOE2KVvlvBzD0+5p+X5GXouI8aDyzZFJOWqXgAVUNW4=;
	h=To:Subject:From:Message-Id:Date; b=B/ZLRXTxDiCBxaNRgnZxrvh0eB17r6tJY2ps2E9NFh/ifemaObqW4HqL4W3brGHLkNMbIaZIEtgGB33czEvMnw7Qj3/v53GeOqE5oG2JhIPe6G76GY/MJISmtpvaOcpvOdXKG8KH25SFftayyId/ovPLZ1cwRakmTGOsIOP/BZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9+B4NvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9+B4NvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A61C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760797193;
	bh=FOE2KVvlvBzD0+5p+X5GXouI8aDyzZFJOWqXgAVUNW4=;
	h=To:Subject:From:Date:From;
	b=N9+B4NvKsS2tWlnK2QDpf6RWsHOOEtktFEH9iPKjjvqCLzvoBxfXZBe2KJ1V1upTU
	 rCGaoBGZLLjIwPQDfH8nms/DpifEQuH9DKvIuVtYbgTR4wE0LN0QPSTDS7ChffDSVd
	 z/8RHynR2Mj4An97lHVsmVvbxP6IaLF4rJ+IwU+C9NjXVRd3cWMPgSD5nu5wRgPoTa
	 zHSCJfUIx1P4tkZKPPrDOb+9JiF7n5OnrwlNIUMh0Sfon9aEmHa+qADzOIGFdhMXuP
	 4auP7DG/sMJ3XKt7B56rjDXIbsJh5n7oY8uy6oL8rl6MyMs8z7967d7vZgyVW2+K5m
	 2xfj69tMuX6yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B0CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079719357.32197.1692847932578313915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43749eb7e9f313641cec32011011fdac4c1684d93bcc80912fe266e9424d68e
Date: Sat, 18 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760797193
