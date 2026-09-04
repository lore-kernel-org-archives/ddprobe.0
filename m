Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54A03EFFC9
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788514234; cv=none; b=E9oevvCJWY4LqvWKm/rzI9SrjVFrIIABMdSWe+k2ZsfzXD35B+uwBNak/0Q9Coa1xrWwT6CpUf0ATpiSKANTfPvxWRSpKdxNISyS6pC6quzPoQlkw1iSA+6+lMDsUYib2EGzRAarwj78svsLVetMTJo5w80hrfKAANm0QPk09Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788514234; c=relaxed/simple;
	bh=x0eSAHyLI6tFZhfPac/LpvznOjzXIFHprpd5SMbIHwA=;
	h=To:Subject:From:Message-Id:Date; b=l7x7ljph4oFrGsTCwAF74vfjg45K+Xv5nqZiToB2UQG2M/AVzKLjdxYDpeU4WAQSEPFikrXAuJBbJeUargh5UDRlSBHtA0cOFl8sOUf36rZHRBfjGTCNRChEXA1GzE0/GJJQG04jJ5Amn4g6QH1z/G6gTk4zIxCmEax+SzEMVDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOa3UwQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOa3UwQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B7EC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788514233;
	bh=x0eSAHyLI6tFZhfPac/LpvznOjzXIFHprpd5SMbIHwA=;
	h=To:Subject:From:Date:From;
	b=uOa3UwQKrqsxjmvDm429hVuRaNj0sUSz5nKkfWj0iu8vWrIz+Eum0/bw/QxuosXuk
	 gTrLm23h1wXIZS+xXlW2pOCNQDbuHEnmaykzIeh+gEvdPOO0L9yCHTG7zkK8O/LwbN
	 2Cl99METxTIHcYGfJfE/oxzflk9HqMJcHZCS6UvivwdHW9VINZErLl4Xg4iYWvutVH
	 iEaMHTqPUs/uyLWuEzo+53Bht/VjVjnSnXqlKzV1hVyKk73wOZxFlsRDj3QAjnbm6J
	 +DVVcvhSCJdPzjuQNbvtkIP7p5kT1nFaoHv2IzB8U6UR90ochYchvCxthet3fSR8ci
	 vEdYM4QKRu+bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE465C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851423368.23503.8224999346920010598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c122fd48d6a191ec4ecddaa7fee3f1fa26022efa6301a5caa5a89e23aae0fc
Date: Fri, 04 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788514233
