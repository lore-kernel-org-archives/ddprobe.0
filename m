Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE3C33D51A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780698274; cv=none; b=FnTiOLK5jzlpPSxqZFdfUXldsfzu7N9Fc+TXZoRuHcCI/q/wlchQ41VoRYUHZZoJZ3tVYTE9/AC1uIGiNaO18bVYqtMgg2sYcL4GW1ejoWImOZw0mPD64iTNiaxw6B6V4F5B17iT07H5Qr8GBbx1LJsacH/Oy+53u/dR8yrcdSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780698274; c=relaxed/simple;
	bh=7/Qg0eSrF6ZZt0zTiUPFqQm3J2cfn/TZsAKdy0lBBHs=;
	h=To:Subject:From:Message-Id:Date; b=Mr8cGA0At4kb4YmNEUayULrxDvvDgrJ30MpJxrSufdyn8s4mFNOvWDcrhumsEF5BafKrUBLtFmWGkHiRdZrFRG5B/Ziv+Ivr2DL6VOSibMaMfXqB2Rw2+GFlvaSpuVA+O0yVpCz/FD3b5jROBp239n27KmdMj5NoKZywBt8vc6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQzy75YH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQzy75YH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC924C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780698273;
	bh=7/Qg0eSrF6ZZt0zTiUPFqQm3J2cfn/TZsAKdy0lBBHs=;
	h=To:Subject:From:Date:From;
	b=nQzy75YHFN/WfizfO+JoJUM9iq+JRX+pa5zdcbedn6nYaehGceKTJpHI9xbtDOoy6
	 +qHPS4cNCdNGCK9ewZZK85DEoOV6Es0FTUgOqDEqajQi8ajdH7Kf0rQQnNFvXB51cX
	 yh64hKr9C08607eAtUhF9q7CECqCZwsR9Vb4hsyQD2QZN/xV3N7s3ZyZOZR/vxQxxi
	 gfn0CcPPAqE5eZU8SKzqK/H8HhNmHj/EvDPfVah2tzlc5gnuWAyri7NzAXwtrkdmPB
	 VHU5S66EbFXgTgBWBRanfMgIc0+GXSg9wtEPTk+XHt3dAGtplzGkS3sI/bUCq3OFYk
	 0Yr+9WrdLJ9Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3038CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069827372.12857.17844518871304006605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac24a9e6aca94f628f01351bc437a26fcb94e14f9c92681a902526bca038698
Date: Fri, 05 Jun 2026 22:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780698273
