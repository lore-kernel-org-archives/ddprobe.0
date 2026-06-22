Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2459E2AE7A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782103594; cv=none; b=VHlULusUYPpzLoMDxTbKlNH5rWFoZvSCs6FXvOV/Mq9+jfPq/TvQh7KuBADshvCnl6maXVjZN99a1QbnML+MQHFb4/JeeUEnFU06NA2AM583CANwGZZQ3NXnuRjTbijhbrt+qViJh1Ru8S6FhgQjfBKjkEsAfMyePuHKR+UehE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782103594; c=relaxed/simple;
	bh=CTBc1Kwortm9r5T2sJzOFSZYz7KgzTXzz96a5mAyDLs=;
	h=To:Subject:From:Message-Id:Date; b=CZ3oqzn8GCS1gRa+8Agw4H4ZPjZKXd/ltNUE5ZuVUQcirQlp3mz7VUDz4zt2UozWEfVvcNNH+d2Cgzc+QrZw623yA44NGnhxmhdTPJbQPLXqv7GtNOCxDMFxNbYuO0LeuD7xUxzH1MdkacTqcqYq10cxUUW4PtImwitqYXI9UYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLk4oiw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLk4oiw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C490DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782103593;
	bh=CTBc1Kwortm9r5T2sJzOFSZYz7KgzTXzz96a5mAyDLs=;
	h=To:Subject:From:Date:From;
	b=DLk4oiw+NSVeULRzsNmhNWEtu+BYSJ0zRrv86C03CG3lVal0Alkd7d6FwnnJA6dF6
	 QNZG3h0kko1zuKJRqvt5A9uUfNEqpPT40hNVaD0apxPOQgI/pUegqYnKiC4DfEF8jT
	 gJn1ZSAczIiWWJTvLMu6YVw3ak59rSiSpDuu6k8JZjEWRhXV2hPzmrju8kBoq7luMO
	 iEPLGBO9p+1dfnXfy6X8frUv0KPlIw7x8YFLGCrq+IjWrGJ8/FXjoxKzrvrhpMUaRx
	 81dAQlijydKSKPfd6V+6ks92RTO9SixgUm2yfr7ua+0PqTnxTRz1ZsEMCbvERLR3xM
	 gzt7qsMXzSx6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA004CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210359368.26190.6310058440582027842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2662ca694b6351cb51040c23b8bab8fde1b05dd063173697fe31e250db7d4bc7
Date: Mon, 22 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782103593
