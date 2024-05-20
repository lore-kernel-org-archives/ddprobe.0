Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A6BD53E
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716172943; cv=none; b=p+2v1M00JJ2vekGqCFykGvIPEv4Cx46TmxILPXas3paY3wlgKjx3JskVhC9arzMduq+ZnJIzSkYS2zsEU5h3LmJCz6h319P/7ls/Jn80859XI/KAJUQtKm4rNxXi15O9sK3kRomEFT8457H0jzTepI8GyaLsdnUPlGCiAXhG8Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716172943; c=relaxed/simple;
	bh=2f6HPQteo+fEdnr0R+aG5JP11LFziHgfY5b2V3v5cMQ=;
	h=To:Subject:From:Message-Id:Date; b=kAeeJ50YbDcdmScDougoc/Qh4ryBYx9x2m42sOYWXhzSihPYqggNXP+AmaVh9/ePFxw+H4exS6fsnEksISzVSuOBqYZofL6x9T115iSej4fP4Bo+ALwBdjTHjGvvNT3NKVD/ahoZGpApmMyY716fyvjmrpApYXW3+TxwJt5R4Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyUUOhiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyUUOhiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF655C32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716172942;
	bh=2f6HPQteo+fEdnr0R+aG5JP11LFziHgfY5b2V3v5cMQ=;
	h=To:Subject:From:Date:From;
	b=GyUUOhiAC75OUW5v9d7TSD9dEkqrjZwOMP13QLpsVsBpwAKQW7gZPYUiyu9GOoHPY
	 e6fx/+sKXMTLhRstWD1KhBJaqRBg7C1gJdedP681wL2ydr7VIalFguwNZpjfz8kGyG
	 rJHsLcfCWo6oYkmpRF5FXSOq8LJPp+Hs4YsGJBdc8yf/biLBZV5znFAkBvw1h3/s4T
	 usFP7SO9KEBl+ULhtjrgAlM1cGV/0UD/Knl4Yqd0BdDd/lipRmstN7u5HluChqWZJ0
	 ActGjO2niOhFIEoTPGCmGrFPqiwEV6o0s5K5gr8DtDJH2i9zOK328bcm/bemk8t/9I
	 mRuIPp1Fb6JIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC2EEC25B79
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171617294282.27265.15935582758713341519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56a7508ac9a609483be42217ad2861814b79689e16099cbf4e4fa5a01002adb
Date: Mon, 20 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716172942
