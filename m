Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3F03AF656
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787899834; cv=none; b=lD3PPXdZFXTsnMn3A4LyQ5CueZ0aqGOB1zncU2eRmKDgJ8guPx308z23dhFfJ/j9U3B9PLyeWpx7AOA48nwnVo24MWzC/6Cr6N3KyD5ul09LCYW1S/Ach0LYTFRoxXNNOOuhcfmuS3aIqXoC6ut4WGD3bY3g/fuDjKRCtvlI3TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787899834; c=relaxed/simple;
	bh=ai6e3KMzeoz5uvbdtP8O8UCGqFXEwlzMj4mGSKSpsTk=;
	h=To:Subject:From:Message-Id:Date; b=gEIKUI2/ultX037ugfHYHHwFPds3ff2p+z4GnXXuo0f4rHQ2Ho52/2pVyO0j8O+f/1mCJ/WI9+KDQn8xuAg/WOEPHClU1o27q/uq1j1SP9/bhuKfMAB1U4SdA8agfbHRS2rU6lBFw75arT9no9Q3W2ZC3JKezJd6PLcn77oDBOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nk4fAE07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nk4fAE07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C50C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787899833;
	bh=ai6e3KMzeoz5uvbdtP8O8UCGqFXEwlzMj4mGSKSpsTk=;
	h=To:Subject:From:Date:From;
	b=nk4fAE074Bo8JcRbDRpPcm73dfLWR1kaQ9tT7B5mvZ4Ql6g6SIWzbuj7VSiQeaTSu
	 YebfnKLHmyw2kF6LD3T++h0f1Js5BQwHnZaWdG/0Q98HZRT4k6aRGC9/Z2mBZsd53a
	 QsvbBZ8uPc4TSsiy3rcglkqCkTLxSvfKlCpXz9sQbjOp4aQmiN+3Bu357T37ANFvr6
	 yGQP+11POoQbCU8kjpkndLvqbpNZwt3scEhMbw3huQ+IHs8K72Yd+1HB8JstpQrzkX
	 jwfg/zU661y65Two9fDunWIYKRxKD0B/WGlRjo/ufb9oRN3ECZshEkh9GgHzdoaLxg
	 Dn0dsIyHP9e2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27EDC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789983372.18081.2325310423713213513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee54a5acea037e14bb9befeb3012ceefb83c6e9cf02e9af58956895960c9b7cc
Date: Fri, 28 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787899833
