Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A895A4C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712059097; cv=none; b=klFfVBnWZCOOnS6gnQNtlKEVpVmxmxG0T+0iUCa94gRGcrUzUYAgUhfjoFFRFAzpzL/XReUASnnZKAJ56iXlU4kHPQ7OHtx4+xGquI5cy1XwlbdqIUmY+KEIdfPeTi6WGWexWP2S89x6YA6/gxb+NK81JWUryV5SGq/MTUeyDTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712059097; c=relaxed/simple;
	bh=YqAUNuvy9CE4l3PZ53RCmW0ALrplzMshxu7+87xJ6W0=;
	h=To:Subject:From:Message-Id:Date; b=pYpxJgg+phpq4UHvxoBz24sJ4lZ7r0CoBJBrAaWwzz/a4sAxAui1UoeAEQhfJCJV0aWy1tNfLuHLZkKRgT9GQ9WMwNU1LTs2GpRErQPi0Q8ChGeH3+QTReF3w7C6AS58b+OklsZx/uHRmqALYcxfRilSlo2PwCxAFfScqZG4DZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+0EBDq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+0EBDq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708F8C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712059096;
	bh=YqAUNuvy9CE4l3PZ53RCmW0ALrplzMshxu7+87xJ6W0=;
	h=To:Subject:From:Date:From;
	b=d+0EBDq8mSKdUHPFZuPTv70B0esvrmpxYM4A+V9aWhifX3wC7D9xRTLFa0FPBGesa
	 n+VKlWvpmOqeHIbeRqbhDyNDVyCPxOxxBQyEfQK17bFXhfcez+uveD92zgy/2xP7ay
	 v/RznT3ByZwJ3yj542hFpWMuWcX4Dcqet36M3gytpaV0ik2jtFSY5xWeGMUrBsoR7E
	 L07UUUzInOO4DSsF4w16rjI7Ky7q7scL2V2bU/uowkgClwgMDRwcsIoEI1K0X1cZrq
	 R4injed6ndoam3GdsL9VWzkAtWs7qD9kvd28MI7jjSz5JIQ1Pf1G1cXHLXoFNde+fU
	 V3Cbx/258Qlxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60964C6FD1F
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171205909638.18095.18184085269041659413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ed7f69869f4d9121e778b3f0034b903dc427d6bb94f60778e7f7c47229e207
Date: Tue, 02 Apr 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712059096
