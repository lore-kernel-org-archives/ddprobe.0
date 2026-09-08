Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5596C26AF4
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788849634; cv=none; b=VMTy4NSWgj8Jo0ra0e9m4+IxBcwQX/MUPFqxNfD1ezaSGZWnCR/PsS51xkfAaJZkrZfi7gkFH2SRbMBMkWmhLCKCvT9toT646n2kwpLuqo53YY2m1tG78i5bFcNWv64NRzG+8PVnga4tD3NZp6lbwpQ2Q1AUsNhnHwz8zDn/2xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788849634; c=relaxed/simple;
	bh=LSJ+6KUiO29pyqjhVqkQaggl/qvPSvh24Jo+NWxiNjE=;
	h=To:Subject:From:Message-Id:Date; b=bzatyzvuhtq2dTQSgMQDEfYsH/TpOt/dokakF6PAij/K5PDGX7GddYsByi7W2GYFSEjzECJdPWt8WMsWwSxFVbNjrg7s1I4LxFjEt+DWJAQQKW2HjpID0Tc53ekIQH595RLI9U44Da73QuIWN+e8rpRyvYIhkJWGyYNjA1o7bFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrnGtcTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrnGtcTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1444C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788849633;
	bh=LSJ+6KUiO29pyqjhVqkQaggl/qvPSvh24Jo+NWxiNjE=;
	h=To:Subject:From:Date:From;
	b=MrnGtcTA5rf3w2+6v8gI0BonQHRGhIm9Qo+FDZTCYrE18W4kkY2SweDGinzuMVWSG
	 JNNRdsK4FbsxahD1A7/whoVZeqZRNscYsn9EWSG/9YJQ1BH/HjWmqWmtMqdNHQVtLt
	 HZ/O3Y8ljb/8ywr9+3v/i2PGI6IewYJAHcjsC0g2PvCWibwyMVAaFKDEvs5iZWSm2i
	 Ws/EJipmpeFPXtLPzTWm80VITiMxj5qrO4/v6QVgaSupGTgV/bRhkC6wsz5MALnlAH
	 vz11zkzBgait12iIUAiDFEtV7t6LYrnkfupP0pPtlrypCpFc24Z2PTBjV5cA9F6Jsd
	 xpTb0KLUNcxzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB37EC79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884963374.15562.6356348609198096303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d87cc8851d51a9fec258069a76bbaf705cc935a4beb6b536e3ee95ef025856
Date: Tue, 08 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788849633
