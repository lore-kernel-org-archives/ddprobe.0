Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C90A1E493
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738594554; cv=none; b=uuCWlQc+iGDi+HyItgyOINB/WAER3X+GsxsEZeaKZLezpsoKXPBaCq7bPHs/FPxFw20Ihb+7bcIWY1NV1CnLZp0FBKkgCyZD+v1fM0PsAdvkYDQXAYzcu8mkB8uOeeBVZTCj4BB6bLeDzjkr/bHejl332BzdAl0BhfzPGdQQb0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738594554; c=relaxed/simple;
	bh=/xOgFcnXDVfPB9CGPCHAB8jv/wilXB08yxqS4pChF+o=;
	h=To:Subject:From:Message-Id:Date; b=ATuzUVhDKXddCHtVxv4CLquBXAxRKVRp7Yjp89xzn/pTXxP+a+GNGC9rzB6DpMeUqXT2++Gq3VPZAkp7XSGbZSeu9mKB6NTjQayRP6NYY8LoB6YQpHCKgMZJhzXM4wVUzWSOE83ZoRXWfuOvA/OVs0XzG201J1DX6MG5iowy6FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLLOc05j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLLOc05j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D40C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738594553;
	bh=/xOgFcnXDVfPB9CGPCHAB8jv/wilXB08yxqS4pChF+o=;
	h=To:Subject:From:Date:From;
	b=KLLOc05jwXKdYjN5DqBiDh3TDXODDbfsi54LAb4cPFPnneVXXLxwSqem/7q8+uwKP
	 wbSyQJPsBa1Wy5LjpC3C9XDoWoRvIC+GksUlTWQcAe5wh7poUf/bTY9itCsC8vb2w1
	 RT6V7B2MPZGfwxNATU/ouoZRRf0/TF06vgcSobTNp9ZgPSdCd3xL5EHthQRjsGnFug
	 v5VYLQkWUhqKqy3za4u2XxFel8Wxf8KzaEdQvbEbQuoLASPjHrVxQdzu6Tq7e2nfpD
	 9se9smWo1agXQ2lR5iNb9+OLezvLrZT4cvPV0Cxa3LA2CizTLxFc50nH7GWGTVcH52
	 vErTZiZ4qQPjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E87C02198
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173859455360.18025.13825632263265389715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4bb318f5b2c11c6307433fe0f0e379d74a05ff1b6a032a3544f3afa30d13710
Date: Mon, 03 Feb 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738594553
