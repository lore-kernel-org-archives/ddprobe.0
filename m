Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B9AF9C1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749316194; cv=none; b=I3IDriBG1mAJCMkvRk2lc3Vt9XVlzwGN3x8Z5vqKJTTlLTx7pcp0vA3jKPEqnStmV1dth1ikjc/PSEsMwK92xRSSHFeVQOcq3lj2Ezqgwr5bnGYZsVKK1rJ9R6KaPo/HMJFQclx6DjAZKCXH5uxK3HXlWlXrx3Qd/Cxe+WxzJEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749316194; c=relaxed/simple;
	bh=4JGnVTsRz0eWRcGJRdB6HbA2cnAI/dUPQX1g7Owk0e8=;
	h=To:Subject:From:Message-Id:Date; b=F3A9QE19/p9Y9nMqYoVivK7AwavBW42D7KmSRMw9VpHtOsy5Erh0LZq0YvYw0qd8gaYxj9g9GSCjgz4g2iQhi8M4CQ3xqaaMXdoiBThamr/WCBaz7Qhy+03d6pnEdLN5WPN/owqvtgFrS7WaVK4obwJx9yNmsKIOmabMFa16+Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elftovwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elftovwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F8DC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749316193;
	bh=4JGnVTsRz0eWRcGJRdB6HbA2cnAI/dUPQX1g7Owk0e8=;
	h=To:Subject:From:Date:From;
	b=elftovwi5RPBd432ahSRVe/RvSBL+OMEj6z1WwrGRt1nFmgMLRJPYTPx9PetzdCwk
	 ByCEvYwJsjlvxn2QCYFMudSAaAueCa4mEN0sOa72gY2p1yLwFfgPvXFjy/6ZMNBkOt
	 E09G5DVjeP6muGrFhhKG5G38SUAXAxwyxaeIwwi4mw24yV9XUGekvZX5896TXCzsDe
	 KsoCw475vsBJ4yeh16iGreg5EnmxUPwk/tJzuvkHDxiwWSgnefNPxlisKpVGWCD29m
	 EtiBPhFTibw2BY2K3PGFVjpFwYsWbDAZsbNOFQ07JDCG7BldNLl0rmSSZF3arx8nVZ
	 5qCT2BWjzNhbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B7C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931619358.3046.18041775972747378879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e74f1546f7fa867a0f18644d9c174d2f6b6290e3063d4dec6b6d218741854c
Date: Sat, 07 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749316193
