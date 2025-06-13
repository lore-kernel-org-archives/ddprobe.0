Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2726B440C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749818394; cv=none; b=ZaMDMZoziRLTAxQApaln3HoC4ULwSdMogMLgv66Lc7g1JmLzMkgrNy39DUYDsxMyMaqbvp9vhT7em+fb+pxFYplcW7ANknJQTnh6Ig6EpC5VjymlEouCFUk+zmKwgJak/f9Efg4wRg8ZG7zPZxfjQRrf/pipFwhkhy5POkr2KeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749818394; c=relaxed/simple;
	bh=0smts5Ufjc6GT1aK1tmFVUDtt58ZZpOCjyqY9gjjc40=;
	h=To:Subject:From:Message-Id:Date; b=QJyJ6sSgon6GppeUvEAg89L8hP9JOrD1hJqyYeQb6gJTRCQyKIQkQ8XlQD8IpqHRL23sk8STcwlteNLQdfHRjfAD47f6KTceToZEfhmpB9kHIYd/o/pNS549VFETlkOoRxTtkdlG7kAn8gyVrrtJj4xlSgOl2uz0DinOry2tVeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpPhQF7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpPhQF7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B26C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749818393;
	bh=0smts5Ufjc6GT1aK1tmFVUDtt58ZZpOCjyqY9gjjc40=;
	h=To:Subject:From:Date:From;
	b=KpPhQF7Yob/p194MdTkYeUScczBLIR1DlRPy4fE1EdKvx5rX1xeZgz5B2ysRx7yf3
	 oMe+HupyPQ9sGznlxVMcweVDzat0IGQ5BCeiGzYHj+eraz1yjXYdK3EDPH1WhoyAS2
	 eej/GAmFniWUDSSYZE+AkgCospJFkp2cLUmlj1JoqHEa5zK1617wtXjL6vu2Iph2mu
	 XY4a3DGhfGj/6F10aSYSDvm5seqEKR2QG2Iu2uw0DZYcyau+DH29NFLmrz1ha4GY3+
	 O3Zn+YMOiqpGeWhd9+5jwNZUdcg/czmkoBOKTK9ME5/knbUpliqr1FsG6Aml+hnGDT
	 lWflSidWHkv2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92325C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981839357.930.18238589347207147258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639fbfd8fbef6522dfb6fc23082b41363382bf07a9d46b9268abc823047cd65f
Date: Fri, 13 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749818393
