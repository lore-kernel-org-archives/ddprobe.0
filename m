Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169B83AA4FC
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774606494; cv=none; b=GWfTeQmAhOFagEtX3Zjtq9WCT8dvijAt+5Hh5WEzJ+Wy92eOJpCIIHcoarCQ5PuAHML7af4jgY3+MMIK4gPGtRymHyytvLzE8aC3Su/tUH2wG7pqsRGt7QFmcclBUdsVAe2v/pxKPlJQ2W9rDjrP3TmM4R8crvdoIHWyhIz3ZWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774606494; c=relaxed/simple;
	bh=ZMziI0f6koHRkqg70Ay6MPX0Fau7RPtsmN1PZQ8WcGM=;
	h=To:Subject:From:Message-Id:Date; b=Wqjiz0QQ3jCpoXiezlE0bODMtDsqc9jq7hKDfvSMVB3ZTzZyE6BbV9wt+cm5anFyV0KZ1xdPcuetkM0dATbRdDFZiMPd+K8QRm4Jh7g87p9winxBMUi0pJiRfAYib2FDNMBSBx7sfaxi9+WzjUVesklpwy7qp/2d1PJC06CfTT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZbxtMTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZbxtMTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A681CC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774606493;
	bh=ZMziI0f6koHRkqg70Ay6MPX0Fau7RPtsmN1PZQ8WcGM=;
	h=To:Subject:From:Date:From;
	b=JZbxtMTBlHcXv9+rAZcyZLHh/bC3FfalxdMn+dZo1BaU8C5R4Z0af3p1EWsu7xkA5
	 J3w8R5Ry1LJxvmIxfpO0IuxyAG9eE7/+4krwY8J0aC48wRN2IIe+OPfeEpXoTq5Ptf
	 +vYbXe3DxDk+Q8cYPSAKQfZljTPaYlNgwodmk9A6i24vPx26jUs2OoSIWBV7jIi28H
	 CsC08lkS5DZZ80VXoUAWOwEj9We+EXtiqLlxJLdc8Odoc9DSomShynSOhF5e3otz8a
	 4XbSIt2lHJDPGPC8lBRmppshUE+hCHPfotixf2EYCqXLAhw8LyAtbfAJa3dn520SNv
	 mmSBkttqtEjEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9457510ED652
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460649359.17707.1603060818292809541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e584473aaaddd6866537e7f0ca6e6df28e246388462904b45d3f12681c1c1400
Date: Fri, 27 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774606493
