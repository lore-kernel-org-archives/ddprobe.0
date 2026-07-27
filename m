Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A37E41F7E3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785168034; cv=none; b=RnyO32pY+FO4M4M3pgXR76xieXEIndhikU8XmgR5+GGFiVE/H85+47DwGU6OkC/zjNNb1DfNoJUl79vos3M2IO5+zTERRbpLIJQ0v6L/USohN/2VMR8lX33IOB/EdkBSOhTedvLDyERytO8gc/0aRln23wIweCv/3hk93iE1VzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785168034; c=relaxed/simple;
	bh=OqgewMdAyTZgoCXoAuQn1WohlX5Dn4hqBmo+5GsQWG4=;
	h=To:Subject:From:Message-Id:Date; b=JL3ohR/ipoaOE0IQcPtuIvwmFMhzv1U3zWrz1fIgNvJEsKwchwNGM1Ppy1Oc+/WY+4F7QqYsYNQHnh/PkEyixCdvCZsdMliOoZ8oJZzwKDOPk5WjjoC5jqQg7Jsf+4c3iPBZA75i6ngGCLNRENfElFu1MB5r+2YyKaTQtEfAfBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akDpF0Ve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akDpF0Ve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DF7C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785168033;
	bh=OqgewMdAyTZgoCXoAuQn1WohlX5Dn4hqBmo+5GsQWG4=;
	h=To:Subject:From:Date:From;
	b=akDpF0VemnjnzGrzbdPeBSgVfcSNCMuqKVFft7j/jDvAiBBzmc+R3NMaQneC0MFXe
	 5MINuiQ2/OBlg2teEnSCvf56Cnet/PyJg8aWDR8G5OhHClu17Qzlb+AxCuOuXgvNHT
	 nuR8wSF/0lqO1HJkpo+5V1CP9aQ+jGd7TYl4KO8QXFaY64WeeXH6fhRDv+dPEtwy7u
	 2NdiUWJVB564k9DjHVu5PJD0RXD9IkfU1IUzNC9ijD0ezq/Lo3AMIDEmnSb8jq99aF
	 Q3+edTfaGErCAv2EvwhZcLVopb/NZbOXjdvwYTYIvhj/iyuZnNCFE9VfY6/d8OenuK
	 KRomDQuWbF86g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAEDC53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516803369.10469.4560227647220556523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e22f0f24eb7bf3dc3d831d4ecb88c4dbf1616aae642d13bb313ead847bb3cc9
Date: Mon, 27 Jul 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785168033
