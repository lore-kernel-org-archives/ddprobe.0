Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAFD377AAF
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785354634; cv=none; b=PPz++3iZ9Hilt6nfA7BgiYGLCRQNVSwmbqprNlQ9Hm48vypKd13KGqh4iD/Q82EuJVnd5gxDqjScpUJSB9f+Nu+qHwYmWVpqZTh/YPiFQe4BH2YdOepIFbNuiacPg0RZ+DFSXaHWgpPFsBL1nctm+HPYDLMhG8S+wI2Quk4geAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785354634; c=relaxed/simple;
	bh=VaVoNbiAaLN7OzP1dj5Z8YRM9HoV+zSpjZD72HEcpOg=;
	h=To:Subject:From:Message-Id:Date; b=gMgUFo+MZvcWR0GAypYCmMdAVXQgSPJ8gq938QuFaUY4O5cr6+TGBnb0HL0uCy0IuPRyF8Rr+z2QImEgNuU30UznYdtMYdOjhZnN+sKxqvp1lOBQLpFXUaA2HeqgBvqNWhjekG75fR6ptQF5MGrE/UwUrZHqyuIR3ICS57mjo/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTU9g1Hq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTU9g1Hq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0901C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785354633;
	bh=VaVoNbiAaLN7OzP1dj5Z8YRM9HoV+zSpjZD72HEcpOg=;
	h=To:Subject:From:Date:From;
	b=tTU9g1HqxsgfrodAZjwisGtCEhEUsK/0JdItTsMx0J9/p4F3DHHpMhnPG1EChf9aj
	 6b97HP+eDZu9hsbvVO/l7Dp8Lwwo2A4Qiaj1+SOGZpl8bc3MtOv58TSBAE/onP684/
	 7jv9/CK446oIp7wU9Z1SzAx39E79BZsWs8TUo7tsolbW3dTXJXT65Y1juuLWA6Olh9
	 l3DT7ACyVjY50fgNFxY08zKJp5Ts5NzVdf1wmDiw5B4cN6xyAkQij2GhgYE/6WG6w4
	 x6r54hHgmAz8L/3dlA3p1EYQbJRPj7eBVIwH0Sdmy6LXQw2dIKd06b24IQQo6A1Pz/
	 sl9uJS+eHEEdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE851C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535463370.27946.1699569133681691384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b399899e80e098ea14c0a5362f5724d410fe01176f9a6a81b0617edee17735
Date: Wed, 29 Jul 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785354633
