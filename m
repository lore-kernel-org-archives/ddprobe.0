Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D3A261B9B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772110494; cv=none; b=L6FC7jYh86uL01/M45lcdpXH1JjR0CUmPDjk8MuhVEuxYKgudKcspZ8Vp8EjVcsI6YbkEDIdvrgZDkM06x/EBiN1erlv5rF7q8Wadly8hL7BusQKLB8sTPhidtnXyuoVrgQ51A+AMCpx7BDLydaHgGz9RYuDmaNjt8BOzPTrlUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772110494; c=relaxed/simple;
	bh=DGrEK50652A/emSnPZtdQtCCSO1UhEtj+puWMCJFq3o=;
	h=To:Subject:From:Message-Id:Date; b=eX0Y6z0fTlEI+TdBMHAziLX7Obey8hMzi9cO7MshX+/0X2ydxaoysGfs41EK44Bw0O1rn2fpu+1pMimykqw8vjHRH9fj+EuiYtRf5N7hqj9AfXONGXxDg680HaSW3OPgS6bCBTWTMzlrURe8+itMwRgZvrMclutCYg8c1Hq9yKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZh2ULrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZh2ULrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6415C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772110493;
	bh=DGrEK50652A/emSnPZtdQtCCSO1UhEtj+puWMCJFq3o=;
	h=To:Subject:From:Date:From;
	b=GZh2ULrv/MMeAf+GdCakELm4BkG9HNDklPRSjBdSSkc3so9wVhQ+fo6qOR+gb/waw
	 oZH5PNCGdNtPLtElRTb2B2wh0glBKABUlnQWLfh98y3fE4f9maL0o72SrXYCmwwL/7
	 jLq769gXfEPiieZplA4beCkJ95QMj9ciY9oKyo+KhEA5ObYezcDqj+ZNIwa9gNA220
	 rq2+/LNomB7OTfCl5vpUCjgGCiDXBD7fXHVbmASgUBNt03b18GVLlGNNIJWMn8A2FM
	 xCtTc0IfEoZ3EGIQUyUWb8NmuBKCIGHOn7KFAgQy51KgNjCTsk32ZTbqlJdGOKlDMf
	 6/FF3PEkWvfeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6932FCE074
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211049366.2665.5301976221926237758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 854352ebfd39761dc7782015bbe46836c892a75b05dfff3c3e28441f45e17d19
Date: Thu, 26 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772110493
