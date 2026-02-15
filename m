Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA602EBBB2
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771160694; cv=none; b=fUf1VWhWiLLB5ZbXjZsK1YkjUEdfc7WCG9z7FVWO2kduS55f1fKWI5QdYbtRzO1se4O9o/fGqZrNnTPkulcS05hN3IJM9CCXAQyYOeIFXFuQMPe9bS9W7CCniv3XmT0EwGR6Q+VMSVuZpqFk4ovMKKllWkzSbfpOMmvhbARd4VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771160694; c=relaxed/simple;
	bh=DbWnRVyB58onGBtFJ6GDszoyh4sFxbCBsWoCXw14OsE=;
	h=To:Subject:From:Message-Id:Date; b=cByTf44k2Q5tj3nMBLSFDSgWALU3X4EezqGhVPBuX3tMrFii0ep8PKAXgCaaseB4LBsP3lP1F03ttMYYeDYXqjnfiqJEn1qesNEMdoeZBi0zQFC4xRaIzPc0kI+eUsxxXtSDktWlqyiqCr7fgXMLF38e6Zi3DSROEV9R6r60d8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrBrPJWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrBrPJWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8409C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771160693;
	bh=DbWnRVyB58onGBtFJ6GDszoyh4sFxbCBsWoCXw14OsE=;
	h=To:Subject:From:Date:From;
	b=TrBrPJWE2wrMVSZq6veeuq1UzS4f4W6lk0yNzjlxqPlnEpgLem4QmkUTuiR3vGN8d
	 8rPK6ASNNUj+GfgyLnm+s2aPQlJdf/nW+VMtDBUONO1odJ/+ubObfM+ihstCcfMp5C
	 a6/LcjbgUCW5c2r+frLCkAS85Wyka/PEOx5OUPtWWYalp32S5NRglspGUec7cOcDot
	 kc+/X4H22hYIXXBtNsfhi0PooWIqoToAYXUFFZWfSAroYSha9KIxxAEhGaLbC0v+pX
	 AR3c4tZsnZ+WXizkueo1ZiDH26gphmvJvjFYTkIliJ0Tmw2wojlS/bf4H5wJg31wTa
	 0jbNhmYNkTL+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F77EF587C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116069359.23290.8297379157290131906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc2f87b23bc6011c0b6427bffba1d1bd4d58307579875fcb11be5359eab8fc8
Date: Sun, 15 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771160693
