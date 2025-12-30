Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322B52FD691
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767135834; cv=none; b=SiisVBzq8wOgFeflSYncU7YyFFIt3gJDDCBUXVgIgbgAV7tqtlBN4VJsnxabLqirBTyq+xEIa9DzG/UowvSRcAyChZiqxgl2LvlQ5xLcel36RaRI11/RnY40ddT1lG9nyScRoDFZ1eU0QeUscWkPJHQHrALIcCtnvaP4OGGN+QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767135834; c=relaxed/simple;
	bh=/6VAphoIv1knxVPIsv41HYPBKydz1yP80KZm4WNIWbQ=;
	h=To:Subject:From:Message-Id:Date; b=aac1mUZ1r5RV7tBTzdQXpSvPaexSd1BaN+XtU5ZfrSeHcKzpN9X43b0c2Y2iAYdz2sRx188C9CVdQ8z02D/Q5PjOrKZ2IwlMsb1GKbpE1wvTvuIHJyq6HYQNx7+pHM8LMuwgw/96p2cOP53obNXbpe6wfxKgWd5fA2bp5MxuI6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcRf5ASR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcRf5ASR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAC3C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767135833;
	bh=/6VAphoIv1knxVPIsv41HYPBKydz1yP80KZm4WNIWbQ=;
	h=To:Subject:From:Date:From;
	b=fcRf5ASRO/AUuho5mNDG3PP+edvwkiYRVlp9o1+IJyUvqmt4M8aBFTfnSYUAEYiZV
	 N15esrrZBtG3SSxx54udo7IlDJv5mGyVmxNQySg01N5KwIBy1EJt+xojD9rT6XN53C
	 o3k48teDZeZuqNVzwTSQVVKEdwvanIooU2TOh46SOseBMIR5AyxVQ46U5Yb/Zey0id
	 Pun5FBD+wuqeTAOc96yxRXJN1mRPzDsjmhe71UCmpfCnyUE4l4mFvOvbkSbirrNJjW
	 be/LBaS56uUW6WWKbS83GmjflfjlulbEWplrfJA9L72vJepxxsNYDg9xMKQB6wcbgo
	 OcFGRHTT4cHtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC96EE57C2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713583357.13396.7972684279031137894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed072c717821fb40f1b243b55f5227997d1fa27904829478dff5e4bde400fd4
Date: Tue, 30 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767135833
