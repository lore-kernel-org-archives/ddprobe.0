Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C5D20E702
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782358654; cv=none; b=MAjJBPkTwviuMOd7jDA3jPdZyw7XDiXBRnvPyUk++jvjdU++D0IxUP224NJGaNcueCx4P1IPdmjQUAGo/u3ByWnkemF79iWRgA+2hYEQjjiHInV/1pEiQNgLsU0D31d9UqscwSjEeEUppGStEdiwGnWpy10MOhfweujKcf5loeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782358654; c=relaxed/simple;
	bh=SllvuNX/oKxkNy/vnSUCbGYc79g18jjL3j39et/PDzI=;
	h=To:Subject:From:Message-Id:Date; b=XPl5SApZ62ghUba/1WLh8haxjNPkN880GrO+6wSfLEMIZzdlX8YudwLAk+syFtijTuZNFgFrO7SJ5arZXcbAyf3wr2lnIAwuLSLnoKK9IA6boy85u3Y/sCZgtKi49gbwdYW7yx+fZ7a51IXvUw03ubfua6WaO5R1Kqtp9nRy2to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StjQ8Q1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StjQ8Q1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7BDC19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782358653;
	bh=SllvuNX/oKxkNy/vnSUCbGYc79g18jjL3j39et/PDzI=;
	h=To:Subject:From:Date:From;
	b=StjQ8Q1Ttrf1/yTBbD2CMe5uWefM+cvq0QFfi4Rovcu3WRaCO4PQLUJFgiSYvfSUy
	 xuxwJS6hlvJvtDjD8wRz2ENDdcaSaSXhXmasDgrGKVaKWYk7PQ4PVC2ZIFw6sLt1Bm
	 1AKh1axXgKyP/Xy0h7WUpb8PgKPYzRT3eoayf036fnKpn5IN/CMizWEWdmRFJDVtm7
	 FkBhBfqkv4XZayy+giAVLI7OF8n/pCzKqKaaA23CuTszN4KMcS43evrGA93k6pepPz
	 qCb75P3jGzcxEJXrS2Kkj7fqkCukKXiWHkT9XLy2Q0TEglfonHfhN+tp9KBzG+e9dL
	 vbwtk4MbYE5hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45DFCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235865370.32380.12602203049467084890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3df17f872ebbf9970988ddc246fb83f0cc8679eef9f63ddd964cf64a2de2bf
Date: Thu, 25 Jun 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782358653
