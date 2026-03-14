Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAFF361DDB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773501294; cv=none; b=cxQkLE9S/qr3TwcFrhnD1G0dH6YY/byuA9dM0n/VENJaMSB0aA5DPwDX5H+vyDArm5UsPHkZkQ675PNZuFt7YbTvKkoO/LvjC+icKr6AQJvFd8MoO1CYoTjx0sWt9HIObh5OkygxJ6D9IO0ljbdpgRSezDyfO7Vl7y+b/7nJdQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773501294; c=relaxed/simple;
	bh=WZODJXgtvEHTvan6ptMcpEEWF7gkrjhKzbNnGPWeT28=;
	h=To:Subject:From:Message-Id:Date; b=qhntsBLcRD26CTXes/DwJuic1+/yL4kQkv2BmnGiNdUv8VG7SmCZkUr83O8VFBV/X6Gox4tpL3g9PIW31lJL4k5SjFX790P01WmGMlQU2JJRYMlf9k20RYnJs08dWFumEvxxYDNLRCjI4mgMqSeeggsJURs0xKWIkQtwqEjwT0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDslsqZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDslsqZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7E3C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773501293;
	bh=WZODJXgtvEHTvan6ptMcpEEWF7gkrjhKzbNnGPWeT28=;
	h=To:Subject:From:Date:From;
	b=bDslsqZP70Hfnfy61FWxLjBuMAB8bJLyWk/TZhESIeFxvQnlZzIt+pSF6QqlfY7ZU
	 qVln2AD8S/9uf0bn5o3PHFb0pzjIBqHAiADl2Fv0Kxi/9ZLpAEXDi/zQx3teRC7kNf
	 /1E5fG9WR7xYh4B2L4486vodknaOEXqbQ1QCprO5Y0JBXU5fhJQFYRwRW3N3vYfzbn
	 cG2FzVjZcr9KtL46ltBDbKdsIa8K6079qxHFkFhg/MDbtl8K77M0AE5mkwFCRfAASm
	 K7YaViZwXEOud7MKtpNwGh88CiaP0YczAZlEdlVHQdhvks3bQiiB/l/trX/3U+k8jY
	 2ZdxHMf1ul8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F54110706DE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350129357.10091.11419538110519450313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d96122287735a201e63e56672e2d679a853cb15311b34a00fd90ddeacb99afc
Date: Sat, 14 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773501293
