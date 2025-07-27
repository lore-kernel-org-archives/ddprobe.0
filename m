Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD4D2EAE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753654794; cv=none; b=LnwXTBqUWCznxOMQUIEx7rDf6OiIegF7uy5yDnFxdP79zFMcY/O4qXdB669Dyh5DQu3rx5IyUNZijOfG5snEe2RXyzU9EY4YRGkURj6eEOGPnRwXGL+zlk8vbM4Xg+m8ln+i/rxzmndGnc6NYAb0berajAQDSwOLgaqqxonbq1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753654794; c=relaxed/simple;
	bh=5Jw/ne0xYTPF4nPmqEv2WXqmcQ7ftRjnsUHBUM3e40g=;
	h=To:Subject:From:Message-Id:Date; b=M9zkVA6JW9D3W19goa7LrzT7aqSU1brZJBsjNP+dMmzczykzWCY40XFyGn430mvzpznV9ic80SZr6aQSatFTmx/B12ldvwoQfm7k5ZxdZkovxeEB2zF4mWZCCbNQRlR8ctWN/EElNypVpyhGERozteCHkzOyVRNE5CoGc3bW9H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYB6qzRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYB6qzRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D5C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753654793;
	bh=5Jw/ne0xYTPF4nPmqEv2WXqmcQ7ftRjnsUHBUM3e40g=;
	h=To:Subject:From:Date:From;
	b=ZYB6qzRhtDw2rk9yDQ0ZU8Ah4jJopmfQdE05uM5Jhgp69tl7UMWCej3CTjXeKYRGb
	 EPS3Ig+PC7l5eg/KrDUF61/I10KoIT99aUma7aoGvnD3cSieUN3OLNeQleX3lSOXCl
	 QoesWm//HNZmlAK8mjU2R8E+B1RBSxwjLSVilBMl5Tl0dusS16QkS8+WFHRMW12sxl
	 +PFmhE592mq34a4+MpenjlLWX4sKs83RWjwznQUgA6av8vsDtDYjgNy+TlJ8abaT1T
	 pDpyR8CLFNm2iDH8ISaxob8xrh4NUOV/NZNoF8h3KlGYKJlPYpahcktDIcDgcudJTg
	 xv54fboTsJ0lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D8BC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365479358.29213.7416167937362149696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e43da73291202fd1647c19f0ba7c5baad08d114014ab822c24dc6e9ac9edc8f
Date: Sun, 27 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753654793
