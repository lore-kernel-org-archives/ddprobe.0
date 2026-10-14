Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639A22FBE
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791956434; cv=none; b=ST/aMmQx4zPULlQWD3KMkSID5bvCsfYv77ktwzzLgu2EeVe1REQh9+6oZk/E+dqnQu5n+K5aP4lFssWzkuNyiVU95OlwN1Yab6q4s1FT+ZV1aTpNQBci4mgDU6L3xaFyoutTlycssvJYhLdjWN8XNHQrpNuOo4mOFK/idbYeK3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791956434; c=relaxed/simple;
	bh=jUowNTQFAfB4WAQgIDChaXEuPTCcSH0VQiOTBqYKbAg=;
	h=To:Subject:From:Message-Id:Date; b=l4kEYbOZsW6eqbRIyO6VbWo+FjhKomTsbln1JdjCMh73TYcpQ632B8CkdemgFdEnxstX/fSDa4dOi/It8CFCQxIdwiawhyiG0pT8+9nmeDUarN3R8h+5n1hRmjzXAxkiEWLnONpPYIRkq+m8TBJBtv4tI+tcwON/QGuUiXNK43I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVOR3s3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVOR3s3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24F4C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791956433;
	bh=jUowNTQFAfB4WAQgIDChaXEuPTCcSH0VQiOTBqYKbAg=;
	h=To:Subject:From:Date:From;
	b=rVOR3s3mYQF9Au5XNNeWVvzIj2rHTv43X7FXvVlq8z5iUSnxpYGQetHdnaRyusSRn
	 oPLLMo0zUWm5GIM44P+rGwEhFVt7fBWMYUwG1s8IHx1i1KevWCuBDeIa9gpkYuhtGk
	 T/lXaiEn8d9RZdW/k6f8eYL9snxtNKhtLQGwjyUDYQhkOhkbXPM6EogTT8sGWtfl7F
	 0QvtYRdPvNZ3N9SYum3veReKFYpE15h5ol4QhQEt2Hf4dos+yjRD9PoF/4lZ8SdUq5
	 8p1ifLTalI7Wl3aPC1WBpAeGwSSJvRM4qCwlhEGWN5mDKgx4hHqkcXgYqG8UaQKyDg
	 wSN9HWllpGOyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC01ACC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195643369.25105.17940084344275269597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa94380a1d5fde82e5ddab78a34dca6b110c423f5ff20169e3a7590d899fde4
Date: Wed, 14 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791956433
