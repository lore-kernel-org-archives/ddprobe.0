Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618221448E3
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741293534; cv=none; b=h2KI3lKp3kf0kRlNbCoDwym0upijxzXbp1G4EPRIrpCaE5beJ0j0uyHuyVK+EwaJWz7FefVkIEP1Qry7NsPQjYAzuaCQrWOgsRnckl7POxFfuIrt63X4osePsZhxypf8u3JmqbfKyv6rDxUXWQbRYrcaVLIvvDsAvgZozjkaJN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741293534; c=relaxed/simple;
	bh=6hj8oid9WmxrRiuUyD1ib+bsot6slqZgq5SLzTBklu8=;
	h=To:Subject:From:Message-Id:Date; b=uE1R7ZFVhLGoRNfqs270tzpvXby4goCdw1zoYxhp0P/27/5v7y4furP9JW8iGTc/Qs5yKwiBWO6mNk6z3Ghib/mCyozJcT/I6wIixBy2wUv4bs10Ktgm7Q1nzDTNWK6jg1rvQ6maouLgR2uqmnTQwjdkC+1XjvevCVaSTE20RC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/fa7Glu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/fa7Glu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A83C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741293533;
	bh=6hj8oid9WmxrRiuUyD1ib+bsot6slqZgq5SLzTBklu8=;
	h=To:Subject:From:Date:From;
	b=n/fa7GlujDsYt3gGxg5idTJzKMkl/ELLgww+wuVX+lRxSP4CUcphetTCha5nf0m6f
	 EK26JjVKAIrnyZkBKmSJ8zoolG795tqNlX8z9THzN6kIe62woigZULpMAMe7uZRwiF
	 6C5FwADD930+YtbddX1nPjSRSIRpfoUzCTTWY46Rd26KnLXWeKr0o3EyT+6JX4LGv0
	 HMtNrUAw1bk3IMZfnJbwW/b6I/n/1yuxiwyqPtte6ZTHA320nIL0Y3OumzrOqJqk9p
	 0TDrBWNTtZzE8h2U35LphpZFruzOcrdSKTGPJZbHJBVQMM/7dIn61DpCtExsGsjLcQ
	 sLAQV6VG/blww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA66C282DE
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174129353363.7221.8083472122224572565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94153de9d01341395bd61b18071e30a6648df25759e8ee79d3ec1768b908b49f
Date: Thu, 06 Mar 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741293533
