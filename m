Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05553328B7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765186374; cv=none; b=PJMg/TtopBKa+5u+8aMV0ETxJ5Ym6V29WJWP93mJOvWEDkoDd/MYMnvqdmLAt5KY8AqvVdrWk4L0ed/MKCU5kUk1TXN0WtP8VxcylSHLMGb/GG8suaaGqTVoHTi0ZIjkcgfPrZo2qh+LmxWufLnzAav2nIuoX+1ret6srCN/fD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765186374; c=relaxed/simple;
	bh=b6rsPwaQPFV0hJ+vu8aSUVudW6sKkX8YepwdV0VO/+w=;
	h=To:Subject:From:Message-Id:Date; b=NpXdjL4lCOPFnqkyUEelPprIGkruiTuOaoEsEBkVp2EnoR00R7V4OOshijsqwkDiUxsPp/GQCggiH6XXGnrbLSgLnGjXWccTFXOPeOaWMGR9WbSFsG4YvFRyhkXTNX/oOXgRDWPVusG8LaJVjgle/vbsyB83v9fNvDLlurzONeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9PeMFf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9PeMFf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E2BC16AAE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765186373;
	bh=b6rsPwaQPFV0hJ+vu8aSUVudW6sKkX8YepwdV0VO/+w=;
	h=To:Subject:From:Date:From;
	b=U9PeMFf2HgssNG/1277SmugIxWvNDg+yNPy3915DBy6Y1lZHpM39ePD3lqhutRYTJ
	 zQ8GFNvdMxOXOSeclfUz7zyd5WMs/v16YaUOhwc8lPnxAbA5LJWWEy7BSPSpP5041K
	 QNZ3pQ61NmZmU6qitf7VlheF3RVtRz+Lq/NGYVovGNVhyzWMfgv2Gf9lf9TIZzFg5T
	 2D91b+7vZik+Nlz7QXvhwLIenBs9x8LbjGHCmIo9p8P/qmbNHeEQRUa/g4DfnWh5wy
	 ij8F2TUyWoZGmnR9aBZKWOdiersVApqHdFeMfKt6Jd/5hpv95s9TDC8501slfK6WPt
	 eHi7V3x+Mvq5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA7D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518637359.10988.15319795554468337782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba5ba693492e41d6ac3f022b9b013e00a7cd1d880f851f8108453769f9e7eb1
Date: Mon, 08 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765186373
