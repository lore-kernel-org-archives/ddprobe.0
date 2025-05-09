Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB0ED2FB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746751194; cv=none; b=YKLeKHC2oVGF7DQdhZ+o0KfM60zmK0R5d59poJY0xdf7pJUZPUMNQAQiDt4yL2xzttziPh4bymrf7/p8d/lrQviYOnvyawpNCmgDYcajO52LKdQBNDoaGr4YVy4Ux+fQQKZNLfF3L32WXeYI1eBe9YjxtYCiMRc9EjD7oZ2W3EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746751194; c=relaxed/simple;
	bh=NdCh0cbmT22UEjIztqNbtVwjifNs5cFX7QlJQvTW7Ik=;
	h=To:Subject:From:Message-Id:Date; b=pIE3T8Kt2Zv06ZYibgz74aH/zQpphsDp09Pggn71y3xF7TupCdNTxO1AEkoFTdSo1SfBzBjG3JPW1Mp9Ewr6NmqHj6cN+l18OM6oMMf3OQkC/nTVs3OOmBUXEc2UyI5uXonaa7U8lL9s/6+4AfnqU8oC4D/ykcAXIiPpQCwdnbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqH5FZ9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqH5FZ9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F5BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746751193;
	bh=NdCh0cbmT22UEjIztqNbtVwjifNs5cFX7QlJQvTW7Ik=;
	h=To:Subject:From:Date:From;
	b=cqH5FZ9QlG0UXKDIY5wDVQY95vQ755vdJrG7gdip+GkAKAmVf03QuPaCqAzV6sF8I
	 gERCfx+wrsgLjNqXYhOkYT0OJnt0PIEKZ+5uV/QkqCpK4hSIYL0XNta2APWFxQ1v9B
	 /YF9BrKoQx2knJ8cSlZ0qdQnuwaeaDIf4hXsfgtWmupTrrMBsHy+slWOgqy7wCaB9F
	 qOU2ipZb85svjwfscOhgvC7cLquvsuS04uRJuQZVTdsC04d8JhoLyZpu61dR+WL4/L
	 Z9d4nJHj51GsV4fx+R/dKygzAD8OdqgOuiPbo4qgaQA2OvFMKMwRAVUjWq9GKzfU+P
	 Oz0z6MEqpwTvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931FBC3ABC5
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675119358.7575.8495263403599986959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb5d517e3505cb03d4b36de53958c05dc6710b5289fe1065dc2ca118805f9b6
Date: Fri, 09 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746751193
