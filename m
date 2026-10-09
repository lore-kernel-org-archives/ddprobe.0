Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F7943DEB5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791529834; cv=none; b=t1pD8R0bpqyUgDNGaP/9b9ICmPFDg+TFSZGwd+OdUQPYiXFwKXR1t+64s1qEKFr/c2jdgWNEhGODrfiQc8LNUk4ssDkk1v5BzsBfvK5IUE/PHIvggUrgmcrvPYEPVHA6Y0j/zLx0zXoQeFq4l//metNlNSD8cFKXSGZlbFVz0is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791529834; c=relaxed/simple;
	bh=ORQF7xM0DsZ6YXlqhOHScGwgpTbho04QhCc2/QMLlq0=;
	h=To:Subject:From:Message-Id:Date; b=WsC3geWz+cBHzyxyxv0XKo5HIMFb+vr6Yr3yBrix6gNiQowk/pxOrjKnRZac3mONe7EU4nU21Bo5MlQq/bF3nCywScS3WE3M5RJuKM4dZXovwLcxXgN6qE0b+eWruCIqt+OzFd6p1VldxZtoEg14zPxjSB9/QsMm8S3wOPX/nmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS+awIj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS+awIj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D5AC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791529833;
	bh=ORQF7xM0DsZ6YXlqhOHScGwgpTbho04QhCc2/QMLlq0=;
	h=To:Subject:From:Date:From;
	b=BS+awIj1TEv9onQeyG1cfRQR5/5OkiRpZ8RYk/3aD/sKQ5KXipQUgqitR4/yffkRq
	 K+vXc6EJBincWDK6o5Wr5LLkndD8AJz7w9VBlHVGQw/4wwrXk7Utd5oGXHQ9IhQtuN
	 prifHYK+aAJbDWQPxU1yync20vU0rc6BpHkoql7S11brZIy3OTpw0UUtpiRl4rBnxu
	 jEpKfbTxkKVsM/d0Tk4U+ABv7UJ53hXu5D29kMWo4txVp3Tr6WpwrVOoaHQ8Oxjdtk
	 DiJFK2ICwFWeeZLdHMHSVOEQAeVic0ZAnY3cPkSTap3MZpi8khSNk36j1zs48Cjbc5
	 BLHcMmXBkeXQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF943CA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152983370.29134.13918134777793337348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c40ebd8435630f315d90ca2ed28d61b12a8c7b5bffa521b01a4c794996c96d
Date: Fri, 09 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791529833
