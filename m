Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288D01BBBE5
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747635594; cv=none; b=G+rdCb45WkhG3wAAEvlCRtpD6almrw5Qij0spO+1RY2DEFWAFrcTDepKB28Q8I+QdOEpPfOYtbn3HX4U502KVUFTd4B+AyrW6ToM7cPmCq2unT2t+kXSjdvoPSR5qMwyptInUbpgn6ceoHn5je2BBCniAk9DT+2sJBaImEQTiaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747635594; c=relaxed/simple;
	bh=oC7f2rat4jsldYBU7zxuVM9fW8PQRvnsPgkzFgpAIII=;
	h=To:Subject:From:Message-Id:Date; b=BoF+/ZI/mSzzsfqji8NFnWi6BJ/NleGdpJS67FHLsjAIhgXQMPWQlZjSn+5Hl8AvtM+rBFRIsOaHn/N+T2XdPFcyYfAKaFY0RY5oIlCp952/SO2WA7j99ggfqgRAJ/J52eNhn9XoCEEqY+zqfT6uiJhYi4ulfbEEtlRMjRAKHcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3ZGaroN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3ZGaroN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3077C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747635593;
	bh=oC7f2rat4jsldYBU7zxuVM9fW8PQRvnsPgkzFgpAIII=;
	h=To:Subject:From:Date:From;
	b=C3ZGaroNx4xwktAtefvmWPAtP1LDuotFK26kwEknbiW4u2XC/v33GZB9br+n6jIfd
	 IzirNHl0yww3sVhpRJXElS+xVaqjq0y+bKnKjq0MXLx+qkd4o+1Fju2/uZpNCVkIrT
	 Mjd92tUYWzaKc871aCqHKgqUA4VhpXQrKuL0OZjxEYWlB36m17C9pmSkM4fMUdcsT2
	 3teLDj0R4NxnhQhPLKfcfHOWEVcBJkV8x9EkOttt1BBZtaL/wwjugz82yafe6XhMwO
	 nlKVLtA69tbCxWy9H27p0RJ+E4Hs3dhAxDmNP0ZYsupYTZjUG//CBq3sQqRM4xtibV
	 VYP5A9I0TaQKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F6C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763559357.25582.1015411321088289826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111c55a7db66ab207adcd04339f0f2a9226cbd86502d38d85c27e1e742c74ce0
Date: Mon, 19 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747635593
