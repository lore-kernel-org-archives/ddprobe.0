Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673A33E49C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791286234; cv=none; b=BSh00ZAJVXgvS7zLXq8rWXAopmK56UXj7PSPyQDPCvERM8kfEjasrNFSjQFig4zPBgOL5bW54s8IVUM3Bqg6DLfD6388OLGoRWkqQaUfwbpzjgcdKap6qHAPLq+MIUizcluDPtnv42vTLwI6/SSv6PFCqX9yBSKpxYFIiXS6c8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791286234; c=relaxed/simple;
	bh=0h+ILGUpSvmYciRrB+rm3lLugtYADvRv5+6oUxJzaUw=;
	h=To:Subject:From:Message-Id:Date; b=lbX6EP8XEO0Obg0mYfH5o+Ngtv29TmdCHQEBLhGQu5IK4EhT+3CCGFpPlJDt5mhfnr+hw2q3AVR4rMcWsJWh+t5MpX1Eum+OPlN91/zYUmeMF+tindp3IdOQ0BOcZLuROYg059gzcOuym8niHyIeHyyxplJC1g/iW2ePXfU2wa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaVoD55E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaVoD55E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E08C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791286233;
	bh=0h+ILGUpSvmYciRrB+rm3lLugtYADvRv5+6oUxJzaUw=;
	h=To:Subject:From:Date:From;
	b=kaVoD55Eo93ed0XBfaLgJJB7R/HLhmr6vBHaI4ykME4S56UC7+U0+GiyK2ZFqV76R
	 J0U170MEtmBgbr1ZIgLa5t7wMLJwqw2TXj/qc/eMWpDZw+9v4IBH79MyBlP1G37ZIP
	 pOskzlsF5tW6fTx61QJ+X7lvgXWUBbBPFkqfUuZBjvgOkfpPIFrmVamvLIv0VEnCV6
	 K6sGcW8QIUbQSmirjwOgmLacqf8IvJFqCam5uW5B2QN7jPGwAGx7fiPcLuP/Fs6re/
	 o/HOIR/Brm3TPEpJnxl/ffR9bu2GjetL5YiOBemXzwfCLTYYmSSK/kCCv55LMAPmQp
	 Vvez/DTsugVUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC417CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128623369.13477.1410306748531504115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685cc8426f49df1ef8043723136611b97f7f8132eff2ef169b47d634653dcdc3
Date: Tue, 06 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791286233
