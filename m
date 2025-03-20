Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B20215770
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742515195; cv=none; b=Qj8WJ4qOM3JSiVsntNplq3RQ7/R0dRM53khP5Utt8DQ1ROwGg0TYgQO+gg75Ekd7UmV8iDabIzpvJptudWuePwmiLsxqLTRYOor6P89dVppyHvWcRQpsy3tyTd4uM03LRN4hCp2RcsnYOai+JVlZLQf93hkEtowouSgYZJvlda0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742515195; c=relaxed/simple;
	bh=/Byf/y2/tsIN+5dpHqpUIqjscUl/EHGqzaAx4P7zFL0=;
	h=To:Subject:From:Message-Id:Date; b=Tp+bGjuNigafaBnoAgiAy/YqmnSaEOu4bylVGQRBoAoF4IaGMSs+jb2Onoq4zHBuxensMYbd1gOmbsgRCIcH6aWL25Pc6VK4CZZvnEaKXDI1wtFwz3QIp8D4SH017AGKmgQ2ghRsd6X16ywu2B4nEQGIgLBMwJvUoxNamkbCCIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTUcPZBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTUcPZBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90EBC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742515193;
	bh=/Byf/y2/tsIN+5dpHqpUIqjscUl/EHGqzaAx4P7zFL0=;
	h=To:Subject:From:Date:From;
	b=MTUcPZBiGNMz4qTrMeNx2A3ROu1R2fHnVUyrAK7WkMh6rDB2mHZ0uWK/wt+ogUTLR
	 54LGwtyOK9eWQEWDuA3fM3qv+D7Q/oKZWd5evk7IY2w5/P/xXp8Q3bIMkpfnnRpk2j
	 1pg94tBtn61oR5SYm1y/PKPyGH2U5e1DQQlA172zp5cpsMDxlvmylhx/EMsF7dKiKZ
	 /XGdlA/mspak0TIuEPqUKU3CXheIpUt68nC3fdFcNIFHnOmDPJ/tgs5aJYeIy+e46e
	 SDj7TijwxzMW04jjQPtfBVVAZDHjjx3TfYAOYOrC4cDWTlg7PSUH/UtEHgJVqgA43j
	 5BDJv/l/z1p2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EE3C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174251519364.23411.5401772927922892978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463c64d60cac5062c2bb5b4aeee3bfbe8da1c05600bb59fccd439b3bd4e082f8
Date: Thu, 20 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742515193
