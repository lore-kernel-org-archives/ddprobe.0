Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D563296BBC
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769972034; cv=none; b=KHEs2zxPlX6IBEkH3VNeRUsai6PNIg2YAmPOnK1KpL8AUV5b3J3lwpA25Cbz0gDID8/AfY2TjD2lCPrFDo3kZ6fSj4+59ZYn3SSp16giMm8x9zFSOKl73TMKVnA3SmrkSRV6dPBoGUWaMY7xdwHmGO+qLtOAe22dreyAjstWlY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769972034; c=relaxed/simple;
	bh=zxxRxU+b8gztIpum0np/6VMHdxWLTg08SMlZ/8/ut0Q=;
	h=To:Subject:From:Message-Id:Date; b=Zb16O4J33pm/U+75EnYNWovJKs9a9o+zxkwpehfymrk6s+BBsd9lqTJriS3bnl+WMf5Vy6fKwhaNBAcaSeA/XmloXL+6oa85DafBF9AnoObVnuyk23ZD9QdlnegX6g6iNud4fnIm5SotZm9QoTKGnNfy1Os85gStumF+Lx9Bk84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbGGa7+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbGGa7+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCADC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769972033;
	bh=zxxRxU+b8gztIpum0np/6VMHdxWLTg08SMlZ/8/ut0Q=;
	h=To:Subject:From:Date:From;
	b=qbGGa7+EWvP6Wvc7DpgdT1bpHGvgysDV3alYpy9yebqLd4+LfVSBwj5rz0yw+Gmyu
	 KVPgknYWrrz3r0sSB8RJu/LNOnklhhotzmfJW6dFZUPed8Q9xfmxYtKA/QtT31gT64
	 yP5GlsoUsfl3xO38suaw8tABx8mfcWYIlDVO1Bay53ZL7lboZaYRiyHBnMLOVvfy5m
	 FtRgeDIDJYQmGq3LCPleI2VELX9wDh5CYieXFb8Q13GRVRgOgNqI5246gpCQF+a7Z6
	 iLtlBfbS1o56dDVhj8doiPvAB6dTN2o/6FDOrCCUjN4zuREtzk6i+Iv3/i9xiM6Tk4
	 hEQH496V+TjbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B190E6529D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997203359.14184.10187768540327506496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb900f9f3f4952dfed32e8c82b4aba31a579e441f1feed3e7c21f48b75fba89
Date: Sun, 01 Feb 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769972033
