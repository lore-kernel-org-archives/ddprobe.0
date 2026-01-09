Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0621626E71E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767956034; cv=none; b=H3Gyffy3lA6yBGFvsQsEraaZSdchZqdkIh5R9ZDaFFbsDZUodNS/ZHaw3C6fAW4Qxhy9NqmLf49hPqJkJPaMzqPOJZgikBM0u+3EKbY1dBPCWpW53cUCRbEMfiw7E4JJXReMab5Et3xD0cgM0InGEdg6Lf8b4EopKs6Xr0ZAqVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767956034; c=relaxed/simple;
	bh=dyTSTH5JFzEnRlUE0rBOIciYPdFq0qdxoUqAWSDAvVg=;
	h=To:Subject:From:Message-Id:Date; b=Q+wsVIuuQ4rTrpFC5PVQvD/uj6BKKlc2wviyH9gjCQ/X7hsOhp3tzNTvhtjl/RF1eyweKP+DApH7x7FxMx5kgOmoqzI7kBLWh3oNThCydlOSHO3ZKa1X6To0hNycRHGP0QFqSYU27K/TPjMVWQEC727mcF1JRSo2YTDicrKJpEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qh6Soexd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qh6Soexd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8A5C19422
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767956033;
	bh=dyTSTH5JFzEnRlUE0rBOIciYPdFq0qdxoUqAWSDAvVg=;
	h=To:Subject:From:Date:From;
	b=qh6SoexdslLfJmhtRDL2buo1WzYCIoDXyReeurAe+LRLxzbLMaENgB5K7VhoH1+K/
	 oG3P01u23xGiw9xuFIj0MQS7uSEnJoCZEZUf2C69236oGS/RBlawuSSPSkr8U7GGns
	 VZBGU3O6Hb/P3csM/eP5RNW8pb5gR+sM4omHhIunQITW57ri2tRm4lH849s0TKxCzF
	 DqHNHbs8tWAzcfWitDOBJO5lyxQyeCgoyGp3uoBUeRvmcVVtIaJZZ3Ff0ABHfjFvKG
	 0shrUVBYBYRC8j+DOxu0UMETxT15UROE1i6ELpl3xOFygTh/CA/fmapRxkxqCOReS3
	 3n4DuySPyDe5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F551D1680D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795603357.28478.12023581998949461460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15cefa32709e8deb59dde268ffb3f919299c306cf6bef4c2cfaeee5541fc174
Date: Fri, 09 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767956033
