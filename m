Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3958C242D80
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745954995; cv=none; b=BA6x2PrGFGL5kBaNSIm5ygoqe/Ab4usr4+h3bNJ3YDRQr+2AKR4pUkapPdMctvOR/F/tYihLxx1afX7FxW0YHPeXkWx+BVIN7YwyNwbsA24Fnu08eRGFLGooLqDdGfXC8r8+/dB86R+J0RYce/Oj3krKq8ahYnqGYTwLDnLlOTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745954995; c=relaxed/simple;
	bh=w1dmsV7Cz+mWNRoo0eDtCRqpCwqO/7SfrmA5DaogWSk=;
	h=To:Subject:From:Message-Id:Date; b=b5PjYkLOcIb99V611Ul+CdjMtaMzqHO+O2S3H5R2APxmFddO7+MXhZzTdlcGtXlfzbK0NyLoUkuCe/nicOk5YmoMRM/fdYOt4u8+x8dUUChBFdmaKMN28ErHbPnUCLh++Yc4z2M8GSkCCFifyUO7Wc7/WVHo7njIywuvZhs+OMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrPcfsZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrPcfsZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDEBC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745954994;
	bh=w1dmsV7Cz+mWNRoo0eDtCRqpCwqO/7SfrmA5DaogWSk=;
	h=To:Subject:From:Date:From;
	b=rrPcfsZ4SUPg7pp96q+ATGN+gimM8Xi9WiVBiB+rM2zEjWOC5XNH0PDanVWKKu2j7
	 gvoW2r/uUZUq66nJ0sg9ZsP9pQMugJhfGJFoFHqWSLfr9UXLzTk4DHpWJ3NONoia0Y
	 t8Wgc9QayXoJHeDaNbux3fDf4f1Rixq8298QEyX6Vzta6SF7dpXFN1gtb3nF9rcIqx
	 ovllB8g8YV/hbQNEC6GedEhbNVbHaZ3PHpWYNx/yLqSZ6ruXh5ZlhYLroyDR9kZSuk
	 0EzSl3u/QZ0kwMqy88ATqSIqbDLWO19ntPbpKYnc3Br93ykpXVUK/WAyZy3ITToYMV
	 jTbozL4Lr0nsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26DC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595499357.15794.4506282620121975778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a4bf7a7cee5c830e3776a4aa1f0f89d487c3476ac724f2bf8c59a2b5cd9df4
Date: Tue, 29 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745954993
