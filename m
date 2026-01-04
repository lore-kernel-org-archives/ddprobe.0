Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EAF2749DF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767522234; cv=none; b=AFG4dImJ3BI6guwIrlPnOoqZCHfHrDN+mTDP5lkQQLHCPXLaySuxblL3Atiet18+0jil2DaNyagFgyGUh2IDyQjcz1MEvunOVWjA0rekeBBq6Q/Hxp399Phjbw6g8/BjHRneuVbC+OVuYUM4w+PtEWVmDxtr6BvpyABF8uwY89M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767522234; c=relaxed/simple;
	bh=LTACOlR3/Of1dHPoRlNRisqkX7iSOcL8BRYdMo9emtQ=;
	h=To:Subject:From:Message-Id:Date; b=J97LH5zGGYNQr2G6FEwKWC4Gz0JKXr3MSDfrU2xccXjW5CV0nYrr7PSOzKHxfACFy197k81xXiu4N9U/FEfKJ9/CzNkmkW38YZEx2Nsw0dKTRGNUXtsRWLYjW8NWCYUNDFzxV9m/qDZ1XAcij2mURwcY5E0PMJ0QNUZ5CAKhCR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLipMvPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLipMvPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A7DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767522233;
	bh=LTACOlR3/Of1dHPoRlNRisqkX7iSOcL8BRYdMo9emtQ=;
	h=To:Subject:From:Date:From;
	b=bLipMvPXBscChoXc8fznMbEnqIeG3yReqKUbU3D4gf4yppXTC5VrZXN1E9rzcLBzR
	 KtSPQyRgs8zpA8TpkuiqGEbZlOINEgt3Q6Nut9rKvQgKWtYUUz4rGPD7e4B8pikrKX
	 zN3A5FPNi7Ov6qhaUagW9khDKu6IVd2dzgBmA5JTFHvDK1EzWcYeSgyM/i+pPfjXuL
	 W/khz4TeZVTPl8OigxHDhjtMPse1r8K0qEQIGR1J39RccLUXhbLHhjDxdNmNdX91i2
	 BugE207rrfxx8R7AswmAvPWtVpnazMD5w8ihiU/vsEtB+Iv+Imr4TrJ5WPyIAYJZKU
	 CKlqA+OK0L3yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B60C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752223357.13094.5160753518014572645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf0c804e1826e7db433b6202062646fc75f4a228592db9d77fbda9a02976e1f8
Date: Sun, 04 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767522233
