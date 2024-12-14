Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450E22F29
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734150954; cv=none; b=ATQE2Fhk4WG8OaDzU7alYCKZDaVgNzqqR/FjF2xbTMKG6qfQ+GPU6a6Gqjgb83WsxOlHDFNj/7ANzOTlegY28Dw9q5Dm8JmIgrlKL/GzXNriA515Pc34gXGmYHjTzKh/tscRAbcwkFK0XWwx07Dt/uztDhW8w3pSLt5C4QPpIqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734150954; c=relaxed/simple;
	bh=eN6ImCVZKKCR3TjkCnAAUTY8+fWaj4R1ESR1xy0Yaek=;
	h=To:Subject:From:Message-Id:Date; b=XWtSP9ydnHuuOgnnab1x3Hz/5Rqo4FJ81lVCuhc/buXyR+sBYFIPkB1yeT293ZCAUiVp8NyXDsHtbblhduou8yGhvyCFm8Zn76lxPcqOlYeV/FTQ2Tu62uTlBlRRhPiJEg0ZBzFNwGnUwGMtN7c2qeFgOE5u+RRyMQ/IE/oV238=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1gLendg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1gLendg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5CFC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734150953;
	bh=eN6ImCVZKKCR3TjkCnAAUTY8+fWaj4R1ESR1xy0Yaek=;
	h=To:Subject:From:Date:From;
	b=U1gLendgtAQ9UNeoe09JP6OkadzSP9wuzhMf8r+NJXAHDbIVqpY5fXghCW2mEstWN
	 Y0xiaDxS/1p9jcoMBaaUFjRWTgjetrM7h9LfexoxGpagjEQLhZApGX4HZVFY9H4e/D
	 qEkVaHzIxfFNGEkMC676Zgp9vlvWDHzX/OqH+D5FnAFGpJSjwngG+QQCXk4tQLA3uk
	 Ar4/54OUewPM7Uwa/uEcwQelsU8lrzidWl0ISD4nZ8cPQe8r8I6ru9ewQ1g8djrhvt
	 046IwiPkzWmvsLKZVG8atgfx+7WQiQTdYz1FpG00c7RM0QpoBdYruYkszkOC8JsHZM
	 10/yu7Jnv57iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CB8E77183
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173415095361.30406.9604379587676701605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4bcefacce4a95f7365d79ac1027b32f94ed89a3b607b11f935296857a9d94a
Date: Sat, 14 Dec 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734150953
