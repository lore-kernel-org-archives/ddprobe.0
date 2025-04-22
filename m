Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47066BE46
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745299194; cv=none; b=m+k/8LgupPlVMiA/4qBE9vcxfO3b2AorENut+TPKejm02001TzhsVTv3vhaO+AwMaLkkKRYj1ZslmSfUoCUM/E8kDS0AQCNIydfrZbxfWeSEuv2ShQhJ6nOWRJnUN9yXHaNjcGayNCPYYkceLVP6SdvyjE12dxsp3Ga2iXR4ESo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745299194; c=relaxed/simple;
	bh=g5epRZ4N7UGtGy+BjYL/z66a+1CgAAi5g/YFhpHb+40=;
	h=To:Subject:From:Message-Id:Date; b=LBUa/RuoHxB3m9IeL130dN+BnaPqF5cUGYBuiuZJwDDl3/y8H/2647Xr34J75eMttKsErhXvLvrBSohyy9QO0yrSY+9uvCzZ9anF7uQ4fSR1A5znrdCO6xb1oNw4OHk+H8DHNU1tCYvvPsNSIYNV2oWrVFGgyvm04IziJljXDao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPJKjLOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPJKjLOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC896C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745299193;
	bh=g5epRZ4N7UGtGy+BjYL/z66a+1CgAAi5g/YFhpHb+40=;
	h=To:Subject:From:Date:From;
	b=nPJKjLOjp5BnxIwDs8br5+vE7eeO3BfSsTQ6aLcqsuBsn2bgy4fmahC7k6qlowksL
	 6J11eX/EOVfuDwLWye4NbNRPKiN7eiTOsMH+koQzWZfwEkzf7xTalB93kKIlOlgMXP
	 cAvaBdPd6Zj7tR6mPFXN5+LjZH7lMqg8uF4oTDe9zItUgwWJuJG2Rt8b98rpZuYaPy
	 FhNam6IVUx2KGH8LoCh3D4c/OniyTlWgudrgLaj2EoB98bLAOBA6QKt1a4OI0xktar
	 KDYuHwuwIuNGdEJMJBoZ2L759Dtr9dLmZMTBo/kYQYQtP9ert0qOnBjQwH5qvFW34b
	 hJErABabfqhdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F1C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529919359.21544.11347690640692841458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5ef9295f2987fe4e3472a0079974b87b36fa1e847bed031710d40bac9998e4
Date: Tue, 22 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745299193
