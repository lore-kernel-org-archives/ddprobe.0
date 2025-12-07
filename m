Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA262367D3
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765069974; cv=none; b=Eqk8EGTR33/R80kb3tPYt6En9co1evTp55h/ExIpyae2CtbqrDy7O9YMCzGlEvN0DrK/Z3GnToJ4e7bV9/f2Kjlh1hy+APqPMvXjZyNRbb2P0rvyTJc3e8HqAWcvbWySBymmEN/pRYXF5s/dG8aW0wpMEFDi+T2FICJqG/oy220=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765069974; c=relaxed/simple;
	bh=YrtheNpQK+DjEoCMyJTkGsA8ikL3oLfIQkhgD6wEmAQ=;
	h=To:Subject:From:Message-Id:Date; b=hMgBRiish5vIgkOWLPxDsEtTQPpXmpxJpATdJaEw2OZlirw2lnQBSaoXb7EoQiRzBA4xrLToFG5AakbhrI6ReizVAC9dZ1s9JhS6/bRKad0K0J5nwyur2ytslRUIRW2F2FgneJSAX1Y6XkXbH9zYjwOIDnVwVQ904jIom3nGtSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BABx5Bp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BABx5Bp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84BCC4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765069973;
	bh=YrtheNpQK+DjEoCMyJTkGsA8ikL3oLfIQkhgD6wEmAQ=;
	h=To:Subject:From:Date:From;
	b=BABx5Bp0mADtqwkHva2igFkEdsFr2Nu0nH6aloMHTYS/rVb8zo/viCi7k1ZXWGBoa
	 FoTtizSXtUDlVKR+gCNcMwJ4ANcT9a+EnTRzUMEHxEn5frHdaNFp1Ayf57chmlFBLB
	 cbE/IaYuPgTVXgqItrJ02l2gz/nzRxOHjrixEcMjVYGeteOHbXdxWJZ2eVZY+xALcF
	 I5jWtyX0i5QSgig95HJyEnDZiLsRkP5o6jP5qffvSB8tJnS8TCzzl0AEFawFowDmAX
	 HtAKFqk3GsN7mFuQIim+gdYu+BcJFXyYS3VrctxPOe/RxMjZ3T+/9AA2mLb1734+ko
	 68MbukpFyjggQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CA0D3B7E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506997358.25211.5208792133578783955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092769cd40cf18638cd2b200c1fb599c7f9c7f40718d5e59f46300afaf4dd95d
Date: Sun, 07 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765069973
