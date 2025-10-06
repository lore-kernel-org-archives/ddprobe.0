Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FC726D4E5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759747794; cv=none; b=B6FFS9wuZDG7D0j7HchJ3LgtBsxZXrbQ+3kjLSQkosVKgsmR5Ju8tJBQ4guyNiP8jBejAOa9ztZRdaMm3rOrsBSZsLrjyb9w5ECXe90orQkdyjfqcq4icVxKUJubMq7sPLumbbMrdpuk0YWoYfLucrtwzX3ASVnNeoMnPbNqL3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759747794; c=relaxed/simple;
	bh=2UNg/K8uifq72N0d5+z/CaQV0nI6IAO6COyWMirWNxs=;
	h=To:Subject:From:Message-Id:Date; b=YMAFcEcPSEggFDGk0IUjRuRjqAd/iCpqNWT7utrXsjh0EFA4201OCdGBUnn5pAj69FMv99XYk4i6NWIAB4reJUw1cdUFDNwBX8KQ3frBBydq44IX4+KXWB0U5WUUkLxUj0jDaOQikzD88D/Xw5tLtLbomwKT/s8L/IB1UodpKoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hx+MOiu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hx+MOiu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30C2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759747793;
	bh=2UNg/K8uifq72N0d5+z/CaQV0nI6IAO6COyWMirWNxs=;
	h=To:Subject:From:Date:From;
	b=hx+MOiu8ct8vyTCKiAy6pHpt/k0xAbDvNt+LbPKYMVYnLRQBZasKMd8lV1KbWe8Pp
	 vPC7PWU7u9XSikZPvlDrgBy3AuUNMrv3HU1hOMmRSDMVmwLLeYW+L0FqVeHv4/E/RD
	 uE8xxBKd1fbDjcgRBIq+NUcQ91ZoDyA24OJTQaAjh8lBNEo1KBFM9ta1oRmwoJSZZC
	 X9sKPW/FDJHnpzYNZPBvj+FMQx0K6FU8L0N8yMZYHLhqO3Pnvh/3CgCgv/JbWi0vuA
	 Jm0xCj0kV+xiCjaQhIcY5UUg9PgzoJBakaLCR79XXnGqG4luWetlhaBdQGMbq7i43O
	 Deqpfhddbqjow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F18CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974779363.945.4130693301239985500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08bf3a647ffed5e265dccc30247d63689c86ef6dc80eb99ec6b917cff79ec69
Date: Mon, 06 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759747793
