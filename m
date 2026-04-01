Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF33D1A9F9B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775015693; cv=none; b=qknqvWAiaYTPhdCHfOiz3g4oRGlv9k1dskHoUP3m08MKe8Bd3LStpYR8yA8gOZ7dcI88Mn5y7cWz7vHuMX7aXKUEIIK6Uzl9zckW1oQhmxpu5ethryHLrsC7WJpUCL/r6A2DBwKebDScQV70U1fDSGjh0Rwta94jCCWuzQeFdx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775015693; c=relaxed/simple;
	bh=JfFHlNNX98QF2QkVjtcYd9pgrqgLmKGQFbDaAIruXtg=;
	h=To:Subject:From:Message-Id:Date; b=epppujZb+24wL0xZEiv07vZVlYR2s40jUEq7LxBIeKPbiBFU/QBBCh7OmGzfT+9Qfjb5kaMA2eZUzsSv6YUA1vWG8H1hs+fnesDnpJBazMmVCEW1f+TPyARk/ny+Fsnz7cifs2+jZL5MNK2yQNyikLgaBd3fX7hha5iGRX4S7PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhPZ2Mxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhPZ2Mxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A920AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775015693;
	bh=JfFHlNNX98QF2QkVjtcYd9pgrqgLmKGQFbDaAIruXtg=;
	h=To:Subject:From:Date:From;
	b=HhPZ2Mxh4XnxnBbl1oJL1KN+OCLD6P+kflrp0jwAqTSwkbUaB4upydC1kgQlCindK
	 vpPt+1ggRNo9mivH4lCFmFFUSy2kaaKgElO/BVPhJmvWD40FBk7o8b5iqTWU78TeFC
	 zGhcg03X97lpky7Ox1b7vQiP0C7lkoHNQXKaNSsNtG9xIt9C2wwGVx7MC2QhdWwtpq
	 SiBer0moTQtmsOz9h2F93xrDQ9MHdHpznuhPXHHktuF9z9j4JRVHB7HoNnoZZXBtzx
	 JzmIb0LEW4L+RgrSMVSb8G6VrCPz4U9kd4SB718dIERgru5YJVrn61aK+yqigXpAkd
	 NSbSIwoOkWNSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EB910F931D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501569358.22210.17644925947117579555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69907a8cbd9ebe1155851274d6f178f8e7a33f7c66873c9a758c329d7c039cd3
Date: Wed, 01 Apr 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775015693
