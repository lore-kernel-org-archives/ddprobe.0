Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A5A20ED
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765242174; cv=none; b=UaFeh0mX3cvjq+GxKjkan+S19N9v9n86WIQPDIHdHH/B41/4qGt59oD12D93m5PUYWitTpV6W3hLBdWZ0tCh5NAslA8pGJgrs1suTpDKSV4AksCJ7QJI7lTvmqfsWvdsSkX23SHdpVFhMddI6iZ5cikrdz0pj0QWjaAoQdSndUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765242174; c=relaxed/simple;
	bh=OynCndGLCGbFvZB8+BJ5yNFi/j431gnp79becmIouHA=;
	h=To:Subject:From:Message-Id:Date; b=bCqitDW6sOsVxJa1/QDrqhpye4VcT1qmmgo3HWV2d8XunbfRzAVWKxTuy1yLanqGGtuTVhO1myuHmaF6EvqbCqZtmGXP88HbcNe5TIZJbwCIMBSeWgwU+SVs/DLI1dCRSGISqyPdo0e8CJ05HFGD57OG5bGvSK2S9SAs/LYxjhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyPjxWz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyPjxWz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A41C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765242173;
	bh=OynCndGLCGbFvZB8+BJ5yNFi/j431gnp79becmIouHA=;
	h=To:Subject:From:Date:From;
	b=dyPjxWz2KqlIAfGO/HuA6jrWjuOQRsfVIXnj5poUddnn8sefr5nzvbTS+CF1q0Ryi
	 83XMkqJR5h7u2Ax+yL3PAkywIX9k+9C1UEtzTUCgPdMyIpONVqQATefNlumYlO9HNe
	 81YCEHZcs6Sksa5K6TkOnx+vb0stu2e6bGIhnyhNUExeDkbgz11jviJTuCx3u3ko1s
	 L0ZuNApeITBHy403eRSdRdrNH8njB7dfwniM3WQ7aiQnZDYDmPBDIhlTFjWeFzQDdy
	 1Rs/PjQUj/1UK3aICHTVbfALzy64MrtD9+oQnny0XImUQ0ILStUpqbIzfERWQr8nbD
	 gPOdIpieTYZ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B6FD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524217359.14123.10483483383021358440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679f1d863629dd22f2ae31bf5e9e61350d7039f7f2a8aa958d0e3dad9aa62ad7
Date: Tue, 09 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765242173
