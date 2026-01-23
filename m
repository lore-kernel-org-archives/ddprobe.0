Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0CD13B5AE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769127834; cv=none; b=Zu4TkSPwBX0OEzMAKVMNsrGrHAT1pwN7/vv8x/01g8fDNFgYKFr6GFb9GlJAkUEeBMfkhEHdJmE++xjK8YCKF6qPpNKVZgacNSfnbksDyQ4HoN4OPHwRWfgjmQh0gFNuf2hZ3Cgyp0wXkw5GZOdJ3EyId2OkMi7EzkCW2GIOTI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769127834; c=relaxed/simple;
	bh=aWjvALwob/g0tFyyqkPSpjHvUkQKqGqi889M5R0hpTA=;
	h=To:Subject:From:Message-Id:Date; b=hBf6z5EIen0pieaYzcH1PYF5d02RVhIZ9LW8ToTz6yC/OBvUkf3mzuiivB830mnau1SXXp/Q+3ka/sVrN+GMWjjZhF4LuLGuCJgfitdpWHPla+kBLhOB/eU3eoM6iE6PArDLujsJbdOHpxV0TuxQXsNlszezUvw5el/ic2JO9bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNpQV4iM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNpQV4iM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6574C116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769127833;
	bh=aWjvALwob/g0tFyyqkPSpjHvUkQKqGqi889M5R0hpTA=;
	h=To:Subject:From:Date:From;
	b=qNpQV4iMq2xLLvxF9z7FNaRa9liH3CdWRbJhdgeI6WAyjaFpUzRlslSb2GM1QV4hL
	 x3NyA1YlnlD77LIX2g4T1iZtx/EJSeIIeTSR3JTqetRkK4P9WnFuaztw/jdXeB+cNF
	 QEeFwE52P+jFqHf8FopUzibEy8KaaBkWE1c+CqRTt3DRnUhPKMguKOpYOZjYezc1iF
	 e1oUrBvBy+bScmqIVe1rRaT1FGidXFfuViUzrd5T4Q285igZXNmNiFcifUV465Rgr3
	 VSwG1RsuX80X6q4CrQEg72+roCBmqc+H8yUT+cbihcY1Cz9dl3sYfwxqtDjxwiJDax
	 vxKARLn7g0wIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93405D6CFAB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912783359.28854.14875336642300830205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1c839c4d9c4e63db57ff3a8536f95b9c623ebae36d75d8e510ac6bdfff4b60
Date: Fri, 23 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769127833
