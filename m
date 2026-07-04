Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA7631DDBB
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783153714; cv=none; b=fhiE1+iuk1490MQgotoEIhxiPHMTyB2M2L18b2omAe/okltzCBIBcnK+ng5FWp/9Rroeua+ORoOBZn5dw8tjXIPrvUOIdK6F+5seb5agrF9Cr0zIoXjYBDFeXJzezjlRpbEcTY/ozAwtgiVY6H7qgsEtznDWrobbgSp7rH+XdrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783153714; c=relaxed/simple;
	bh=MLHCVjqYK9qmPvT9EMdY4QUJV91x5ugXG/FkaRKF7bw=;
	h=To:Subject:From:Message-Id:Date; b=VEudFPI34Yie7gLfwjaItz7tSXOzTFKU5pVfGHKvamEbnlCTfYYCAvxixKVNd7qLg/p/spe+jFRFKLEu8t377sEnOX6K1s6PoWLuPQgrOCzElq9UXTa5nKjDNDRKTMoBxUdtjm68V7iZ55YcFlayZuYo9mpEGZ0xygmZlvCZ56c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wib3Rz7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wib3Rz7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77E6C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783153713;
	bh=MLHCVjqYK9qmPvT9EMdY4QUJV91x5ugXG/FkaRKF7bw=;
	h=To:Subject:From:Date:From;
	b=Wib3Rz7EwgCJvTeS9aCVQGrl13one27Wk9W2idZLtJuuuRZSSadNBmL/NmlhO5mPR
	 L+VuPKca+HNF0fr/MbStq2H3JK7bvUGGgmvdKHfXcYcRQzF4cyCSm9BUby5IrBZdii
	 xa7UvPBd5+6nKNTEGNhJwcw9qWDq3p6rvQpOkAS91DMvKi8uKzCv9ie8yV1Me3aLiw
	 oK28n22YeLSq4oVgq7Px+QWk5CndIlo6zM2M6f7AzcAVSINCm3cqZQdMZ+mxfrfLg/
	 +6IMkjVG027zOlI+P1mwRnUpFLDnd7eOVrx1ZIpPD+dUsRJMr+Zq3TsVsmI5bKbJQg
	 VPYPyVMP6dVcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88CAC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315371368.18989.3522301169742056666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a31faef5e4c1ca0e54b06f7db75db2d98a98df331b155632c00647c8bfd76a
Date: Sat, 04 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783153713
