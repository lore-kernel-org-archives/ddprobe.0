Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FC32D12F7
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752552594; cv=none; b=l10BXRCGjHjLyAkxCx0nrQIbE8O0X5xmu4fIogR40cgUZInNhpCSl/wCU8Q0cAbv/cjnkGTpVuK1SGcDdJOfoIZaCHWfbyoKvJP5+2Ec0BaH5p3gGVmUsNE/ghddpogb0SM6ZlUuJ3jBu/NrKvhT3bl/B7pKr5axQAaBcq8mOfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752552594; c=relaxed/simple;
	bh=MQBPzPmPYIow8Meia8xKeaXQeuun/M7gtDkvLndw9ng=;
	h=To:Subject:From:Message-Id:Date; b=SYUWhMv7bClwwlSiNzSrC0N72v3Fg+u13N/bpt68XGyHCIrHu6S21YC5oh/BsX7yCMdCrsk51tDQW4Ek8GuZGDQ+IExAdWamAavZ8YzKGXSCAmrVIXZwF8lSFzouC7eU2M3vTl/+T0ZKvVc00kMxPTUR8th0yXd5Zr/7CKPD2HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdOV8x9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdOV8x9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55FFC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552593;
	bh=MQBPzPmPYIow8Meia8xKeaXQeuun/M7gtDkvLndw9ng=;
	h=To:Subject:From:Date:From;
	b=IdOV8x9di/VW+zY417IjJdhr05JC8Sdm5nCjkpVKUs6KGCfElgjnHgxG5ja84OIEq
	 IKOwrv4Uj/L9fLfS+jTpe+eLrjbUjntsewuEN0D021G6v1Iugw/wIzXqmt1fNtorFT
	 lPHoLvpk+AyGomQb4M2tduhjPIsd2LIA5l4n/iA9+jEdYe9+VPTtYvxn20/3GtvETh
	 ExFHgJ4WxhBkVkqpaV9BLCqCKGRlFUAEGb+6kXBYK641/SOvHHMQG6hs7VnKeKjU4q
	 7nj4mindv27Q/pdySRlq7p3Z0SujrfZ85ZYnbXL4YcTuFQf68l3KmhOyq5H4Ok3znk
	 vR1h9GnzHRMjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9267BC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255259359.13096.5383599097489823727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e99365178e543cdbcaa563d1e0e4510631628d151aac2cfa34afc411848e1c8
Date: Tue, 15 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752552593
