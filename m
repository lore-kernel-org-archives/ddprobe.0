Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47728224FA
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771391694; cv=none; b=cvv9BlVKnjzyuRuOGxrkpb8iGO0BYAMtfLQJvhDPdCN1lWqqeq15dTuFHgKSOq0m/za6CVyzuefqdkbYUtTL3cQJrvT9qz9/nJ+mfSsN7NG4xWyVQU+Xbntj80tL7gJTkLX+8scdPuFF8YDoVINC7OuvolRUgbmZqAntdBsK238=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771391694; c=relaxed/simple;
	bh=sl7kLEoc41gZPEyHBRnMtzT+SVkD/kizbSsaiHyIKoY=;
	h=To:Subject:From:Message-Id:Date; b=mjYXdcA2uErAZfA55RsIq3wETsYChAsueAfev9atfwwV0MnjiNua23lt/t4XOJBTfaSZZOftkX+ksfJMuABNsbYOCWD5AoRn0pK7b4kvshib2t30qZWMbncUCixUVYJwNQdo7FvuQY1SpVDZ7xWjOqbX4AV598dFTvYqVlb3Kqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGKbmM57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGKbmM57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4CCC19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771391693;
	bh=sl7kLEoc41gZPEyHBRnMtzT+SVkD/kizbSsaiHyIKoY=;
	h=To:Subject:From:Date:From;
	b=WGKbmM57hx16RFhMSTOIFes5EOp65D7sghZRSQQb2JCUdUpHJcFhxwd2o2h92IpnQ
	 yZYmHjptan6fV8YW7aIeEzfcnojvWH/aI1XkSnl1R7w+4hc4CbpMzeozAOsbp3h6Vv
	 YjHW0vE5H2p1T+L2mondwsBXsgF2Udh/4oUe21Q7mJjOONiqMg7a7gvVr7u8zBphiP
	 2jlKdcugml1EX30mcolh8G6gfyy2gYHR1R5KeX8WtdY5FWucSug48BGHzF9ggM9olK
	 rESHvLdzif+3SHBfD9F55aqzRAoCM+F2CllqcFBfi9qp8jeMI+h5uhfeQMgLvgzABK
	 VUD2Wt8PNnUsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DBCE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139169358.22117.4290777004403216776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b059d95c299be70938702dec8d66b73f1ab6fcc4a8061f8f06174aa3a779a3
Date: Wed, 18 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771391693
