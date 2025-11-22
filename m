Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176321D435F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763841114; cv=none; b=MOovFps99XZY7IShKLzxd5QiFVDJQm1u2n86HlXct4NQNezVX/Jpp/A3glECR7X7MVWLT7LxZlxuSszm3+xIrSe0kMzfeFemfMP27NSPAYYof7T6HyJJdqxftP5eC1XRr4kTiiyfMQMGsd2P7gYMCeMoSF19qfOVLm0TgBfrosE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763841114; c=relaxed/simple;
	bh=rSQ48t8aYm7s9v3z1gDmt5wgoJHnMlODyzoXx2Q9yoc=;
	h=To:Subject:From:Message-Id:Date; b=EpR/evlBi8sVhml/N1S9Oy+suIbckrHTomOTt3AWhqOLLjkE701AVII73TMRxtXi3TvJLCrsI8yG64IGveXPNR3sP1DNV3sBbNEspB1Nyl0dTNBlzKqSt4jIPUPYEMd7xDQZh9jw9NTZwqNAGCvKibGzZOlXsVDlXoyhECsM8uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtGMgtM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtGMgtM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A3BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763841113;
	bh=rSQ48t8aYm7s9v3z1gDmt5wgoJHnMlODyzoXx2Q9yoc=;
	h=To:Subject:From:Date:From;
	b=PtGMgtM/tCgkg5v3Cp0ughtYSF9zBjf8Jobea359/BUEO4IIHjBFfH4toidXpQUxW
	 S6cGIGBPS1/hKPuA8u+ga6yJZuQH9EDzce2bVQfm5+S+seWmImKyaQd4yilcwaElxS
	 WKNZeD9g+izpxy6bAEmoQphyCllY3VGhZ3iA6LjY68X0ejdb1jtPSxBovpWBknBTX1
	 Y4n73ji3cObdXlYdGEs0BN2ltLKS7SxfcBlrTp6LF2mxEcKkRyBGTcWrq2754hLuHx
	 bVJBKoLRKyQ7Z6qHOGIgdpIe7/vanHRY9QTKPJN7A2h3i46yTrDOol6HCyYTbuYAay
	 jTH+tMbPg08UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9718DCFD2F0
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384111358.32023.10105963728044941558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d802ab58f90292a9d9fab1120f53b98b685becd787c8c4e6594a8906cb394e7
Date: Sat, 22 Nov 2025 19:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763841113
