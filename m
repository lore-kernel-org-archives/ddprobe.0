Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270702D78A
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745608794; cv=none; b=GJmmtEFMcEQu5Etr3veAKwsi13wl+/STDtAp2Q7vuZCE7yFyEG84QwBN6wb+qW+IDyEiKM2ZhYyAfAh3yeMvhMQmoQdgdbQo8D0DZt0r1bbd4c9UDmAXp3izPYJsEgSa/SykQKNWrogAyaU7Q4+u7bwfXymmCOIcOvSeOTWJ610=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745608794; c=relaxed/simple;
	bh=aPWwSc9S1EtIGEjqqzHNobSWWsvIVxnwjMfVrJwKMG8=;
	h=To:Subject:From:Message-Id:Date; b=TYP/nsyfu9prw5xpc7klOMyGXzRhBurZY1sQrxE5J5U58fgHooe6ZAAImogN98yFlSvgX44dRI/haouCj/KkCVNXg75W2/gaXwjr7qrlP8P7ZFYWWcPbH8auHNTed8Gi9hOLgLf+U1fQjfmbVUK8FdlVyMCsi7hl1CaN0lpAL2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp32j5gI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp32j5gI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6EEC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745608793;
	bh=aPWwSc9S1EtIGEjqqzHNobSWWsvIVxnwjMfVrJwKMG8=;
	h=To:Subject:From:Date:From;
	b=Mp32j5gI+kjX++qg0VU8zooJQAopfY2/SjM8CPGs53wvyW4ICrezYuBk3PhduNsoD
	 bZp1ZAywITmt/m93FIC7xgj7Y7VQ1UpWU93irF4qByPEzPPPGxZWnmEo9fkt8a5v7n
	 eSr6aACgvkC2O3imhbH69H65UTv4PCp029BfPePLNFAUqXITdjTWnBma8A26YY/GBJ
	 kmzR1LVXXp7x1XZVeP0+peC5ZFbZnFM2CGacFuV05snml8Ks48KepKxAcNjzz4eJVO
	 3QPg4xNmrBaYup2MKqSr9oGxBshr5vSudHVd8ws6ZAC4VItU5hY2hv0Y+SqRLnOW3f
	 VkintiKFLgt5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E290C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560879357.30873.3833884552114539312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6561144055a87de02d0e4e5cf4362a6b6649f1fd1e38131168ab3e7eacd22fe0
Date: Fri, 25 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745608793
