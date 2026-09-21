Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0D533DEC0
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789962634; cv=none; b=iJ8xd/4M5EHTGUJ7YP46C2XGaO/AxH8hIV4qvTi5JArxi/gaG9Yc2OiU1ANbFqbn9fE+bKpL9WljZ/bAOOdN/5ncpv1Dcwz1eDFN6go0d5dnOhnvd1BKli6la+C+BvjUg8/MqKvQCdmBdcR4QR7kfPaMGTjHRrIVaEpDIwT29AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789962634; c=relaxed/simple;
	bh=6/Ylvx7DBLI9j1eDYsSRHMAPxUFGBwdpzzrYXz15+4Y=;
	h=To:Subject:From:Message-Id:Date; b=RyQyIa6tx0I4sbXIqrjwEGbRvw/tJbPRDitPUCs5hgweQIT7WcpCRCa/wW38zd1knxrUskWSygrv22UNxsEPz+qIo8jStEPqwIZX46wHC+nl3tm6xdGEpPwN9SoSYEFAgSgOD4gUV7li2zEwEeV8FRFpLZA1mlesiUjIjx66crs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pz7etvg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pz7etvg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B57C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789962633;
	bh=6/Ylvx7DBLI9j1eDYsSRHMAPxUFGBwdpzzrYXz15+4Y=;
	h=To:Subject:From:Date:From;
	b=Pz7etvg5lh43G00ZMXsQhq2Ybaxg3ep7lHFp9oJDIMg8pFODIl4MDK287wq5EA7MJ
	 JdzWKuur09BTzmdEAsDR12YjJ+EVDlWOoneTguASKbCG0qdpvuU++2haLbyiOn5NpG
	 cYlc1LN1pAVqwHW/bY5ulWJuv5GIMZAH5x4H3q6Xjyt/vxSUBY9vEYBnO+URwN9gCf
	 03cPHskoFWXowUccRWqGeakRHBOKjCBH+YwR5Xt0RDScl0hLaEWxVxiKYT6KAOpIPM
	 l4GywJtimlU9OONCl+rQtHSrTJhpTzm9+nMyuUmhXBzer6MmzGZToCQtHufyGP8QF5
	 zDVQLlkbFqU4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9E8C982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996263375.17685.8955400979071410562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7291244f1cb72e9df40dce41ac1f7aaac5bba76bf3cd62c95460848bd6dc36
Date: Mon, 21 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789962633
