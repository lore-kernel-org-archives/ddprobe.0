Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F3C344D8C
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791870634; cv=none; b=QDXEp+GWXX9p0GeDo/7PddziEWsdM2tsrDukMt0Gh5hRgxH2MoQ+rMumEOPvErT0owTdsN/nKBv4i+a38hm9KR35++dDXDKrczk1UelSzKL1mGvHFHaNFXGH82Hgng8dwVb63g260b4zAov5PZ0we9FSzRNdHgU4zLXLpOXchZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791870634; c=relaxed/simple;
	bh=ibfnabC+RQTlpXTUSEj1dKwkd9UB6RPuJ7beB0DUN/M=;
	h=To:Subject:From:Message-Id:Date; b=rMTQYH8d/sQqWHwvm/CGAVzf7Aox2b5CwTN19bdgH75Y+VlhOzOFrEbKUPur9ywSXXP0ZhUuTMRQe0bQwtDE2KhRIfBhFb3TQluxTxm4w4n2ggqyQ/seU1OOx/lT8rZEziWOqP40jRaZZN6x7XicMjV2+8Bj7qtXx2qDPEKTBk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZ4SC433; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZ4SC433"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0DEC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791870633;
	bh=ibfnabC+RQTlpXTUSEj1dKwkd9UB6RPuJ7beB0DUN/M=;
	h=To:Subject:From:Date:From;
	b=OZ4SC433GkqzSlatvp2W9ZZSP6xhs3Sem/wJLpwp/P7Nczl1hL9j3f9Ry9GtkWt5+
	 9O54yG+SWVSaU9CobFw+owD2c1SpUhL8GMdW3TV9rNXrbqQ2+n+RwFCnmza8QH6ezo
	 gXpQTqVYbZn+8S1mdk0cwRFHXMxkZCsdAssK9CYt5KVhUxClumsjxCXLdDcrdwueOn
	 70GalbyO29RiEySfX5D1w1zR8lJGtilQ+CECj+7+l1cmpnEm8evZaE+4c+CQI3YmVK
	 acW8cFxc9NcjpWVGbaFmGI3aIaB6gSBcfHCfk2HVb+AAytF+oV8RNiNEBbkhnCYgSF
	 cv1Q5tOOw6RsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1C8CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187063369.19189.3381942777143532678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21645d177b64178f34f3a5967793bdb655f65017254edf99eb6a1502fb5f619
Date: Tue, 13 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791870633
