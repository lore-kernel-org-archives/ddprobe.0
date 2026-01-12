Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C44342C92
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768254234; cv=none; b=lqhzurbFkoTUKdl3NII7jLJShrfAMDx8quku4K8XU1CpkHz3+gYtf7hCwU6tyCoy/wM3q16xg4F/R9+6ydE3027Lge5Wut359ud4dFf1rLMTdZ2SHX/d0Gk0lYZvDdKROJMGYCzUkTZKAFNFO+UYBh2YbDaz5+FBxXYRaxBz5QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768254234; c=relaxed/simple;
	bh=GNArY59RgmcoqfhJNeHQ0V/ySUer7IagPgv4lkSjf24=;
	h=To:Subject:From:Message-Id:Date; b=SGtamFcMPt24eSIbDMdzcssCxrbl7S4bMP6u7h5k9juQgPqWjG/nLuQba97s2lI/MdyT48Fhx9TFVbQVAibKOtRQrf07uTX8TQiZzVTXlX92G+YZq6CJ4oq+4O+2Gr8xJmoG0Se41G2UIGvuDQAXphDRwbP5CMAQF5bST8LSt9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5T0O5bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5T0O5bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C26C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768254233;
	bh=GNArY59RgmcoqfhJNeHQ0V/ySUer7IagPgv4lkSjf24=;
	h=To:Subject:From:Date:From;
	b=j5T0O5bg/Stx9NqoGRxLXiPIKBAzXCd+aspq/HG2N4VxmXxqSCIzxRXnrZNeSI3Xg
	 9r+iStSsj7N25SJIDt6Jf5zejrJXcFFSXkMsQTl4+PcpEYI/KQ+Ht3A6/CU9FNQvxw
	 dhz32pX1QSGL+MULGkGtQlAWvdg9jmoAkgUO1RhxUB1I0cE7Wss6oikQ+P6ubLd1sr
	 //Tbc9CszoKEgCJy1YqMxHdoXhfGLaegGda1/tc5w09pY12kM1Dp/i4IOIpT8E9NPe
	 e1dTFK2+VminiqU9xFyremVeTb7YnCzcZz8Sutbm5M8f5jXcDcDVcf+uv59GTvtjpd
	 pw/dxpd76ApfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960C6CF45D4
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825423358.27583.11095634917461391990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19a0160649158a96c3e93536424a11c8b39ab0ecbd8f5398e98443ffad601d5
Date: Mon, 12 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768254233
