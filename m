Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672E813CA92
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792279834; cv=none; b=Zlnn7mQrL+8Bkf0Nns2dwPGVFNezUmvXHqwyuF7xxJK3I2zdJsBKaxsBADYlyigVhYfS/DU+P5wns9CK2158roCQSUhSdJ+QT7WvPsvt20oDBp5ylVXxSkXkXlyYuo5YX+M0PWW7vcyqZQDN5ThBJjOO1MmF4+zZ3NY2xnt2kEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792279834; c=relaxed/simple;
	bh=Yy5KXRVopzZBPkTFj9YbiP9rOGmAnoC1x32AMD+2SW4=;
	h=To:Subject:From:Message-Id:Date; b=o3U0wfIyaorNFnEAwxkRs8RMcxGNNWrzZzvPMbmPOqDcjpPduB7HhqkXcWB5jaa5Th0lX4PJd8kRmKVe+P1vAfju95xpkF/LAewjR7rymLhk4jtgplRAfzP+fwBY4WQhKjks1GQMh5TRinKytHYx8Ol+zumx2NBZsFbmHCMUXO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOKRNaR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOKRNaR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7297C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792279833;
	bh=Yy5KXRVopzZBPkTFj9YbiP9rOGmAnoC1x32AMD+2SW4=;
	h=To:Subject:From:Date:From;
	b=XOKRNaR39PVHdHzG/2AQryX3Y+3cHdNcscsUaGUcm3y4I9TTIznf3W7eohxW9Aeon
	 J5MpKmrX6NfwPZqHeUCXmmcz259WL7JO9pAK9jLyz8ACU+gyjfFl8MpaeoeX+4bMGY
	 bn3nIoXf/Q39y52J9QGAe2E7ykaVo5P+rb+RPq4XLTS+Kon+vnDoDeTpZ1uWiueIQr
	 sfHfVrG3avho1Y305YmKHfxH628hPkiov25TmotSoc3bO/05RXVFyC+Os27XRqFON4
	 juYAwM3iEp3HLpb4Qez5TtU1aAQWqqbC6Kc2gpaf1Oc9u3m4OedWPGW/SEIGtxDtZN
	 83rSV4RLGrIsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3147CCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227983370.5309.12697344284037232812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cf778b4f3006e5157b74301f21de11748d31ae6bff48aa165cfff85b7898a6
Date: Sat, 17 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792279833
