Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1686837B413
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768380234; cv=none; b=YaAqZuMHJBFJjfetZHfKoi3oGyIqFOMN1acuLZzumVB/sW92h2jPFGeXjDqamNmCkmhKSAXia77UvgZb2Qs55/mOX67Qe+9Mt0iDakf/U6ie60uVXZGznQ5OJpPcO6JEacx1IG/aS32uBxVAbZVhqNJpuX9HOXPlPP1LsqzNTsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768380234; c=relaxed/simple;
	bh=YGiGsU1tNkpu+uWVdfTwkomqH4ZidjjTIrEg38uzATY=;
	h=To:Subject:From:Message-Id:Date; b=tp+19QvSdHKQUkG/hq/+nmMTWdHl3/ur/zUZe/3DL4ugk2te8deyE237k3/zKQtS/BZHTO5x8+eyUOEKQZWjkyevIkL/vFOeJwgOhJ9Zdxac3tVB9mLmhCilTJn9QCgkpJuuvISfME8ulw1iWSmUHweQJ9CMStg2XvNsJhVE92Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiPoS085; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiPoS085"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAF3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768380233;
	bh=YGiGsU1tNkpu+uWVdfTwkomqH4ZidjjTIrEg38uzATY=;
	h=To:Subject:From:Date:From;
	b=eiPoS085b9nOvzOrkNu/7a57kESf16o1FWrG0yJFiaiTkTLfAjTwHV7UwA19uj5OO
	 w9yWlYhJKpf8WcBwV+FpCL75MZAlqKTSu7txQLBiRKCbDZHbpaSfFAZ9FjXk3MOK8U
	 HMYqGRxgMrPkUvjPQWs/xUyvJOQUFfKI/xRZFa4pgOydmRSRf9eZqkiGCBH41mqdqp
	 nq21yDKrBaQ9VqrS2AF47ftEuUXnTOJEicKxP2Kjcx2Mjw4dt7capL+lDl7bmdUavd
	 7wq6QcmiSTaW8nnelLD9YshhoeBxLTI0WzFuh9ZbBQLLPcdnCNV2llPdM2R35n3ULr
	 og4gqKGTVpIdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A5FD31A29
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838023357.30353.17068865547196198189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64199a01199c49a76c3ea8206294de0177d9edb403691b088f6e71c4973929ef
Date: Wed, 14 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768380233
