Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386B9218EB7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753949995; cv=none; b=My99qsVQTr//K/qwT03SXil62BA3R2TLKbp1gXeX16xyj7gSRmN8XZeWKKmkfI6Q/Cavl6qa/BAVTiUFMhFNV8tyW0DAmH6Q0IncVJGKk4XrQVZGhDr5QBQqFxg+oplEW1LhagV0O2OtAdE/jH0qfK0qxq6lbZjIZyc6wPk4HFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753949995; c=relaxed/simple;
	bh=DIPgbKxlOraob+a7IKazBBm2bJYem5Wi9t73Pe4uZQQ=;
	h=To:Subject:From:Message-Id:Date; b=E4MJd9GgJ61YcpBGHSNkvNE4iwczBIH4qo2S3n46HfeNnqhmpQ1m1On2VdFuLPsU+DCyhfWT6rRP75ftDJRLbBz5L2VhXDfsS0Rm3j7lK3VBQe8p1n9hc9k7lzmk9abTFSLNCmenuZWc66VuQCmwg8/c8ufqlkry62XIwPTvG+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnyWyhbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnyWyhbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F68FC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753949993;
	bh=DIPgbKxlOraob+a7IKazBBm2bJYem5Wi9t73Pe4uZQQ=;
	h=To:Subject:From:Date:From;
	b=YnyWyhbkU3hP62Xap6ZJHx5WFtzPCkx5ChvEjGTruRZr0FhT288+iZqsiV1G5npOx
	 YasrNOwZoqMB0h1inKCIkccBC8OS7Bscm3Rl+TQynhRjuMC6q0cetayOwZ5xIJpOal
	 aNnLrRXlNDEf8mOVVKYFwMMWoYRjTv/b0Jnu6ebW//vgJqwh7FW9zoxjl5G6vvLvRH
	 XwBvIkINKkMPGprgFk1vkSofQhdUGpWVAVBmJ5v6CQAEVCs2vMOPUgYfDsozvRJJs5
	 w3O3a3xnQfvmbxWeFwsXIbS4rVBB5LYXvV+0X+9jJur76GNt5di/MOJylUs/AoUp2X
	 OtZPGCWklVYOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F471C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394999357.23179.11214961617322661944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee4a4aa766bf2f0451c26b0d5ae45463a05001e4015838f11a37692318f4c58
Date: Thu, 31 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753949993
