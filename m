Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51202155A2B
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715025143; cv=none; b=dSnsvw3U/g7+SrRTFkoeop8MMVGGnG7ph2AUwzXEoUvez4GTd65CPYOhBP8jPa2zmXVRH5rqdMtvmN/eMQqZtEZ4xBmVnCcJpmG1mI0HZCHCR6FSNMJI3AqKcZs7lThHKBJI0fkANOd5wXa9e90NHd8X3QlhP+O/jTX2xo6wozM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715025143; c=relaxed/simple;
	bh=ZBJPF5mG0dmpjicqbfUT7WmToB4x13XlEVuDB3iFXZc=;
	h=To:Subject:From:Message-Id:Date; b=b9S/gvcdOjC8tujZZ/cKybnjOgNw7u8+gHSsTyLPC9HtVJC182bqgA/fBO808cJWM6U6sKhHQo4nPsLGaVDYqEGFOCMTLnvTRQwHGGhJj7omfp18g86oo34mWk3G0odGQB/RSSpGY147xnxfPVoOK1/YYyi3Z/qGS5QVnPVToEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeMOy/c2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeMOy/c2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D608BC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715025142;
	bh=ZBJPF5mG0dmpjicqbfUT7WmToB4x13XlEVuDB3iFXZc=;
	h=To:Subject:From:Date:From;
	b=qeMOy/c2uCYDR385bIT7MmOEE0gDQcRbe21QdCVm2SHaBiuoNIR8WfCB4cR3WvBnk
	 RTg7Rb4lNFxTVuzc3ENVtOPN72t9nEjLTPQG/Ga/ii0Bk9H0B7iTsOi64/DKsSkWBe
	 THy7MJVrV7N/jSa0d9W96qsWUx2mJAglZ6k0eNgucMnhQIaB1Uwdz5C243xoh9lyuE
	 Hl4I/0IaH4QVv+eyQbfIwPkzahmW+FFlTkLhOYMIOhFafw/i9z5e79qCD6+nFQhNUf
	 LtIRTiIgbHr5oWhaNJyuesQ42CRjM444H4waQtIuUoj3Q9Hstk54vAtJc9YbXdNzlj
	 Fv6YabkLfe+Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEFCC25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171502514277.27347.6101278523014196712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf0d3bd8e26b5a57e5c281648057dd5869489b1eff8c4a0347bd7494ed51377
Date: Mon, 06 May 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715025142
