Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A1A1E98EC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742635794; cv=none; b=lcgCgxmYxuPKGUZBTXmLIEvZG/R3oC+a1c+4EuAurlWFG2rpWRwhj2mdL1WAvYkNJw6WfMPD6ElDvvQn3IvjG6n+8Lr9+RMyQpDe6DVGTth8jsrMiq4qRvxozByj5rtvhHq/Z7NoBfa1v+mNe6hQCO9JHEN8oCQ95PbkHWJagKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742635794; c=relaxed/simple;
	bh=zERVgQScGaW5KdDAPq06fEvt+V1RIbxJy/fCtZy2lpQ=;
	h=To:Subject:From:Message-Id:Date; b=rnj2nbn8D3PGGYtYlYJ7Lqqm5QRhBe8aEV6obW3m9/O7RLf3n2Eg1r51RI3K4qXPD49Tsef/Q45PDqPz4BGWYh7MzMduev8GOoiYJnnpZgvDeoXZmGGmKjYlV+eMXKkoFh2isGGg8DZtnwTWol6aZDUU1E0HV6xXZZORfCPSntk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PO9CvHCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PO9CvHCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB47C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742635793;
	bh=zERVgQScGaW5KdDAPq06fEvt+V1RIbxJy/fCtZy2lpQ=;
	h=To:Subject:From:Date:From;
	b=PO9CvHCPMA178q1qRePiE18myQ4wu9ALLpcY0hPZaT7G/fYGWqeYyLPFebQQc7VFQ
	 mFLlrt1f2i2M7Femd032Ht4hjW9lSjZbal0pJjPMLK6tea0t4+h7TLc694o2QDLZO/
	 dYn33VBaUL/HZGy1L8HZCeBjYc2aUZUFdHODXr9decnC2KbOGnMxXbYShp6yElmNil
	 fBu9MSUfMtq+OOdlhOtBsKjn4UtkS02v40cuFZY88aQHT3IJfa34ayO3/mIgAEZ3xy
	 +tLZof6gt8LJnLKidq/2ydfbgHke9Kdledm9D4j6/uJzwgrmH1bzxnh+t9SOqTgMrw
	 rb/s3Yu6KX63A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3FFC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263579369.31608.5435710611326898049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1538c430b0fc922f5e85649ac0f9627bb682bfce1bd85f5c2cf5242363cd55a7
Date: Sat, 22 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742635793
