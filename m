Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7A63F6C3C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781091934; cv=none; b=tWo3ZoHzeqcnee+M+qihPOP2OsTFhHwWx9IhjCUQhdDnNQwwg9bxq5Pxt35hKILHEbQuaYd0i4SyWHT+z4/ViBAEGKp4FAgWxOwBOmdEmLxNlODb3tU+ohO9perQjMF6B5hGuEW1clv+HDxwe4QgvhD0NuIMVJ6sqnzpPIQNQhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781091934; c=relaxed/simple;
	bh=IqjOJ4hYCNVj+P/IH8J8Paw7BP2B/VvE4wRcYPyNdp0=;
	h=To:Subject:From:Message-Id:Date; b=YcY4BMb7tO/wAfPGaZUSL+avKKqlTECw/8MfpmwRal9DRJM6efiPOaTGaVKRDzNTxc9H5wXzsyEehFVaprifH1Oqhs82+8wQQny73uL03pVQ9xNezSE7OYpTYTjatP2gyy/T7ysHNWOWxMrmhg5n1t2ftglOrhItaf5YOBJF8Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Knc81lSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Knc81lSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A69C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781091933;
	bh=IqjOJ4hYCNVj+P/IH8J8Paw7BP2B/VvE4wRcYPyNdp0=;
	h=To:Subject:From:Date:From;
	b=Knc81lSRLoDZnUZcmHIp+QPIQz5K2gYsdGkwMPw2rz3NGaSJAmw4JpqfjE55I86Jo
	 rizK7MwtBZvcybK2itXAv4RqCG0GJH1WchY4QpMkVbcJAvNXzY/HuY4ZqeipR7DXgr
	 xBM2YxKVr9Dp//5bwuyOzZ9CuAFrRd13VppB8rq4LU84V8m7dsPdgcgNGHYYDrMLJu
	 xin8YWovr+hTYfT3miiZxUDXAuNnZrxv7J4qNzdzR8tLHeaWhzsGRox8310lxy+PP7
	 VhoRxGj80f9stWoeSZWReliTwj0IknPTFcU4/Y7wcore4sFUuKfBqUgMdJ/RtUkq3F
	 U2Q+PvpqMJJXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78F7CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109193367.8090.10619459630104459856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3990a3905f1f98f942acbeadcecec1ea9914d8a99003bba0a5756468c1d62b79
Date: Wed, 10 Jun 2026 11:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781091933
