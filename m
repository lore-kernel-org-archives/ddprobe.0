Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E441C28E
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761914394; cv=none; b=grteNYomZP+0ya9vuIdbHdMJWEk77BwN/LiIBAjpEauH1N1DtnL4eGfMlMtySX39l06q8TLlwfUZveP6wysMuEVINeg4JLy79GmvDpvF9bLFvHeIVB+/QksYlHbgylAWcIb/0E47uCa3EvFe0qRONnyYY85LNg5V64tRx+0o2mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761914394; c=relaxed/simple;
	bh=cLYjMgXlZsJid+OYMW//A2/ryLeUrjI/WNOOiZ095W4=;
	h=To:Subject:From:Message-Id:Date; b=n7mOlocwyiTwYtyaQwYDvNSsgHZpCdhzKgikGEfOYnYGMt0dTSAz0/LLI1ORNfumQBPDyj0X+oSKlVQ5sZGuCY8kQY6Z+2CZC4AMe+XOqBHw7vEuG/Ea1baXpfZZMoQsaW7YCsstv1fapGMNR+JR112uYXI8ZW3KDTTsx4PTswE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sucrTOeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sucrTOeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE89C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761914393;
	bh=cLYjMgXlZsJid+OYMW//A2/ryLeUrjI/WNOOiZ095W4=;
	h=To:Subject:From:Date:From;
	b=sucrTOeJCCc5QMJ/1Z12aUqrt9lYRaYiD1rrmzo1/O70rnVHXv5umqbL48L06jMoD
	 zOc0zNN13ZImbUIRvlYr4ykHmFnKgAGvIrdCzLZiXN+f2RuUihmAXa6FsXcHweMGuq
	 ScHp4okouggiOGsUOFlOm7FVQGGmevqFGg1T76K/n7hIbs8qki+S2u2b9hGvJVzjGd
	 HToEWlFh4Rp98rY1BRNxNJpW9LK+Op0NN8L0OpTG+1It3xU+GLBZGJRV7e0w/d1IcO
	 HjafUTKCgcKO8Og2doWMWJ5ebBHrhN1i+TfFJMGPwQFwNnJLWTy2K5p2N0GGw6smkC
	 jonEtDBtaOI/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A0CCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191439358.26767.3874457377018857625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bb8201ba2d75cb79cf6cbd42943e51e25b5c7cceb7686da8888b3086b7b88d
Date: Fri, 31 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761914393
