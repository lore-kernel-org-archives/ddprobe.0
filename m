Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104DD17D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791331834; cv=none; b=t030D0H3xIjFG+Spn1vSd0TZo3WaP3NRbrWHL2GP3rCykOd/JNugT3ccP3DWDNQExZvACjurK+UHmgM0R/MuYketW+Lmt5tjW8q4mtb0bg6phlEHSqShID8cRJB0W6Wdf/XvefA97nTPf4Ye0yHNLoiWSY9TsiawyA+J72Zn+xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791331834; c=relaxed/simple;
	bh=RCZ1O/kqRTHe8U6bmch7+Zgft7o4u36Vioz9FCxpwX8=;
	h=To:Subject:From:Message-Id:Date; b=ntAD+RyyEHSvWS/aBu2eVNH5AyDAuikCcJyshijkPHFy2Ny6Xq0PPEx5EO3lXi3VZ/6e+DwqYJcZCBZ1FgOFEAk81zhKTfoAEc54Py85p9XLqu9P0O9zw/Ex/YebxCUwIy15hFHRqrnHlKkZj6Mzw2h7FA5tVcJD4X4xrFOr+tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6dZu3Qu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6dZu3Qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFB8C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791331833;
	bh=RCZ1O/kqRTHe8U6bmch7+Zgft7o4u36Vioz9FCxpwX8=;
	h=To:Subject:From:Date:From;
	b=I6dZu3QuJ1bw839DmgXFpNRy0+LHhJZSRdcZDWJQoW8PlmWov5qRTGdQIA4c81Gan
	 0seRG3upx2QGHYb2Xd+7zwXPNxLMECznYTuEz8y8HTig9EnD9x8dcRvGroksmDXOMD
	 hGe6vokUjA/oRZGxpvYHeEnFgXsGjQxYL9i+l/iwf8YHGq86PtclbqicJuUmeCKDU2
	 pFg0R5vVJPDMawrXsgha0SalFsxwfflFP5bTEKvZanXt0Ypxa7Y+td3xQBUEZuXTWF
	 ViP+26wNViJi6cy3q9Ne8YmltelcJx5KF7UIaKsofmHbU/zMTxiwdIuvUZ84rYp2Dx
	 Tp3pb4w/N0cRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB454CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133183369.3418.14302946950087255496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abe5938fde66d6ab93ad49ae4f8b309b0c4da40d757814d0ce170d5fab2eeed
Date: Wed, 07 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791331833
