Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739954756DC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784934034; cv=none; b=OSC/appI9DS5Ztz2OAisGgZ0zmsmliUX62v4uiY0DOOQwiO8zJL19abj+GwZmqUc3O5zckeQiqpoWAmH3xSwy917AYLwzBqZP2QPxAW1KDj3Fp6D/HdrwRg8WmwNI/DhbNCMaKMHSMILLEnk/DYAciLngsgmrHJz8noYvnYlVHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784934034; c=relaxed/simple;
	bh=ojZzPe2UNV9WSoV3AiThpgh1HTs/168po8U7Wr065QQ=;
	h=To:Subject:From:Message-Id:Date; b=ePsuaTlxXjTw8dx3rCzjwKclPvAgU8I0tn2YmNBQ3QRqLyjHAUjFwTKS4wrkC7pXTzWy0kb05B0gBaUrDoZ09a/RJquxa2h9gSMrXP72ap5dbRXfiAaF9sDFORA3e7NclEV7dfkR9Piyo6E5C6GqrbL4lDFBEcoYue9NIWASSB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTkWHF0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTkWHF0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98A1C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784934033;
	bh=ojZzPe2UNV9WSoV3AiThpgh1HTs/168po8U7Wr065QQ=;
	h=To:Subject:From:Date:From;
	b=nTkWHF0sAoq3B1FuJUXI78yYhVNfDmz1M/bNYRf/fBhS4SQHXp6xlVfu9yMfA9qTZ
	 7b4vBDG/mcRGst7AUCALWcMaxPWYzMJBLj8T1kX6n/QjGwer+DDmtN+rrMHHFvRdGA
	 Ikw540CPh57lE4m5pZs1HPsjibG8fxBrIxDHeBxnUXPb3FMYqI4c8HNewDGNfevFsu
	 w7oHoEzy2SsYsvOnk6//VBqpK5IRITAa+Rc2fjWZBgSjFiw3AccZAtroTOeL3obbER
	 iCvnazOVuRecjzxly/wF9O6BoNKFDyTkfcN041CwMBZAtoWOSZlxZW2o2281V9P2Oa
	 +9sKIGOZAT7SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8709C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493403368.25367.8859880515455626305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504242e24a43dd118a99cffb823cb1845ba4274467d157041a05379b048f8555
Date: Fri, 24 Jul 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784934033
