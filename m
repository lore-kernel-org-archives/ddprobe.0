Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FEA3537F5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776395854; cv=none; b=axLA7hBLFA46AKXDML9213vAgn1NfQcifQUH1K9lzq6bkkaH39ttKEskYqJHuD7LjTxbMLy4/C2FiVpf+fR83kX77WZ2AeR0d/BkK92Fc4Nj0jcOqTJB8QDUUmtNVgmyzt604enik2MFS0yph97HF+Toa8vQiCKmUHz/6M1WYKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776395854; c=relaxed/simple;
	bh=a+uhPxyxv4tG2Bs2YnIpj9xQr98x9D02VXdY16RTh0M=;
	h=To:Subject:From:Message-Id:Date; b=ZQbf2W43PjNOBpDPCKWqFVLeRMtMpDZuYjK74uAMgoptbcd6JraIh6R3cv7vqJaD6FCGaICo6UH7OzirVxEHf6rsJvdhtGNcosrkmaTNJ1LBNkRxSjcN8GGxdb9fYWRrCCZDDgXanTS7zy0BTe0QIaMbw5OSJFzbyLLBVi9xH24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5Np51Qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5Np51Qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF5BC2BCB5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776395853;
	bh=a+uhPxyxv4tG2Bs2YnIpj9xQr98x9D02VXdY16RTh0M=;
	h=To:Subject:From:Date:From;
	b=t5Np51Qn8WPKj8oRycHw7ZQWaDfehcTIZ5jD7vPR6X2M03QJDPFMfCggL8Eq2eMIS
	 e+yEAbZYfowzGyov9is6e0YAvh5JnsCvd/C6bU0VYeN4VI6su/nQyjvAbjsRpFZd5n
	 5Q0asuQcZGjgFmAUQShwPE0LAvXSVQo6HzUbuVjbq/CloeNsFDPEpzw+Byld1hRLTN
	 caLhHRxbZIXdDTYsPetNaj8RWLGEXE5/f1uGrdSwjuUdnpz8bDG3pzEaTKlRLNpq0C
	 EIbZ8lJhVqPe5ZKLwB5pRt2gtvKcjHqasMJWRuvEbodcKyjAbgJB2S157qcGav25is
	 6ZwoM31KVHtkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9756F8E4A1
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639585368.24213.18087513773268022450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d2e45349b6272de3eb956ae62f4068ae09968a79a15db3e7da9bc034376329
Date: Fri, 17 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776395853
