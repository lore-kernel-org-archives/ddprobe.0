Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B40F79CF
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764638574; cv=none; b=hnx0vyRTK3ePOwmJ3ULhUbHqbqnV2IppY1JNhcEp+9IeNbplGLSdZ89T2/02rFsloFo8SsI5M2KtEWdEouvZ3UOkvr+vmmqk0sYV1rueFbeH+g9liQGiy3tJihU4A37pVcmdAkW/nf/w1aHBW7/jVzjygjrUj+w31HOBn+gHlbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764638574; c=relaxed/simple;
	bh=4nfXLxSR50vTkoy+it4n99UOPxPhJgDIDWuudzjUj7M=;
	h=To:Subject:From:Message-Id:Date; b=Ub7i3FQ0ogfoPfs+IXONe0aTjSLO1gk3oKGs/GycihTVYnTmva7NSBmtjpEgq7sSV1c6t7kiIgVkL2Hr1/dXHua56Jnuby/DZlCwvsplkWFUc3zxSsAwOjIueK0S4q6j9nbMZAWaZPaPFylHVqTp4SdKr742IouTw1h+pnFfUp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buK2m8Nl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buK2m8Nl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE66C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764638573;
	bh=4nfXLxSR50vTkoy+it4n99UOPxPhJgDIDWuudzjUj7M=;
	h=To:Subject:From:Date:From;
	b=buK2m8Nl4cOT0URy6C1iuajRGpP9YwXALEjivMTvCrxqmEs5tAAdLrQyDe6Yk66Wu
	 PiOtPSp5oi4Kc9VExg94RQV3gIqBqC5uxT2NyuIPFhjl0ybMtfuTUkHdXilakobl+L
	 Xa6v2R1DW93lFwkWJ5jUUaahwmorx2MS/NOOCMVdhC9W/D4p6J4VZiPH6tQGUJR+G/
	 Oq8qhWikO71dORBUsz40MoOD5Y+5Ks92hhEojXxm/PuFC8WCA0lO8UJHl2HTz/Uc5W
	 BBnvweWX8d8ywLXRFsVqtPp9AyOcYDmLuQkT9uD7Ln0YhVYjYMbF46f90gLRRsOgw8
	 5rMxrtI21P6gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C389D116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463857359.32353.16732978018670795886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d1b614407fce1f843974101dc096d10bee1421735d5fed577c5a4f7f0b60e3
Date: Tue, 02 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764638573
