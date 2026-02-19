Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A2623EAB2
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771474494; cv=none; b=MpvQ0OD3g9P60V2PLlgYwS/JMpI8FjPyHXVG2ZaM2EOzQz/yJLCtkZSYmweytmqnVhlhloCSIaB8iqG870IRjaR3ZF70GQHK8UvT/l648308hEjNnz5xEYKPYmhp4Twyn8npXj9LrM9uSoVC8wtBC9/SfWzCd+O2Ep/Vx8uUwd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771474494; c=relaxed/simple;
	bh=wa5UQzztiQ4JSTt50sqkjanHZj0dIjQrTX7QObLjetw=;
	h=To:Subject:From:Message-Id:Date; b=FV74uWfHK+u7NDneG+VUPUlpAK9wDj3/n1E2l3IBtHvpJskwUMYwB2CyP46L6tOdpt29LlP49A/7P70G8+/WjLPaCcnZZweJ5Dck0SJzZ8686Uo107EaCxYt4cQieIogf5ca10N1/xuPoJYvNygU7QAfqJZWq5/SHRY1xXS40C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWb70fCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWb70fCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA72C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771474493;
	bh=wa5UQzztiQ4JSTt50sqkjanHZj0dIjQrTX7QObLjetw=;
	h=To:Subject:From:Date:From;
	b=YWb70fCYfj2aqGjtJogp3qn9vE6JI+gbbt1UyAo2eoKM9IiJwFSKWN42hMQ/H43w5
	 mXMv7j3Izk8ChFncjTrOsJ95u2WowtWdLgMdb2f6EceW+Y6qcWd0UiQajg0AX///x9
	 fYipXYcdEeVEg68hKHdjll6cUFvfphTuzf29uYkiVAj1ooo73BebS3yr0gLhQxkZaD
	 CfcLgCjXbunJRO1C2Sb52gqaWU+BX2ORSp9nZ1yvhRvJYiujgIo/gzvtorLxP68J1E
	 q9EqenPxlnNLIsrY4EtvBJjGC8IZvsjlNJLHVlkEWG76Cyx+AaRBJT9kQ4xfKa8+pX
	 1xlcES1pzw8hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99857E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147449359.14236.2466479460305106596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e52cd2f513994c91a9850dd00f760ed568f46283b640813c6fa1ae3672486f7
Date: Thu, 19 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771474493
