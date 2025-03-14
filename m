Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506552E336E
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741915134; cv=none; b=fW46N9hi63HoukJ2EBNR2Ttu/AoSsYqanAUOxf6rOED9C2FSg1BM4tc70J/+PVQq3WAS/K0gd3fugjyjM1lhpLGtbMsWdb85XVLsmsYHEVjtThqT8XQUSv463O8LHxIJv3WXSOvOj2D82lscK/mMncsaiC3WwJWoIqmvRmDEIWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741915134; c=relaxed/simple;
	bh=zYeX9xncXH9MLKTxnoCrc4hPFWEiagBGHkvGwpCrRHY=;
	h=To:Subject:From:Message-Id:Date; b=Y1qtXnlFPm3c/R8NlEI4EX6yKRiXCGsYBfKFSStKahcXDNawPG7ZK7fNA+bb0/GMZuC7jKaPj0T4Yb5TRHw9ouud1EkXqXPbWLG+zJgFlonFcaFnX/ugyCRVpMYcB2YSpVWLK6qOYhJi9aXqByummvnOjdyPFb+f3IZqbth99+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q31pynwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q31pynwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF6C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741915133;
	bh=zYeX9xncXH9MLKTxnoCrc4hPFWEiagBGHkvGwpCrRHY=;
	h=To:Subject:From:Date:From;
	b=q31pynwduXabMlosFxHlYH3tFbUsO03cLIU4ydO7uxGZ8DIWbjBdMnaytmxX77XQY
	 ve7IsNGSPimCpQ7DitBS5FxzAx7mvVaZUfTHT0nzLc8X/p62PDGk9Muhr1WWmPG2zK
	 6jgj5W06KJ4xTdzimcisXc4rWXp1a4zIwELxMbaBtBzN18b61aZ3/qtktToHBS5875
	 xKjG3IMgXYjWin+TEaVdwGcaq/m42yUF01EmVKco+aNgBH+EpRhnlxrRu/mvEfa7Pk
	 iR+qRF3mG7/Pt62wKYymn/NdnWoWjByVbqzf4IGkMyf+8lQR3waksQV7lS1ncv1j+A
	 2n7S8mzHdYveg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BACC282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191513359.26372.14718144247655327224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e06e40f4b7a71d882e666ff1202726c6887c9a4e138fa8139caf5aeab69996
Date: Fri, 14 Mar 2025 01:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741915133
