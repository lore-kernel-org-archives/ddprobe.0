Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115671F9F70
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754080794; cv=none; b=W+reun80nFggMo64eK4T70Wacg6mgK4ospcGxxJUtNQmV3qhA493fd80kJ5ZptvQ1VOnyB5S7O4jlINl+AfsK8tuyRRmT3MSSR77xWkNoJALs0SlAvoWqG4GpsW7HHSfT1HxFPvBiDg0Y9tzntWNCwHAFR4wXCpio/aZb2PMlg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754080794; c=relaxed/simple;
	bh=ECHCiihG1xlCPBhU3dEjNa3rQFyfDKugr2g5yNz+QTw=;
	h=To:Subject:From:Message-Id:Date; b=o7T4h3S7RmPFB+bvO7MyBLdjk42goGlaTueqHE8DI4d4NVzBf12m3lZDOHcw94PQ58xcXhD4bojfLYdwF8lo5KKNnrTC8XfQyO3R+8LDMpKY27x0deuuJQRmbf50KswdkuucOrwXNIIdd3V6cN/OcAvQGb6wa4tmMv3UuWqPvMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQht+PtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQht+PtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7DFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754080793;
	bh=ECHCiihG1xlCPBhU3dEjNa3rQFyfDKugr2g5yNz+QTw=;
	h=To:Subject:From:Date:From;
	b=FQht+PtJ9St/CdVADOOBSBsrtuKFs3V6e9eV5SOFNdF1uZwgcbx+1j60QkctADKth
	 9wTr8S6KZyr0d124vudXE27hYijysLos8r+Hy4kMmXAEbZqLXhGjqPrOxn0zmgkJWx
	 DnbDSMZPsZFxpngRjcb4pr0uzFZecr8WlB/QZQajyCqQK8PAtnWQcUtRSdqAeWItWy
	 xWGbz72HwcqnQFqQfIBQjVtWp39ShVwYyXn4q/kdGHuPf/QrOoAlvdCV4bx2yH1Sub
	 sdxkF0KlvFpUsiMpQXCA82Bea8ZHcMCmD9PEMHBnZhazuqaP8lvomauiamwFKNudQ6
	 s9A3ZumV9sQyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B0EC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408079358.26866.2932628118702924463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a14e4f380be8264c587a43d1cb25a6d0e1a3141631ce29ca1f9cb6b5ffe11af9
Date: Fri, 01 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754080793
