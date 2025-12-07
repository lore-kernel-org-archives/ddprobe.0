Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFCD1D432D
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765069374; cv=none; b=d90ISWeYoSt26mygfrzRM/jeq7cd4BM8E0yDvCJlFfXZW+gP+XnCAtJfwLI7Lgn3Ci3tAqGxUSUxSqGMSCnO9mkPiBIbcm7KX3db4Kv50bPRjRt1wPaMI+GtxFLIYma6P7+i4cSqiOE2VMDOLvt6fwqkgn6d5Hlgz5VmN64udT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765069374; c=relaxed/simple;
	bh=EAyz8uq6kH+B9l6W8+a75XLd87Elw6Ys3PZmN3JrPzI=;
	h=To:Subject:From:Message-Id:Date; b=gKRwSw29a/0HMRdiHM4XRmfjw00Wvn5R41P8/ZSpAc5ogycn8H/k8sQanQqs6raPoqooQzw0B1/lPrXNeRklzUTAri9X0ofqVm3AoTCukduzQwzVtnAKeBIlUuuIjkQl2bVqJYAwpQullN9deQOQWPIi0t7QKMWUDo/iIPPtK5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCkdMooZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCkdMooZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3347C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765069373;
	bh=EAyz8uq6kH+B9l6W8+a75XLd87Elw6Ys3PZmN3JrPzI=;
	h=To:Subject:From:Date:From;
	b=XCkdMooZduuYhyVDTXkgmIGwqd0OliE7asq/yqqcUI2/PacFFy1g4dvUyvcy96nzK
	 21D1UYo4Li7Jxe1dgYXbgxzwTewK48J2i0tMpOkLvfW1nAwPIvw9H6YHWZsFUxmn7L
	 4phNfybyIDi9U6njfp78tAvdkMgkMqeOtVY6QtSjGsC2Iqpc3VDJI1R0UqKXkO6BKr
	 J44GEFpdqZsyGNqTCRTfjrUmCTmHLmFgZXxWV0r0iam3iIle9b76oGtvFDPaFd3Dqx
	 zBRRHIcxPIvIK+oQfUK2sxKavTYC3Hw54bYhJrp5MS9ycKZP+Bta3uDzHHV1r4jMer
	 R8iJWgHdRDJYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF8CD3B7E1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506937360.30219.898782862416806068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5304f9a5b2c9f4784c17aab9a6b851d885063373cfc65e8fe62286159defa7
Date: Sun, 07 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765069373
