Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209B115C3
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722912354; cv=none; b=NLIvCMpdf8ekRGXksDeHOen63y9KaXschqZmGhUcFfJskliDSeaxa0UwTLXvISKZqKENzLkihKGhNEbiCspP6tDFCOCj6eF4+CiIGYs25SQYD9oNv0RIre00h/Acyr4O470a4wbwVFcTXNtYXGmf6k3kkB2eWTaXuosOXc1oVa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722912354; c=relaxed/simple;
	bh=LSkXbIJIMqfwDSIxQAYO2ZfTWF9DG4dKvJbUlheGLGI=;
	h=To:Subject:From:Message-Id:Date; b=geISROKwpee4HAme+Qj4ZvAw8hRRqFaUKLiaxC6aO61rwmUdMajhBRxIZjD9tWRywdFjrJGaQ0LK04HN89QjcRSiqYCvm5mDUb6L9qCIezfwFnuwLpR9KCFjnsDP9uRR6y/hGSmLw8wVWZ9aaXWD9Mdv/oCmho/7owpTgeWRJUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7fUPFC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7fUPFC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5C1C32782
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722912353;
	bh=LSkXbIJIMqfwDSIxQAYO2ZfTWF9DG4dKvJbUlheGLGI=;
	h=To:Subject:From:Date:From;
	b=u7fUPFC5cdM9B6xicS3vFThnnHY5Q/xl83uhmZNqhZ1+c7XG/nXabiDc3RsOvdRNZ
	 eWTrow3xLai6Lo+AUQzteOHqVZf3YYS/x3eBF6rxdQq6xygML859UsBdN1dhIFfEtz
	 eFEiFJGbkIalRxth+vzXcqP7FhmnFG/6Jx4uGCpYNNZ1wHAlJJsTNA2ujKdtG4BWZc
	 dPhuc2FT+BWiTDzCiCamBbRif9Ettno9rr3mwf1565WW28yf4OReC1+HERZUj+5YH+
	 l0/0sUyvQ2TIVRW47K3cvSxcDiTlqAEIYbahn//orat7lCXmS3atNTZFeolRPpdbpy
	 ATIrhEWjgfatw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9170C3DA7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172291235364.11794.9330314583015220615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0be0fdc871f6e34e3322cff2f1d46fdbdb00023ade4c401b48ae92f4592906f
Date: Tue, 06 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722912353
