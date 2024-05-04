Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618FB17E9
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714788143; cv=none; b=aVUjaCZ+hIzCMikb3VQTt6ISqTWTQ1U1tJ+91V8EeVpWu0KzwvsdXlDXOVs23TeFj3NUffg5E/DjCygE1+PL36IP0CJ+X5XyboAa88/LUD7+zLeieNBSrHLN/Z4oxxJV1V915iwGzEsS4WFwbIKBVN/ZJzAZSjGckEbYBpq4+XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714788143; c=relaxed/simple;
	bh=FyhWXLc/MjPK68ND0L3bd0qjgAR9ap0wdc8DCRV6QxM=;
	h=To:Subject:From:Message-Id:Date; b=Y3bmGtnsMy33V2JAPATF/q05SNj4wztBFDcrYfcRTvGbTm1y1TeSJMKp4PI6s9fiJ6dkvPh7MTeczv9BA+cYB5Hy2sSX2y+201baLcOE1LzbX9eVxB4Z2HmsP6SNKIbAx/EprZeL9ee+di8RlwrXIe/1jhWIIfMtokj22gFGwck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpgTKJRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpgTKJRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57FDC116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714788142;
	bh=FyhWXLc/MjPK68ND0L3bd0qjgAR9ap0wdc8DCRV6QxM=;
	h=To:Subject:From:Date:From;
	b=fpgTKJRyBaiM1QpD4sk3L2nPZVPwSzWWgX3DU6Mbx/wbcf7wnYAPy0eBM+SiQ0yUP
	 EbAufSFpuKnwGtsKownsQJ2/5etP3LGS01Z38gTSYIoP012KOecJ8YD9UiTwAktMys
	 Gsw1lXyWHz4zc6uVBC/ITbq6z6aUR02bsg/fbt6S9JlkpS855vWAYTjImZym3z7FbZ
	 O8COAQbolGuINwuFmKBkChiNK73e16BkDXalDQdtsSOKIIgQk574fU7bIxr9qeSxrD
	 Olebcc9QazE9EdLYLdMVvFCn3cmMVnPT8Dz+xed3hAVWgqn1cjpcWq4P4FpmkliLv3
	 vCgdmli5QzU1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CDDC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478814278.6453.12868152014994570957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b2e06d198f0095d12300e27327d52efeb85d8bd96ee78308db40dd7e28674f
Date: Sat, 04 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714788142
