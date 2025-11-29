Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302511C1F02
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764430374; cv=none; b=UPlm3Bfn8mcubdsOAlXxSj8Ol2gRRvsC0riXslMKAkk5ou+F1Y/bPowemtgiCJeyjrBwgNdxLhmVtLnheFIXLPtZuoMwb8J7AmuCcqsLHeaxTyRl8ZkQSFU0o5HmAXmOEJ8rivcQe7x3hVZD3rjyN3O8DcLnCiam6sVS+Q6FKyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764430374; c=relaxed/simple;
	bh=ptsxgnmrAXZwiDeVG9iEgy1zymtUSJg2n89VO11dqYQ=;
	h=To:Subject:From:Message-Id:Date; b=VJykbGDCRotqx2nQrP5DX6k/2+zKCrvnwQwoIkGyXJN7tMa9AeKCphJALhyaCVkZepNUlfb2LMku2mQHRZfm3DlS6ytMnYR89fEbhucNO6s97F3z4dMPkJZqiCu3TmTXSBy9UyNltp71uwoR64jFK7Q1JavaXv3NVLiVsXho2l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQDWR5o2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQDWR5o2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA32AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764430373;
	bh=ptsxgnmrAXZwiDeVG9iEgy1zymtUSJg2n89VO11dqYQ=;
	h=To:Subject:From:Date:From;
	b=EQDWR5o2l4LbRjIx0x0sVRqu6YnW4orrM1mrvEMTDKwtJuF/5qIfrJKjAltMk5kE8
	 vAnPniq0353L65WghDnvC5iZF5IfyXK4VaIcKrDTXQfHqYAWx9dIwvBr1MHSeTlnZ1
	 PBRJqD7KZ7yk256kFixqVgeghagbOLfJzQRUQOZh8VGQsGh6uj+Th28gaXy26DCj0I
	 W2IttKqEPy2tkOwuiGS45COKhuoIfvxWeeAR2DjMrdsv6U3ExGZ1JBVXHEvTOvQTqq
	 JmCEb2qMhq1saIM90pR4QhoVgobNh+xVyLUqZLM+yPru4SqbDE4Rp31p7XQqbDu122
	 OT2VgAkiK6/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93621D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443037358.10901.12160405115356203647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489afe06dc31323e419d7a585d6066171ae1789a8e330b3c40eacfb1ad09a99e
Date: Sat, 29 Nov 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764430373
