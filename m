Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20218202987
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753511994; cv=none; b=unSapacl/FgX9EGWGQd1raIQmC1+nEhDQHKrjPlhTGHMYrKQxfEqizOSvs9mcjI9XV3TOcwhTrY8WW2uP0CWfyedqTAJaGtmCvgOgZfKGkzoicMOAIVTC9xXlYfNd0nUOb/NkUSlL/jHUsny01g5jVo4LMH4ykSzgakTwtfevv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753511994; c=relaxed/simple;
	bh=Yd+5ANs/neuHM8nzPDQXXYbnrhEg0d9uKm7SquMRqpw=;
	h=To:Subject:From:Message-Id:Date; b=fWJL49lxhBjSJPQGaHE7hwbxFs2pv0vGYZHG4A4kdGcxBJunV2R19g9dPTO6gGpCkd6QHY5h3Cj/nCLtA2qvTTILjgngIjCN8ap83udzGu+DS3WyyBwApPqfMmZ6yj1vvrREhVcRdfdTOV34dKRQA/pos9xxKNv4hlPBoNuli1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdLKvX0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdLKvX0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2235C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753511993;
	bh=Yd+5ANs/neuHM8nzPDQXXYbnrhEg0d9uKm7SquMRqpw=;
	h=To:Subject:From:Date:From;
	b=qdLKvX0h1L6p3Zrn/GcOfsqhqmgTBtstgLsjgJM/2B8JrL1PxFtpjYami5Uw4QAv2
	 XKWeb+oljhxcn3yfaQknsZl0Y2EvxXb5nRI4ZHyZY3R8gbFC1qKPie5LSgLlzKxamm
	 kP86yAaRyop+Rt/18IpkwWeYoQqEcTjyK95wZL3YxjzCWYVtz97wjSvKdB1LYlo7gf
	 OyIfXO+40KmZOClsNDAMs3C5z/mi0X3PEJATFyn1GLMBGqutS7SINN/r2wOuGP+3iO
	 gcUWFLy9e2IFqWB/hpfxCONj+0sKggdCHxwxr1pBhhqRQuoKp5rhpgTSg6U+HBsd5F
	 dm+uz9yFKSydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C5DC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351199357.20100.4561632363829074159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9656ea7561564815fd6b7c8266eb242d17eca6550f7f100a9c18d807de8509cf
Date: Sat, 26 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753511993
