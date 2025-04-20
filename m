Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534FA2A1C9
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745180394; cv=none; b=EnnUOoBnJ+z7R+YdE5LwKJqX+E79jeOLL2pmkQDmry18HvxtVEfFPxBRBH38XPuH6AvOhronu17VGmoHTmqkJ2j/oYsftJsM4YzWjagfXFssjPXluNzobE3YTcqTSn/TMU9iy4b5efB5QIsUX5tURXGLAP/AF/dPPq3b45KAxpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745180394; c=relaxed/simple;
	bh=x2AnGygLJNEizmdNUl1rIWZrvWC6RkFLusuElURPM/Q=;
	h=To:Subject:From:Message-Id:Date; b=g0P9tcZO9hZ3Hu3mvXpv698m2i0PEgzSL3zHimaM98h0eb3JVO29AZtQTUFeeZKDC13MGy7MBfiSl6bh6NchTnlrT3u+GQFJo502V7IME4F/i840j1PPFCQs3yV64+D1DtJ3Zf+nP3QR339JotEPi8s5ae3GuFX9idpxWrBAfGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igNDtXvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igNDtXvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8CCC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745180393;
	bh=x2AnGygLJNEizmdNUl1rIWZrvWC6RkFLusuElURPM/Q=;
	h=To:Subject:From:Date:From;
	b=igNDtXvEXEpqPpoHyuVcRktFjMB6uLIRbRnEFoOkjVjh41fiswQLQPIZ9xaHkx8en
	 /T+QtR341WfJh7Qs1AX1i6AVcwhb76yV4TyH3UWTNxUsdvOSsEEBVV5MiJalzKJmTD
	 jQqPVn/nSmeK3bsHqZ5SvDdK9kMLlgcmZUOSC367A/XqIYP+lTbHt7DbXKWmtzkhhp
	 Zfr1yybHKbHPUdfNUzme0+HA1lfsGXoN5IoQV+XWHKxRMVG07r2aVFt90jOABZxsCI
	 FTRfcybxlQn0S9MAx0u4REftD+Ms4iOiTbCWHYejcbj1h/8XtFqT3qTyPQgYh85Sxt
	 mG8apr/5KmD1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AFEC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518039365.14562.2654701274245246454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f287944dedd63c5f3079d42ef6b55e3713464deec307bebf7ffa653d3408c717
Date: Sun, 20 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745180393
