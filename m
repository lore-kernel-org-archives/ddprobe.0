Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472A238DE1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765104174; cv=none; b=DvShrptUNuwCWJCaU098w6ZRKEjdtKYCwa3hFy2ic4IUGb9C73SqpDIvxTDR2HdWB9ZAgaPSZyRuK/CcaJkgxZ1usmoIr4geFqGshxOzutCaL6454CGD2as3g4A+gnlxvM0uRChXsN43VREX4VkI7isRsnsQIiUUe1PX0Lzbtw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765104174; c=relaxed/simple;
	bh=1/6JuzXRzg/CSmHmXCR5BjNX1o7l5lYaxwY2o5QUfr4=;
	h=To:Subject:From:Message-Id:Date; b=uheMMHGvuV1AOA8i8G82zLc7cIKij7R+ONi+yXOtSe1B/Fha/rvoC1mjfn8P5THx/oIKAzPtVPzIrhZTJHFaTwXWy1s1R4Zymn1sJsD6Ca/lbD2tTBmQhCu/LnZKEB/aHqb1ukxMAuogBHl0FAB/yNDCyBRz5Q4q+2gFt0zAxnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkHHuhio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkHHuhio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AC6C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765104173;
	bh=1/6JuzXRzg/CSmHmXCR5BjNX1o7l5lYaxwY2o5QUfr4=;
	h=To:Subject:From:Date:From;
	b=hkHHuhiovwK5GJulJ8QHtvblWo7YB5BD1OAsVbXmtHSggqYvjxJqrO9RvPrzNRbUa
	 rC7bueqFtcNLTuvaJ8b4jvS6Csmw22sKntUftth4xuiZETAnKDoEBOo3CMy3c5Do70
	 xn5iSXY3pgKNSv8QKFV6h1bDjD9X00+dLrLyWQgK8vg2vlQ/56BScxohhJJ1AqBDlu
	 GSmEwlOEGHlBEUPiry5r3R8FqqvjM03Lxjj9AMsjZ7Ub/H6NESl+6SrfMiXR8k38Sk
	 jNklkXJWmRCpdhUqNWHnamsiCaWW6fHYrLzSNAeAycQyInHF0QpAHZfMk6paAIdtp2
	 9/lvXNfeeFz5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4CBD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510417358.30726.754035840070595750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f6bf42823046f6ee5a34129f49a8665ec2854bac16dc1743133d7ea026f493
Date: Sun, 07 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765104173
