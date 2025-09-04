Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C678310E9
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756952393; cv=none; b=hbbp9551U/1P18QEREvxIlAFby0fg7CxD3QtC91sZl1WvYsoJH8GkWNnjG5KOjQfkbm6dvT4nC30ndXPCBfcYTUTeWaqzkcQwfQAFUgIhvWQgc03q5p1jL3K2t+l4RQ4ZijTwjCHKbNEKCV6S/vj5TwBDpB+t1fp89PrWtsfuCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756952393; c=relaxed/simple;
	bh=ATy+Z8jeZ52NQkIkADqmxnZM9lk0OEsSw3GqBoj1f7w=;
	h=To:Subject:From:Message-Id:Date; b=TbEmiY/hrjukQg8Z+JK3EbG5AC4G3Wjbbjd1oh/CzTsOg5dU7TpumR1ujACIpPCOGnvXtPhJzVjFKgdeJVgjCpUj7KxNxoRFiq1dOmZoqrzZBLgO96lyuC5yynrpCiW525u+rCLPd6+5+5NDpHnIum6IkXZx9jqyolD9z/Ut0dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQ7Zfy8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQ7Zfy8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2473C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756952393;
	bh=ATy+Z8jeZ52NQkIkADqmxnZM9lk0OEsSw3GqBoj1f7w=;
	h=To:Subject:From:Date:From;
	b=sQ7Zfy8tjHZ5AL2m1oMUs54DzokTZBY6N/PSRjpKZcvl1rofyaNdgy/XSx3kdktOO
	 ARSHFmnPegm04/0Ws8s3omTDx3mimpuZTPhxbOQRDSFJcyhjrbP0RssdCPTJ7wZ0S3
	 G7ZV+IJ/DsYhTYcbMcRdoPKx84EZoYi03NBkJUFHs+h824Tc/8NCWPqCy/Wwr5Fq0c
	 EtxrN0gs5BTzvBJ6Da/FYQty0lu9rdiev7PPbB8/2wm5HH+wYRMmTfq6kYrXi08Qbe
	 fhVDVn3yWej60eyTbmoxpuwa+iSrlK0ZcBuGCCgDzekahTretdCIAGpJjfkStCT/ur
	 rBSJQaMB+OGbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6EFCA1010
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695239357.7150.7099991823058887094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c218630c900499d1ac670fce985a810138e38841dff68fc6276c4f84a0bda2
Date: Thu, 04 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756952393
