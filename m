Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBD427B34F
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762022994; cv=none; b=faxt2uN+SkVLZszZhrlEcivbaOXXruGReABCw8MmA+RZ8ye46T45Q3jefgFExuSEOeEscjc4EzXGTuUfP67zy8ucsTg81dacWIhMReTUyxuQKcaERuYUXtfyH+VvHJcdK5p5uAVyhnB9HNN8Xz7djxOpPv4/2hBx++EzZbNuKjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762022994; c=relaxed/simple;
	bh=hRdR5ljWnO2qSycqBxCOJXEKPLx1/ucTv2lgfbNC6d8=;
	h=To:Subject:From:Message-Id:Date; b=JdtuSEMyDo7DwJMLxIqETNJXcWgNOvmK9+yNWGLM2N4l6xbRD2tEbMtiE5aIkRG4izAvwsudMomRaEERGD4YsFeVa3TWOxKOKfs/yvF1AJIktZaK1hcO3+kK0FadDCC1ojd3z8zE42FMtvhe6iF6UIL8Su2B8lkCavKB7q08c5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaR7G2SU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaR7G2SU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4FAC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762022993;
	bh=hRdR5ljWnO2qSycqBxCOJXEKPLx1/ucTv2lgfbNC6d8=;
	h=To:Subject:From:Date:From;
	b=uaR7G2SU5pJ9tFBzaxqzwrlPB4MsfJ03BX2Eiz+rs/6aRm+2FHj4Jno3RkvsMWRgc
	 z/Q32AHinplvrMO/Zojhd/QV8LpQr7qv+4BLSBfX0NQhuo0tDH8R8WVHCaOXH9jZZJ
	 BK3eaM6AWSzlpwPXpt3IDieBKL2cKDFtfXV/ZJZkwY+CnuXZTwSzflz58OiwBtMn1U
	 ckfmCuweti9OBatc8CbeVC9gAGOvhOydQwoIaqe0KC3sLCxEp4xlSnhfEqVkTfr92i
	 sVrbzHPcj2U7AWtOEj8nnhnUtN9uwKIPNbRgUsFxzUxtx5pVqS7TIHQqy1P2jqevPu
	 EyV8DnCzo+Uaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABF2CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202299357.31323.8008786345698203249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f0e201b7ec5f351ca392b589f5c0b1e7f1664495686947576c70bfeb1d2d97
Date: Sat, 01 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762022993
