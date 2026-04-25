Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB0034F489
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777137454; cv=none; b=LPRQKgGm6YQYWOBJnp5ZWR+jpVwZ26L20qHo1Z5bpYZ/FG5MhP964rZuPVz78+Etl36MYJ7iwufAv4ot/GJaZA8XYrOw3n8vb0rbxq273ZON1Jrkl2XCi/WMiAIo+BkgpGq0JJyiAs3LEsHyuLa1PPcqAVyKqzjXgSOR7bXfINQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777137454; c=relaxed/simple;
	bh=XtHHC905DmPpcU6c22mX1yDAgIainMR/GDXa9xn9FkI=;
	h=To:Subject:From:Message-Id:Date; b=pdiVTSSYT288ZuC9H+R+ZlIAhYgbdfeQ9e8axMgn0R3nTQHwict4ixeEfrVsz8J6xk0eJIJyJhhc9sr4bIGevhTlqtHJWPZc0NZmv/WdlwI52fl2aFp5cLc2uAtD0kSSGnIVyErC7Y/DaulxxELfZN0vBjr5phK9pwygjkMow5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7vGoQTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7vGoQTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16F0C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777137453;
	bh=XtHHC905DmPpcU6c22mX1yDAgIainMR/GDXa9xn9FkI=;
	h=To:Subject:From:Date:From;
	b=U7vGoQTU/Vr7PxIDqfQG26UAstDGsXOXFWzXSbwtwJpBRNkVBZ8CqS3/B4ZXqaXoJ
	 Vv1hQrpY+sM4u59L8mYRy0qnoZsVuEK3Zxaco4yMVc8908JTpcunLHDxG/evgdYvqP
	 ZhDw7kAL7MLwZKNTAtM2DqUTQ4fAKHpeevQL2KrWw3I+D6HPwobzODqiZCqb0L0SLv
	 g00W7tb5UdjumInhbo3/8QF0tG3CSodnIlOOCdxgQuEQHq6ebU/B6yuTtUSheYmTN/
	 HY2G4DBR90cF1PluX/pzjXpkCkfmUjMtAz4Q+ltvy9Q5UwvWjh1/RrcUCe9ZUVeabN
	 0Xs+AUkISvN9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8A2FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713745368.23563.12087799522274255422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632c46c0e2f92802072911496fa1a1eb9d88e5f954c8273a6535b64f3751edfb
Date: Sat, 25 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777137453
