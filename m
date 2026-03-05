Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F8534D38E
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772744694; cv=none; b=G6g66TKx8xjkJTndqXLFmnOS8xVUDFGTWu2xktMSXD1EXKZshICSz7EJaEXtpYV74QZFVz3B7ufezjw21j727onh0hCeMf9DbPUgJfF82+5zAzJPhpxj1IDe7JhsoBKvEs+otb811TIpgYtj2hKaKnPgsSNL2bYTc8nHioLf7Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772744694; c=relaxed/simple;
	bh=cOT9W3advqY+eSn3aZSRs6jYA/1GAMq+r1JBcTKt0/c=;
	h=To:Subject:From:Message-Id:Date; b=a/llwYFLmgOOqmPdx8ezuiwj5L+TXw4KYTaqGA00Y/FdTR3AeV+/e+wWPuzx38EgcXCrXLdzKmcDVFHCdmx6hMpceQ7o73o70eeX/yd+GbC0CdaXeM/ZbItEZUeB6z8haD716NqddA9hVDCdAXpxP5dByVTqwAvOhsGqxfTo7+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqW3njb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqW3njb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01A5C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772744693;
	bh=cOT9W3advqY+eSn3aZSRs6jYA/1GAMq+r1JBcTKt0/c=;
	h=To:Subject:From:Date:From;
	b=LqW3njb6pEejepu5DMdO9JlLXzq0VHJ1IkEXQbsOSRZ4MHIBQhenq1n8KdDv6mJWS
	 q2mFTmpyCuGeYFVkL3fjOLhU1bk86yT9rEbV7RoU4H+8+YtboWFsspSDky7OCD9rn5
	 nA7UonvETONAiSnz94wiWTYMZ+mvRfbNipPAvIJ9LTokmUmXwdQ+gPUbLrJ77sDquS
	 mrY05gb9fVTuvHKsVzQI2QKhi2a47iFMymXigbHlxrZNXt7I3UdvZ32YURlXdppcwW
	 ntpRKOn+4d+Xj+Ig1A26+QLNYD5T3Fn1W0Oq0AaJeghvHnveJf8P2yKI3FTojvJZ2+
	 VPqbZK3MNdtEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F44F47CD8
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274469358.21042.8707559638649541892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f72a52efe870f0496aedac24fcf47fe2ae4bfa6af223f4a79d3dc07bd08f64d
Date: Thu, 05 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772744693
