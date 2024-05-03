Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CF414F10C
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714729943; cv=none; b=L/85BvsetgNYRgMMQN70qYakO5W681EXqncrvmrCAZfyQDW3hlLmjaA5Q0Idwv7MRgIpFMxgmDz4fQWymHSDhllYjbB/mV5Yb2WKstxXR9Vr33JfwlohVev3nLLV/qCmXGf/0YdNjIVyegsUqHHbYMsvZ/ZqzcnOAIia9cDw444=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714729943; c=relaxed/simple;
	bh=Rwy0ma14MsqqfYSZISFgJvW8KZy9+x1e8p4c0OX0Vn0=;
	h=To:Subject:From:Message-Id:Date; b=gxEO1BRzoc1rTEdIYfR3TYfbMfuqzEoz21OQ67cp8ghdsErPH2LNG1TuaRRUX7m9Nsdv4O9b+K0DTnKkIw36NoBCYUzLAen6iRq7cvFGeX1H27AWtcG9CLGUXzMLMnmsoiJ4MdemaaWPWeUioZheRjPViAKtl4u1H1brbH3Asls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+ULv5PD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+ULv5PD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D625DC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714729942;
	bh=Rwy0ma14MsqqfYSZISFgJvW8KZy9+x1e8p4c0OX0Vn0=;
	h=To:Subject:From:Date:From;
	b=J+ULv5PDUOee89m9SsrXLH/64v2+D1HO8kutXb9ULOKCQkyj++FBO9WaD8yVtNF8N
	 AeqD737C6TRGnUNEo9BtY1Gh3S3Y1Zdro67cMKvjMb/hWiAUpiu91s32o6U87J12Dc
	 ysK29JCwEaMEbwdjrj7Kju96OSo9tzkqizLURJhoLI4HJhbIqu7koYfy1vkd0Ksil8
	 i5B3GA65OKN3nk2lSTO9GjSIMd2iLsszXlWUQhnDIkmbjpajymoEGeJg06GxYO1LYY
	 DfcRpvYG6NRiJ1J/Du9iIEIFkBOnv7AbchOovnPM+noqZYFNJjmlmmlMIVhwMPsoWv
	 KblHCNdvLdBVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDC3C10F16
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472994276.20325.4530864802301115322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6e6a829345d9a0cb5c939534e97c22cc4be8051c0585a1a6a4c9c02ac396b4
Date: Fri, 03 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714729942
