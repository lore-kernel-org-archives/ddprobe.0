Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6317142AA3
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745036994; cv=none; b=N8zqGVnnNewZqQfoq+SCCNZatgtxpv7BYsikmFqoUCZV/vCB35nUZuTV7lVGjJ+eXTe2qkkrlwkuiTXv6mEAmuNBrxuk3q/1g8hX0uiRr3/1sRM8LV52lt1v/fIaPtm7LZTygqNoNB6B+YDvPsEph3QhCw8fRWnZ70y1cv1oMgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745036994; c=relaxed/simple;
	bh=6LFcIziiE86ZKRCod7AygUI0ET2rzBI66A2nB6nWm/g=;
	h=To:Subject:From:Message-Id:Date; b=AqKBAmCdl48Kx5M5r6bgPlhNYpyJ0Iih9n34MvIQ/mMpF6SgGdMNCYyJD+RvIvPceesjZq19vl1Hfyt1hRiN3DhhZcon19zFezaN/J9IXvJQ91lMtQxMx+PsloamvnIZTCwlxiuDGw+4M2eafcrnOUqTZfH1AgPT69vsQc6w2MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miS27yX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miS27yX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94B9C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745036993;
	bh=6LFcIziiE86ZKRCod7AygUI0ET2rzBI66A2nB6nWm/g=;
	h=To:Subject:From:Date:From;
	b=miS27yX9viPe5Cv7cMifnoltJF998lwNexatwkunkwC17LtUqHXGtNAmJhjj7WqFw
	 JKa903l3G9+WrMz9aFtCaL6D15hicS3RtqEDTbgSxBOSXxIFIODqGY3jTDffotAqvn
	 K1dAny53458ib1i6CNDONOpEJWkWnbQ82W27ruszrCqNuNDhQlCyOdr7zXLgpzFAoW
	 MDZ0d6aMmHdCDlHqp4vUW8ZYuJPWXbh8SHijZUFpN31aw5wbZYQw+0tuK8fv6a9K5i
	 fiN71QPDzp25BDjsiMJH+Kf2v//9qLd1Ei4anV0eIa0y/s3bl6ZK8m9UW/3WOU/+Bt
	 poRnkp357boWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996F1C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503699359.6542.9551399202376966190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e451f9431b24f40eacdb925e6ed742dc1ea8f4d174a38b6c80ec29aa966ebcf0
Date: Sat, 19 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745036993
