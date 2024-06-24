Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5027E1A01B8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719253343; cv=none; b=csFlGN/W5+RdneOdJOxiOMp/Aolse/9B61+V8MfClG4yMi/1cVxhwHbpER311W6HXZCOKOryTZmUraHrFfIKenRF1D4dnUbeR41yXxA43zp2C/tk/wTLev2arJeySdMfy7kTlxkF/JCl4xQMfhPtLO0sgF+245GwGUNZSDJ+Aoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719253343; c=relaxed/simple;
	bh=AQPxIR48bpxq7VUKm2/SY6+ZAjt9l6KRSvxvzSJRDE4=;
	h=To:Subject:From:Message-Id:Date; b=jFxpbL2NtrY48MdhCg1Y1IRWDmqRYchFd1/+EMkQrkTQ01XlYMNw5K5HVSQHhmg1sNLhffcnpBA0dd1Wz9XN8zX0jA8WMTGcKZVMUVPGpPMZbVFCV2djz1u56zG1ZMeMAxgtZQrwUi2InCrhp/sX3TlFjfSCVW6/iaeizhnMf4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ju0VrbeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju0VrbeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82B2C32782
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719253342;
	bh=AQPxIR48bpxq7VUKm2/SY6+ZAjt9l6KRSvxvzSJRDE4=;
	h=To:Subject:From:Date:From;
	b=ju0VrbeRYTfn3tX5gtlbj4TwIvC5aszVM54DYfq8z4RaDlhkTmunRd6U2/7eOdVCw
	 ohYkvexKlZ/wqpiTXhhtD9hb11DTn6jOYoz7DmAGO9vd/g08c7bZvpGjrjv0N1aoYD
	 O5ukR17r8mkHTuLB6lkuSD3uVUBfHAF+R0sUh1STrvvWCap109XvsqGbQYp2HW5ZDX
	 kguFX3NH7QAGK0HcZMicMG7Jd+sU0gBslqDa5sMClhrtcsyKMICLl0irORrdlhwGiT
	 YrCVqonTln0lVYadyix1192eCiH7cfMN4+kXrMpPHgzOIxtPt8svJoeIplRARQAGjp
	 4FaPBrU0VXAdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4666C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925334279.1424.11943667580120336687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d42375802f18be8aef5ef17817c2ddd04b932716864c36fadc41f2abc18d447
Date: Mon, 24 Jun 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719253342
