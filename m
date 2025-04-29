Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDC02750E1
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745911194; cv=none; b=hyB/xWtqh4QrDQ1U/aursB101XSw1PIAnwK5sIzMf6MepxGGucG8tOVNYfwFQyVH+Qa+jyNOQe/sQox2jyo0EGksT3fl+r+4hiL1VjIIgWCLinyzufTecWSwr1lTteJnwr+/Y6AFd3Uy4icB7CweYA9VtxV6XvU4XUpu0KgEvkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745911194; c=relaxed/simple;
	bh=A1heswCyGJnhRigyujg2zH9lcBButgs9Jxc/1bf5QcE=;
	h=To:Subject:From:Message-Id:Date; b=iVRA6HnBfgqx9HImwRZ40W1Was6DiSzeIfLZeObyt3rhJoLyGD8hW6P57/kYQXUPHXTihCj9kmGGcufpE4KNQBCrQPOIO0Y4Rd2l66F90mn66AH5LmIYchBrsDXOetctMB/kNi7piwE5YBv3eyjpGPrObiEfw426MeGieZrNFfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8jltyDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8jltyDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28A6C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745911193;
	bh=A1heswCyGJnhRigyujg2zH9lcBButgs9Jxc/1bf5QcE=;
	h=To:Subject:From:Date:From;
	b=d8jltyDqw/+rD8Qlnc3Jj5msGnbZnjNocRL1kZYvP1aNh6SToLWXjjQGeV4S2srLW
	 H6CrTl72cPkiXlY9cY0AJc7aOqyt5C7mLK4r6lX3WmuAgfQqDKaR4eoZVEQGPSFF8l
	 evNsPXXklPOdBSRdPx2BaQ8zR2AqwdGzBZxu7WrC0WSWfq3RkcNktU82o0WbawxvwZ
	 FPQIhQw2CkQdZFjg13L7gPoTGNUBSNk3Y5UzsXvFvykFX4/+gBBg/nwZc94Y8ys2+o
	 GW/1sOExmzFbGgk+vJr57pvtdjmBt67qZXMEgfaOtxJ7aak1YwdWfuLazW9mcd/6IV
	 4VxGrQGijV8Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCEAC369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591119358.567.2465197794818593803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c6e0b0a4fd367727f7244be4af8c72487bc2d8350f1bd92212f7cc6e873c2b
Date: Tue, 29 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745911193
