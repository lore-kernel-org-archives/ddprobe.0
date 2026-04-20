Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3240F3CF03F
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776716854; cv=none; b=cnMPYUC5dzdfeMRU1HlcfflluOEpTQa6nVdDg8WT7EcU1gj7ZpuRZpXk3h8c0FGuhn+goYt5rKS8CCee1zmvvueWxGTmBTnnH/4LQa+hAgsJxWfP6hf4h4ZgtDc5nv54tecL5XMDX4hCxY9s1bUzC+YfP7HFnOab0I6Sq2Ljcgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776716854; c=relaxed/simple;
	bh=HKFaeUNWRRR+Ddb6llmeX9/WNjCRqZ0VZE1vzK2AlaQ=;
	h=To:Subject:From:Message-Id:Date; b=Kbs6MX+ad4o4e+FdTXjYML7VwHnauoJWai4Grux0fzWMOs/Hc7edZ9EvypAX97twRcJ1yxClTerUvjTWtrePzx4W0czBQDLiOuHGvjvLWMP2IobOPP6uI7GuTEejNdGWaWM1CCttHRJCC9XcEjMfk17esvEMjXXyXTmr762a+54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoDNvw6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoDNvw6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD303C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776716853;
	bh=HKFaeUNWRRR+Ddb6llmeX9/WNjCRqZ0VZE1vzK2AlaQ=;
	h=To:Subject:From:Date:From;
	b=RoDNvw6+gRj28p0aLOGvKSyt6qJrptdC2RoAn8BX4s+LMkuHZH9s586dDEpLjtPKq
	 gVyAJKXas7gjlaCFx38N9g4TxDXaNLpWugFBsMhJPVYNSpkLRWKv7zYCX/bnoyNbpr
	 AboeIDg5hITu54hute0h+VJX2oD9SkscoWIvHWQzyv/cwLWfW7lbC0l+qpzhAIaomw
	 dlwKGfr58niRMhyCpfE3A/I7kiiBgcHsedO4e46oLGU47hHKKBGj7+OfWh5suGCLJj
	 rXui7lvGAcrV+/CKkpirm2fbyoB26eJQPr5NAAroxmcuDL4wYgiHmFWxKapkdB+eOY
	 Z3J/gFNQtdbiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CBDF5A8BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671685368.32421.6500450620348607040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6be3dc778e672e3b786a7fadc885efdc1d163de08be7e15283ff35cf4174fec
Date: Mon, 20 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776716853
