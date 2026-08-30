Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598C8248893
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788068434; cv=none; b=jjnPnrOK/2eojiQlon3wgTYmALLpgtn64883rYu4CgC+cAKTBA0KAi/XYbLti3nW0ukr7k4oVitr3xzKeMv33Gczkco27THcv2Bxc26DRP3/jU4WIsNTHHKV4lsBvzfd+Kf4l7/YwZd8eWPFc3pvzwuPwukTCk1ngwDy5L/Ha30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788068434; c=relaxed/simple;
	bh=8eLqkp6AtgvDP/rT9KZiBdQzszfA5OJqkbepDT9yPTI=;
	h=To:Subject:From:Message-Id:Date; b=Xzw4pMNSmReTZHQwGdRGFatgCZbQN5fzM7l/lTOg1PyiVNqr2RsazPDXN9pHac2k+r7+iD1vZfdkPdF5JbLzgznFqT8zAarpYkNRUkK8LknYEb4PRBB5T5lWy/p4MgWPt27beIiEtHKNwjWbbPuVD/9EZKhMjwTb6RDu75l38DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=da5xmTkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="da5xmTkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C90C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788068433;
	bh=8eLqkp6AtgvDP/rT9KZiBdQzszfA5OJqkbepDT9yPTI=;
	h=To:Subject:From:Date:From;
	b=da5xmTkxy+krAHalmCHe+GXikq4mbGL6jHREWgJ2bs1Vu0eUPP52oZi8BB7h6cosK
	 ZWhTzx6K0cihpIjxLBr0oJG+L+XeFKkb33ChJH2HkLGH2oLQB78q8bxNDqOp4PtAdd
	 YhDQeRwejIT/7vqUPdra4YiPT0XRL40sHUYQQLtjJ67QWHnXm7RvFDkLkdCktG4z8P
	 uklAczZFBPHKrYp+PtEXvZnn+Q7VLpZs8u8ZKatastte8ZlsHZSQD58LuT8GT3ltFZ
	 omOcwtC3fFFM8hczEifXRu6AnyPh6A5jG2ihqAQtIaBqe9+552Klu+VePFFddDsaZT
	 tKNmIyIRkSNOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF81CC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806843368.18445.1522251596307658506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaaad12426ff7baf6b86bb5213ec3dc7cb0ac01c389533985978c85111f9a723
Date: Sun, 30 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788068433
