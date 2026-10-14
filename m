Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5423C1D7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791977434; cv=none; b=VRBExbKmhEpr1dXGq9PdqvNkkKsurCuMu3ObVznaLnLp5CkeENH1UusN/SrNWSoxf0cZlB8wxV2FL/+bE0alUZelG4UcSnauXA7WZPBMlgitTSOnxPr+ACiAePsQntoqtaQOVZOPB/VVVF4+iNa9A+uaCkHGpCHnlivuts1+fWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791977434; c=relaxed/simple;
	bh=1mL7eApMALuvf/0F8+ZP6fttICVVPac5QzszSBUSI/k=;
	h=To:Subject:From:Message-Id:Date; b=I6SjoFjrSZG0f84VmXBfGWLyg2AMAyTnpEJn4wVv30aNd9wJPD4Oe7gzUOLRq8NLttqb4YJkJAo/KkKYGWGlCM4DcU4e+KZ/jUpn6J+Nd+8pi12XuL+VsDvkPURttsXwwEODLb9oKvtQvQkFou6sGwyTEsBcvI3tKp18xpufa4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al+Tf44u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al+Tf44u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC546C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791977433;
	bh=1mL7eApMALuvf/0F8+ZP6fttICVVPac5QzszSBUSI/k=;
	h=To:Subject:From:Date:From;
	b=Al+Tf44umR+Vzr/xysngrDu6tU8Fzs5tMH9SBbxMl4e6lReCvtAcfiq9WuS1D4cvQ
	 cMKS65YUp4GsqUjBy/TJImFYTaBaIe3q7BMgxl9sSJOhD8N5+BsAdrAlf/OCaREyVE
	 8JZnLkTNQ0dYDU+E38iyS4LiTtwqtYFH4mLcWypHpYBbPCmTbrICzwwTw8Kg1FsSzy
	 y8ccuBmjjADo01SH7lzxo8If8rJiylUyj89rviadIsPl2+zyFcCQPjT5eBQ0/HcnEU
	 jtI+yu2jgRWnk0E2juS5pRB10ygU/0wowjvaher24eRetOo7QJ96EBPn2K0vE/i4vG
	 QCpfmblsCMtEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2695CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197743372.18834.15111818034163709937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5fa3f9551e9e8cbb32929d512491c3115566d47ed16ac88f5a70e6ffec25117
Date: Wed, 14 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791977433
