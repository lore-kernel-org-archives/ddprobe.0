Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342F93A4F30
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790806234; cv=none; b=IP4G/6VV95K2qJhhJdwQj8RY/kDSStR2qlRxfpxHSDC7CQnhUed7cv1k7dooArldZSLOJBabOCXfX1zBgtFs6+OzoLWTtU55636tV/BU05XL7JFyxmpDkuxqhOmH2A6j0qtNR73W37wf0cNOzMmTIvoLFSDJYG/OTCFMrGfgpZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790806234; c=relaxed/simple;
	bh=9qAwPruyWJcpd+7/GqgTXaAoqskJPaQyFGnwt5aA8z4=;
	h=To:Subject:From:Message-Id:Date; b=MybGKvqr5uPD3JbbpUk9hON4xaKWJ1Si26aWL7YfnaR/YnpMEMBbHTZvEr5mklCRi1BjbOFKLDMYi2y0kZILTPnNgAz/7dzJvttQsqMq2kjxHYWp5C413RMrFq0FabJ2tLdP1fQGTtDkl7pAeiawwA8O38SypCEInz1doREzqmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkW5bWqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkW5bWqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D627DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790806233;
	bh=9qAwPruyWJcpd+7/GqgTXaAoqskJPaQyFGnwt5aA8z4=;
	h=To:Subject:From:Date:From;
	b=BkW5bWqLzCufymcF7ZCqzIr/E3qMqpXr21s3ncFjk2d/rWLUvGhxXvJmsw0t0YAzb
	 DPFxWrZzOkoIzHRXLFg5LIdKCo3qm15Rc3ZCtMZLE+Gh/32IVLe98vFaLaZu7oE2So
	 xTHGc5/Zx9CTgeBfyQlPb80Bz1j7J5zKelhWJHoXSzmN8RaJLjmFEUtWBRRsA6CbuN
	 ia+rZ2rvRWgjef1zztH9caMMQ3OTWLaVsUE++mQAf+5APXeNm5NivnDCt/SOGWOY9E
	 Todx7OOg+F+RaLMlTOhX7uA5DnrT1kR2co4LwGauSU9UoUS8NBwUzC3baHqoq9aDQI
	 CHMx0eRsfv9Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13BCCA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080623369.23560.6581405635445010655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078bb14d9479a3e93517ed3efd0f6e75479c7d3518ede378092304c053efc34d
Date: Wed, 30 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790806233
