Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446EA44C77
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718563103; cv=none; b=ce92RdgIST5bAe3fOSZY5r0ZGcLCjLA50+biiAE85J32Gj0LrqvuNNlQ6AcreAPrtgksNU5nPgHm/kErZEBIqoll4Ddjk6DX8UzmjLlkhURaDfpgrwfr1XjUbbF4xfjfDAs7YLYPT1dVC7DCftbabF1zsimYUr1V1PQK70KDg40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718563103; c=relaxed/simple;
	bh=NOApJQqga2WWLAHIrQ2+ySzX3u7Ri9rec2dIxZpbvcU=;
	h=To:Subject:From:Message-Id:Date; b=iwLBNB0t8yi2ihqbhCcFkE36Kl+Xde+SnPTfbXO2tQhuIMeg9ESbJvpC7dGXI2yaZzaIdN/NP2jl0mE1aypMuf/1WcUHwz9dnDAdAq+zFq9FvGp7eiC1TIeXqNRHDiE6ubH50XAoqFZAep/sIiKgrPke7J4cxoLGeb/czCYQgaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQ2Mekrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQ2Mekrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC533C4AF1C
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718563102;
	bh=NOApJQqga2WWLAHIrQ2+ySzX3u7Ri9rec2dIxZpbvcU=;
	h=To:Subject:From:Date:From;
	b=IQ2MekrdH+Ug4PEmF5V5TDrYjlZjaKEKo3ZxAAE7rLu04Zhi88Xgml4nL4HRHHXCa
	 e/HoSL4Ye041fhHfAlzM/nwYH6N6ug8yXcvTcD2uuR8GFOweqpy+uWoyxlzQou3BPw
	 Zz3/v82tztHcFg/hx/DuAgaBxMxDHU/ayx00G28bdvecUdGnij8knEkOAuH46GTVas
	 DZNTaShF90oz0KcrYbmhkXp14J3xJnTytdd2Qyp78y9m6c8vnjT9zpUA8QAnj+s9kO
	 RC118hoV3rOkL78zQQKqSD42go9h7Hco6WxF+hTVtuziA5vMIQ4m9RaSz34N0/4Pl+
	 kZ676jRyEgStA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6ABCC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171856310280.8180.7495319297816672167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79eabe9e3e51d6430e6d1b131dedf5cb92c1beda731607bf0ede7362c585abb
Date: Sun, 16 Jun 2024 18:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718563102
