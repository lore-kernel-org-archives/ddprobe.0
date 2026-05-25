Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393CC14ABE
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779719554; cv=none; b=JkzRp+ns09tAGz6G1XT4M/Nmppi6NNiK3+PvP0N38MqfbQcPeoYh9hVJIygh0cD/txP2czJfHcqogzlR5wwThZmaP+CWSgDrCrGctTNoN+TP4mU8o+Kcbo2Aex0Ya4ZJA4TTlbG+y3XEdKPLhkv7IGCORkwDrE/oN7bHVvhvNUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779719554; c=relaxed/simple;
	bh=yLBQXala0BE7HIKVKN0RbGgikU0MMWKnRGsJ6Ya708M=;
	h=To:Subject:From:Message-Id:Date; b=EqS4meocy90cJQY4F8KYE82mU4yC1BNzNLrMJDhZqbfrLkmznoMEYy6nGrO/fKDv+zthfvOUjykx1hVPZV05JZAQdWijvRwthDVbE87vbngr/j9i/SUIfE449bHgGbAQY6poBMT+XX+b+muzaPaizuvlQSKMDQGnY4+JUfS9GUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXAMOv64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXAMOv64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB80BC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779719553;
	bh=yLBQXala0BE7HIKVKN0RbGgikU0MMWKnRGsJ6Ya708M=;
	h=To:Subject:From:Date:From;
	b=VXAMOv64Rw8kjKpQZtrlCcNRTHxXsqdlb9+IwmaOvycNMqok+24qDSlry1wVKt+3F
	 l9qfixGI7+DoPyYJy1ce62XmdTa28gvriOya1nAjGNDImVWoow/bmD5+o1HNFVzmlx
	 SBi4iO6az6AXUUN2/ufEHXjH2FN6z7ZSYR5cM/E4NPnGDQtddYJPaJYzhZY4msApyj
	 hRaw4D/2nempXiIXpfU0DCOy538u/CubNREvEKt92n98znmEiTTSiR1QiEtIiZdbay
	 j3vGkAwfOU5aT6+Z0LBcrxXAbjQ7TRsLOPbGmpyG3Ol8wUOVFTNlpz1+G7ECMBy2v6
	 59c6925JfWoFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3074CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971955372.27098.3594178736046959871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce9cef63791cdb3eaf54939a40526e83f9956261c207e35cd479a1762dce574
Date: Mon, 25 May 2026 14:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779719553
