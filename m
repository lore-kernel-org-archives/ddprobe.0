Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A8A183CA0
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726001754; cv=none; b=lnMtbcijUqCFnlTg97obkxpba91NbIAN4v9j3b8//aZjKonaCC9sd0Mty8+WX5zieHZjDizk4lzYsrNlO8wRr4er+9rApfC+3sz6vIlzawePV88s/RGAq5dCpJVCIFijeXbBphazzjK0aSE0MTT2LmGVLXXzjW3uz1HM1qhzJbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726001754; c=relaxed/simple;
	bh=rCOEtra7wgWO0Hw7M82fziDL79zPe5i2uw5k3Alfebg=;
	h=To:Subject:From:Message-Id:Date; b=KrpqRe3XKN+AFzH4YGC2/ugZl16CJawLgor+Z5TU9THlKdRSDk6M2uzoFoSDDcp/mB/LhmpnDI82h+UjRJaYrXy60qxJ9+HRx/Ix7MhFVKqaO8t67i8dHpXQJKxvRpf9G0DfBlNm8Lp7PQvbOEDa9MxMYPA3coERq993VBYMJZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQ02Xc5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQ02Xc5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D65C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726001753;
	bh=rCOEtra7wgWO0Hw7M82fziDL79zPe5i2uw5k3Alfebg=;
	h=To:Subject:From:Date:From;
	b=ZQ02Xc5YboiohOY9PiYUDMg5Q/kkSoedy1cj5/FjakhBka3LYdHk7eMnsgfIGym2E
	 LFFD1gA2RU01Va1TydZ/wPmt7uKvZl2J5wGeMg/ArBOpafkCEG8eem1GySnv8/NtBv
	 KlcVDVOBrDTRyqV9TE+w9TzHblfrLVr3/8p8MCTThwrBzMufZKgpK6Nbz8cnDfgOdX
	 pxH7UrE+19jLE3uQun2AlE7iFeq8w1MSNgp6IxwffzOPw9Uo8ElE5dui4U9rofEEoE
	 FAK9a7FFDUF+0CXikaQqK0QgjY1HIFFkQVIqWOR+qBb2efYzU/lY5B4znbrfXk3XG3
	 KtqlvnexsOTvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D27EE01E8
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172600175360.4969.6548648598013233206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6a89fbc2b792e2b7694ba4f0fedb089e5ab6b7df44df523bba8e617331400a
Date: Tue, 10 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726001753
