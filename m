Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3472264A3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762193994; cv=none; b=EyJK4TX1+AnQZSZDpie0EwWAVRoHq4bGhz36C2o1+I/AYmr47ENlxrrUA/6VYOQJSEpF5bV5s0lv0OVuDUd2aS7FESq+U8Q/bsU8BbkBBlQF/mKfdJR7zX6OSwWz8ODFisGoKMudntL83Iw7a6zj6NE7quul2bR9WEDDQ8dHuoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762193994; c=relaxed/simple;
	bh=XbDbgapPszV+rJ3lgT71VzvOqgRTFN/SrDKABxQNiXU=;
	h=To:Subject:From:Message-Id:Date; b=SvFJW9R7xQzPc3uhrtgA8yTBMdnb3Y7aMCaFXM9+by9hLezeNrNBOw2l57Wqlbx+qjXhj3smfToZ525+sm9jiy8IgVJYh5N4qAfPpkYIof0/kFqA5EoLvyRC4CrmiIjnH+KwrVeeOe0q4r7unWGd3x27uu9Auiv7lbRnkSB/ljU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6+SWwie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6+SWwie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7530C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762193993;
	bh=XbDbgapPszV+rJ3lgT71VzvOqgRTFN/SrDKABxQNiXU=;
	h=To:Subject:From:Date:From;
	b=V6+SWwieLXXa8YQC3be81dzczLwpr9wG7svaSHxOO2gyBG1uOFV27p4QfZABd23YO
	 uCpcrhj0hpJk0oSb3HcvRMpnYWObvPTZ76PZNetIt0hl4NOIpGp194YDjxn7jRIsEd
	 F8XYE5lwWOsXWZN3ISVgG0kSywOmBdENV2O0P+UZGCsazV4QL5V7hJuQ6+OhvusnBK
	 sKrg/A65y47mj/U2G94ama0jxznGsSVF5vBfGbLh6QELOoUwNzAPzKmC1XtZlXbzyo
	 MUcQSiUIdMRIiHCJcjpeDiUkHrn68bF4U+qeGkFElmP4Ys5Bofu9GYuAl8mlRVWsP4
	 kCEQ1wtIHPpSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92717CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219399359.13861.18172686027090562902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a901299eeb49eeb67bad4a73c79c65358c4a7667c9e59b0c9156f9bc35c1bd91
Date: Mon, 03 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762193993
