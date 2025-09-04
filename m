Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29119285069
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756968595; cv=none; b=QJ6H7S4zpRQMdZf2BBt1SV6SP4X6/aTQq9xwQ7cDMIvHDC2L8KSJzkDty74QbIOMR/cxzrEJvUY9++lNh+5zkjMZxvCnCsZb53zWINqT8yKO8Nsgoz2GoMf7x4FuYIHlJ+RRmB2wtfU7gvuly8qGNoQR5anThrk5KXMcwhQYjJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756968595; c=relaxed/simple;
	bh=OSs5tHCBX1kquqGYOALoidQYFw1XuxLHNzNZSmhgeuE=;
	h=To:Subject:From:Message-Id:Date; b=SjUFzD69P/7LrTlm1VpaTvUjqZz8ZNK41F+Z2YUN01UxSASL0cgR0x5RpqjINZ1NqfHDu8c41vW/x39oGPM0uDlrEldzV8GFXJoR/6L8Kxo8sPFumI5HtYIA3pxn6ZAIBCCkiDuAe/p//P/ooMCFB17cQcfocQ39ZsHEVnacz8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuKmOJyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuKmOJyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A153CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756968593;
	bh=OSs5tHCBX1kquqGYOALoidQYFw1XuxLHNzNZSmhgeuE=;
	h=To:Subject:From:Date:From;
	b=GuKmOJybPbyRv53Y0VMP3Cp4lhDqglNUt7Td551IbCSLyy6x0jM9zktZ2sCVy8HcY
	 hbwW/u/IN8aFXEt0m3+vExGYO8sawqN4OlF7nPyWxWAf5IxrqwRrhSzLQPSw1EPdVE
	 OFpB1O1wQpgTA5IQDoxEPesScp+RKnpRLSdwwbai7QfSHOuijPLDPN/X5Q7+KW+6kO
	 Lma6kQztletyHd0dqV8kelEBO/tyrVYVvWZWlrugKWf3JyiQWv2tlJn3pUPUCE8vSL
	 wj+YjSMVrQCpQEC33sWOWBd9H9BrKRJiIAzqedyN/Rip41QUPh0jHhFcSO7fymyQ1P
	 ax/Tv2p/CVJvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFDCA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696859358.18266.5732072632581355107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86b68e82d94dab3ae0078ac8346590e0271c6e6a5cdd44112d2d58ce68de1a1
Date: Thu, 04 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756968593
