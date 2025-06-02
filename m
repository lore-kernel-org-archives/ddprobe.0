Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1101C5D72
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748877594; cv=none; b=likXjNSDw2EG8jhIlpWivuMz0b8+Smj3J6axRbcsWC8dBcc5RYgcOx3PqysV5fUeCLWbUw0ACFJW/TS2Jtdzf9IO+aMNXp1S07yJncYTdNgnfMInS5n+rTDMPzzB9I6sVweJbzXtMknGZe0AW9aM4KLhp0yajlrAnQNSzJQbrSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748877594; c=relaxed/simple;
	bh=FL/1KZCcy4cdyDHmqDW1grv6bqReNxGC8bbTdsiQ2UM=;
	h=To:Subject:From:Message-Id:Date; b=LzDdB94GadDbeFKeDOEBQK46f13FGxY+SPErMSRqvPeplFibnhUx3Vjl3QefpkleVbR29qDcLCyLUk+jL5G3gvbnUs1wL+RiQI581xL4VOaxU0e+ZKlf9qs8LG0GakUv6WBA0g8HDkRxqsTF2bXHaoukp1rGf0AkaRgNq4pU4Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKuq+vyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKuq+vyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE8EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748877593;
	bh=FL/1KZCcy4cdyDHmqDW1grv6bqReNxGC8bbTdsiQ2UM=;
	h=To:Subject:From:Date:From;
	b=sKuq+vyOSOcxOdNteAwy2KHfJx3SRB5O8WSg9Rs55DJTqnmM2JCgwAfJR0bKNvYwT
	 mRcD96W1DO/gtxUhPSK3ypYU70gRbWuD9puUjCmqLFCwAyZBa6jJ7vi31wJmf2+/eW
	 vswT0RcgLMPT0GtlGqAVdC861c/0Lv5dqrpws/9+k5etiWSJTXNb3NkEwKnenH2lnd
	 X5A1m70InkZbpYcjODm4iZaoOvBn3+rWHqyklv8iaLGCXiJOimMJEhL1CXaUg6R4Y2
	 i7U0DBBymH+7QvMwk1GJxSEr98ICL3TFzRWkIFG0udHXrkV7jAbiA/5PcAgEUcmx4e
	 UUJuAeduf3mHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90919C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887759358.9601.4443191482395220841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39aa565cfe3d7f124a0933099e82bd3a0981b5e03625a29e52292435f59ca93
Date: Mon, 02 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748877593
