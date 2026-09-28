Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40306331ECE
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790601034; cv=none; b=OUeiGwwiHgzkJP4uG5OtpjorXrI6CfyVM7StIjIgeiFmjupfDPhBW5G5jwRLUXshVbeIMWM5njMgyIw9w2/meKLsZ4kA1OMSIZZM3GH+TGl2b7u46vhXf0lhda2kx5kMEPWiMF4/uLWB7Wn8TtdW/WC+mld1pMYjpznFKNInn+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790601034; c=relaxed/simple;
	bh=gyw1rRRnRWI1sRKT4XbzlR6XMqpZXitIA5ZdpU+g4Vo=;
	h=To:Subject:From:Message-Id:Date; b=XlAUc2JzP8CVjVLQZ0r3NjoiYz0+zzsRuuKpJ4Cr+Dfc8JQaDxONu/tk8d9XecBlF4wloGHPspwojbX6s/xyd76vUP/YwsCSww+zCpEagKwRtXGu3pA+g0vbxkLcZzVW0BI5oVT65/mmu3ZmxGof8w/ux/nwLMwUuYlhsF6iT1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBbS/JMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBbS/JMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED7DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790601033;
	bh=gyw1rRRnRWI1sRKT4XbzlR6XMqpZXitIA5ZdpU+g4Vo=;
	h=To:Subject:From:Date:From;
	b=SBbS/JMPDT+/fHGfXFasIza2sJtNyQAcvanoFytQw8dT4n3VjIeVBXMndRFhuonaW
	 HVzmdKqy3fK9C8+OkCsFTxCY6fiJjieH84r421Jh5rzh56hLR+fsWO/SGR1C69Og12
	 MXgRRI5KepJFAXbycoS8Fn0Z06K28zleRiufXn6TmgAlAipcvKZbnBI1Yr1gsntET9
	 oBHQOTu8uF+ep5lQAyNbbKR7Cfe91/p6wblv5bHIOrUtK8fV1g1cC+3F93u6Qz3Om7
	 l+Q0OgXmXTUJWddUF7kxlAjHd0frvwYqk7PqgvnZ+4LpB1jNKiJHgNq3WKaoeHDmeF
	 5ytu0RORFUQWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB767CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060103369.4718.13370436135484068486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5f2f2b575d9e18caec96aede72a6f76537b3a39f1b590706a4babdc4483e7c
Date: Mon, 28 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790601033
