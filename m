Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD402C1B6
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 18:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713984683; cv=none; b=q4UM4g2dhbpepg9p9iOngqr85tsoTRz6j8B/EmSXNdWHhTcsMgj6pcfbJp5+7yW3o06sumC5cS973ug2TXm16Au87X/OL97X7ZU9SjIH6cqy6enIC9NwYrmoMdOTZI/UNSjUTwar5GfC5Y1O91z2+Ni4bJJpQVoFJF06ufbCFCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713984683; c=relaxed/simple;
	bh=PzwP/3x8O59eVRmmXarQRgJxA8UaYOtEGXkZ8/j+QM8=;
	h=To:Subject:From:Message-Id:Date; b=bsRodff5f5ZA4uxbgxwazMus/sTootXUxJlGdyGGSgMjYY02tE0mzgcR7i94m+PzvFcSRUlABJQXvNwo41KEaHIlEpipqug6+7u+Sfc1YzoN6kgXdql9mqoCfSyTpPFxJtYfdMa719uotuXeWQDd4YOJWtLeae0wG4hFCB1VxfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=de2/vT5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="de2/vT5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBB16C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 18:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713984683;
	bh=PzwP/3x8O59eVRmmXarQRgJxA8UaYOtEGXkZ8/j+QM8=;
	h=To:Subject:From:Date:From;
	b=de2/vT5HZY20JujTGaF4IOuagY2GelWYTAMrUCZvsai2OlLPqS9hTHYfH+pBJ4IAl
	 T4+FRD0FelKx2Jk/Az5UpNQYWQtZU6npPrschhteikT2BxyQy+VVf+NhbxxxJwmsXB
	 sW/cH+SG6YGGG2wGH9gJB33gata3YMNBoiYYOdGxXtNzl5kpplOECxAVPFh1U1I7ru
	 rjcuqH96xCq6bEIi8VyyWppuzg7PM5ie7qotQRodmkDrO6lOk/WMIAshmEdyx+6h5o
	 nmkaMxmk8pJzTSdiQnSDHjmkbspwXF/SK/Q3OG8PN24p5cXmgFBnMA1KzzCd3h9x/c
	 97H9/Seh/rMHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD94C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 18:51:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171398468280.31757.2210738532059588246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f954b3d3dc4d77e533211edc73c8b4542f8ab1f399a8399ec95980467b537ae0
Date: Wed, 24 Apr 2024 18:51:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713984682
