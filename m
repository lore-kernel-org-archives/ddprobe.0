Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A49ACA6B
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725588954; cv=none; b=hMM/oVLnq1ViOIcNlAZ+ul4oIvbGYNgdcE79TuQoVj/x6XeBlUa8LDKlyCTy6J/5/Odb1T8ZYpfoYjPBV9oB2nSWZnmCga0xniPTlULyk79Sbcq4I9ORSzJaSw/Lr0iUrhE6UxFke8UoAoE0EcB+9O78AhzmPQKoK9tFO3sugNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725588954; c=relaxed/simple;
	bh=qzbkMYlX1Il5sNbRAJ0qEOu8QqUt7mnapbUW1NGot5E=;
	h=To:Subject:From:Message-Id:Date; b=DVLBsbXtcHLVOmCVHNi2VEZzaPjWoV4oxUDTaeXtghxDtKLCmIU8T/ELAIK/r27OxQOOJBUq5btjOg0VxzB1eklHj790cCHF5FcvItknBeGtH6WYg2T7ZrnB5HxPdVRdm1+OEdo4O0zqxODsDHZZDN3xWxf6NdvpnGXqV7HFmUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJiegJFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJiegJFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B579DC4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725588953;
	bh=qzbkMYlX1Il5sNbRAJ0qEOu8QqUt7mnapbUW1NGot5E=;
	h=To:Subject:From:Date:From;
	b=aJiegJFnKQaW4l8Ic5cugyk2y8EGXZwaHAGM5zuCGWBoPhvrek8KeEa+ve8MLDL02
	 W0gW6J9TtlYJUP+jkEZdj64M3bb05FzZbjJ/g8p8zM4nJjDtzFmL67snEYXgasgfw8
	 p8MvZ//urd7jBTZ3Bj+OIkVLH3eaG8/Vc4YvSRVXD8QIJC1SerjWZQARzQWOnISmtG
	 NN9UVx5IorjCaOTtDLxeAiPugWH6Xu7bnoa5ae0oRfRFqlkKveg5gCZC0JHtSGwSbC
	 xhRyp9A2uJ6WCof/i3/Gbr29oUVaHgJcYoZACN35lWfzie3zDDMKJQ90EqL8ZF7Urm
	 T+hfa8TR2PuQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFD3CE7AA5
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172558895360.4059.4428294847868512343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca06a25717eccf629628db5c97f87ac177bf337ac83ff819dddfb9c009d2373
Date: Fri, 06 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725588953
