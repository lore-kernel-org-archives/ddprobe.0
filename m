Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BC3465F7F
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767871434; cv=none; b=W8gcMiLtkgngzWUfHyvE3Nc6cTMKWHu+11QDXuaB1x9SjUe4gadHPuXFt2+8PWZjOko8fWN+5N2XMinZsrd0CS2SKyJ0bFxmO/rjkjE+JOg6M/4cEvenBI4C32V0mhCySCwzkaCxb1IvoqWpAcnYQIySQDsgfoJWxzyT24ey1gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767871434; c=relaxed/simple;
	bh=fBZFGgUkkN6H1wpxeZ0WoXJZx+NbC7punHT9lEUR9Lk=;
	h=To:Subject:From:Message-Id:Date; b=r16a5wg05A4IEAcw2I83vdGNo2XCaN50TzqLal7nooG4iXCOPlKWMKafR9cv3RI/8XTSL7jkTOGD8TE7CDaUNJayged7ac6bMNJp3RHJoSW/CuRZ6YZewGmUlxsfta+YrmmFLrZUEtyScyqSBUsGn/kjGKhc38/RT3Y+jCpuvcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcd02X3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcd02X3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0476C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767871433;
	bh=fBZFGgUkkN6H1wpxeZ0WoXJZx+NbC7punHT9lEUR9Lk=;
	h=To:Subject:From:Date:From;
	b=lcd02X3HEtqNQuCUI7YrVU8J6quOvEiZPjyywtoAvxsLol1XsxRiHcnFeJLqbnl6S
	 XRzjV7JifUz/rxvv+jhKwH30R8c5+/FGCA5g7tyo9rW9NNnwPCPhaDArHgoH8esnk+
	 1+JNsUJaoJN6a+9SucxwIv7z8ty1cgJOUCACB2/I2F32f618NAG85X53TtS6BCFQ1e
	 edvFM8qU/CRIay8Zx7i1ugV9pzHaTDPvqXaG/bTmKc/fqZ591gcYEGTB/3Sa2SocCG
	 SS5jcOJKpReDC7o1/iJg9zSZBGyRHZKo2yRvPpfpOSwInw8pvsqFgEQh5RzXDbgfKk
	 xu4JmpbcRKcMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F866D185D5
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787143358.1068.16997159015357612034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd1b24fd87f868c53d0cc1c13f26d042bfaff7869e8a8999e362078479b592d
Date: Thu, 08 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767871433
