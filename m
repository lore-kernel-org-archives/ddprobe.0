Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10233213E94
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747179595; cv=none; b=HZ2/IfDNgoVNbflb025wgLyX8kGl3TORfJWINBNC/z6EVEcUkYMN6UADVNraDHzmZZZ9T+ForBZIORSkpGEJEPhb2ANSD8Gb8qU9VCQRepcBXeNpBGvLJdo6v627qNFutUS3SuZt5b4it35crRdoNsYLJ7aD/9x2Xv/YI4D7amw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747179595; c=relaxed/simple;
	bh=LgUFbNHmultNtJ3be+lwHAiTDTp+1b5uypJlNgN/hLc=;
	h=To:Subject:From:Message-Id:Date; b=bN0i1IPq8GV2SemoGQtYiWakowVHFnMmfhjsZF0Hr2t+rg/2JDlgkuQhloBP84del9BS15rLqa67vY21TqS/EBVtWuuE0wVUBi1JgYE4j7z3CEBEqYSPuMEQ3/EZxf9WxTBBr4fTAWkeWpJfW9q76FaEkyMNGMRRkbMjUP8BdOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8NFoNx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8NFoNx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A386AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747179593;
	bh=LgUFbNHmultNtJ3be+lwHAiTDTp+1b5uypJlNgN/hLc=;
	h=To:Subject:From:Date:From;
	b=p8NFoNx06Lz7gYa7AwFzEJbDfWBeOSXM3GT6fT3aZQdjqZh/5RbfMlU6IoJmfPuJR
	 6UMlqwGfsiThgop4d8mnZ+Gqd8Nz44GZZDFZtUgWp1jEw6DfxjGHl0IQMlCUuPtTfD
	 w+7r/Ci2j5ocCjyyHognAkwCHKNF6LnDmVBeJGfmRt0Oa6MRJB5wRVuBlIDcRAnt2/
	 cb2SKSahv6YuSTkbxlniy3TG+OhXz6oHRYwnnKugcmorsC75lrW61j5ltP3HPmVbxo
	 lqLqrUUOt+Lurjl05zus0UEN3dVPG4DfGIsC9NHFo6QbX3EyeKK9CWAccq0iKe9MEk
	 kbCpuTHbBolLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EAEC3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717959357.31961.8486591999831493986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca42887c030a451e6158e5aaac8b96c6988d5e9e829c19cb1e15ce410b480b5e
Date: Tue, 13 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747179593
