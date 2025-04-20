Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C9117CA1D
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745188794; cv=none; b=psV/b8Qys3uY6MWKVmC7TTzJt7Q3JrHecNEMYoOn4q04csAq1C2I4T5YHelBuua72O7MPcfy5+TNRTECXE3UCRt8WXSdF8gxX1L/QxDUwdSWTc2CyNqukY/6rFZjy/HVV2hxRGNPHKj9qXE0iKmw5mUQUqJmGiquimBARnx8xVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745188794; c=relaxed/simple;
	bh=/bPCklYlnhcjNjrnzKzSL/erEGlKSYUkPnhMRSeBpfc=;
	h=To:Subject:From:Message-Id:Date; b=LpvPsqvevb367a0BlV8fmiynnDwnLBsLtgnzQU3jX0icfjGGv2S0TvLPBivZkh3UxSp/IXwf2ZrOCKZtf0He0KwjFpffPr5Lrrv4z49CEG8ltQWLh/yH8TjkR5bBR1xTep+g0IrfD+5ObvAq+JtM8cxHAYfvPHS+WQTsknyW3yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8CaFyF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8CaFyF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0024C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745188793;
	bh=/bPCklYlnhcjNjrnzKzSL/erEGlKSYUkPnhMRSeBpfc=;
	h=To:Subject:From:Date:From;
	b=p8CaFyF03lVx+MP90FkJ+CmaOTI8QlRq3dHczO1k2HPeyGKWKyhC8/i5hurJZ+aaY
	 o9VJkrBAJ7G9niMELJGrxNiebvpc4Wru8bugBvx6SoGa13cfns6G9u77upkyzdQ61o
	 dSbT5biTkir/kBKOC3RTHX9eD4Kvu3jEzVw+ZEEuC3HgcE6xkdvSl87BXxfbo2Pe69
	 tpTBLgBdTLt0E89Fs0yKOJTIYFY7B5HzJLb7B5deoWAvjUBkxruQsVRuOaE2dauCiF
	 ceGlm2Fc5zDSreDteABAfGjl2TWedrefPk+Q+pw3MLeUUv+dhm9t5uSiUwyPHZjCGB
	 eoc2nMAJiHFOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B388C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518879360.10567.457947340321828341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9826004c2d3557234a6cee705a769aa088c502a82341430a730a4a624e5de405
Date: Sun, 20 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745188793
