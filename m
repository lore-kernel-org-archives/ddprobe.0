Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382753C1F
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780136614; cv=none; b=D2Oerzd/Iu8AT7SRGQJvUmAEMnrsDDTc92JkQLsINaTuSo9c/n45DTKNIVceIn6eOT8P7dN70aocwWOVkxTJ0Q99HaQYqF4bwu7gA3IO/AQzfCoI2+FB9ZtODHT8KWEfxxW/fxrCtZh+KAQV9yQ8v7Kdd6J32ZIQ9Y2rRbGn9us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780136614; c=relaxed/simple;
	bh=5DhGcf8Q2Nh/NsB1KFca8qIIGxzhiNzKrHwnnGLbyso=;
	h=To:Subject:From:Message-Id:Date; b=aTpDurOwBrBKQIHZajzqyFGdrvSC+VPv1XshM526H/2QIPX+UiMt7yOh2ckwMnktNwCVWpP3Mx848+moHeWi4iuUk/c3t8yIlRfP//NwYO3yx1BF2h0TNkYv3eGLC2fWJquwFZMzriIyVcFHZe1qjvtD+C9F8A1FMawATVwnPUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5o332sI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5o332sI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F5CC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780136613;
	bh=5DhGcf8Q2Nh/NsB1KFca8qIIGxzhiNzKrHwnnGLbyso=;
	h=To:Subject:From:Date:From;
	b=W5o332sIE6frzFuwNNbQwIZXTDRFRbzNGd4WtENlSpgB2iFWKRQm/qQlZakHeD6DK
	 Ls2eVHafWbcSiHcv1R3KQvBkBXZd3YnBK8lW1whDEktb/xBKiEMfidgZ2PaBgxiezd
	 vlimsqMexTMebCbFcNCJf6RZahKjwAsoaivb9s2VBBcgsv0aMJtJXh51TpNIXwXKKi
	 ToAmszvPDtrZbKgLWaq+CdepRyJgVDMkBEILOZs3qhh6VN5XivRVtQ6sIlnLb+Xx0i
	 NT771FqNqFZ7OMYD5BjRlOwYMl88VtUQoIHQqRStXly8iESjT0aKP0oUf0cvx2tnep
	 WF2EAhMhZANTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9002CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013661368.5241.8401898878515671349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0d1e97115984348436f657d4d630dc9a32fc0f4aa58eec162a53bcab4135ca
Date: Sat, 30 May 2026 10:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780136613
