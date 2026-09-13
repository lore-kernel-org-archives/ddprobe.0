Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714ED54763
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789262434; cv=none; b=KeSwHXV48/Rb89RUldqe04/z/4K1X+wqmuPngUb1C2AP0TksFKvZk+A2MnyL2Qkx9z1snO1ViB9LGDomovQbUsampuHET91dZL2YP9g9W+q9QeGbSXRGwj1x+GVcgs1xtJVT0N9EFp5GtBMZEQhmam9aq75uyRC4kDmZQ//ZukQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789262434; c=relaxed/simple;
	bh=cPZnmWgHMG7woI/4trphXLBYARke1//S++jO0eaB/JQ=;
	h=To:Subject:From:Message-Id:Date; b=qj2/r58h1MhFQE/iauqeuhMxG0cnlfeQ2QqB9TDihIA0pfndFfPPe1LMG2A0WEILPCupMV8YqLrBFppnA3burkepWbWb1B/q7gpZzEQeX/mAGyHMX9T5Iy6l14f4NN+vDU4fd0DDW48zDg23z3C83P/zY/2izDV4Q7dtuy6psCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAWDnt1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAWDnt1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8526C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789262433;
	bh=cPZnmWgHMG7woI/4trphXLBYARke1//S++jO0eaB/JQ=;
	h=To:Subject:From:Date:From;
	b=JAWDnt1Z2EXKQHQuU8C7/nvDv/45Xj+LulFE+tDNSyKRS52uWyhw1TOQvBaPDYG1U
	 zpqKzRR3aULizr3jmVVC2zUS4pcTeaKFVpBiE1nJXnD2xePp/iHMAtYsh+C9e+jjM5
	 6PQxDi8wVOCOBeMxjkhTdui9lBiaCKqiBzxybBiBJjxozInZJ0r6EeqrXI926xVBh6
	 aJGDe+eN3jYkQB63keNAmKrDapo21dDMh+i+CBurDWa2KpIQi+uHKQAivVJhvVo8d5
	 +DZYytSMtXrrJtM3anOazYshsU1mujQSwy8hZYDKOAfR+y7OksuY1TEy5TKBYJ4wb7
	 n83i24VrZzY9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAD6C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926243368.4363.7079446215997971662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62905b9c5d9572d581a779f39faedf069aa61df7335c46ccbfd705ab477845bd
Date: Sun, 13 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789262433
