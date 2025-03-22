Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5976B258A
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742607594; cv=none; b=QoPzg44IGJ/rOO3zAFlPB2GZSE9cJfWGFVSLzFpqnjB2G8uW58k0VAqtNBNiDEOIiPOR0FVicc7mZGWQbFiNJLLRVF12B55r00U2wGuDxiSSH++fK4sK96KW0qy1XMsY/qUO5mEXBpGq9Ek1YQLU5ZXy6PbKMAw3ZiK822IGwkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742607594; c=relaxed/simple;
	bh=XkhBGAZT07YQUthy+sIbXNBAgyOISk7+TZH5BSDsUnw=;
	h=To:Subject:From:Message-Id:Date; b=Z23P4luLykAVAtGlCMYxNUTb3vROp8AdhEnHxm4UP1AeI/uI1GJFoyxzcDCsAmjjKnKur1aIQGydukbEQjNw9N7vyEfFW7fNj4IO9YCRs+eCrJRMxoax9PPe05upsck4EV30KKFQZCFh97ZTyPHD20SDLZRZdcXwKL4xLqrOW0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6zMmm/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6zMmm/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D60C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742607593;
	bh=XkhBGAZT07YQUthy+sIbXNBAgyOISk7+TZH5BSDsUnw=;
	h=To:Subject:From:Date:From;
	b=L6zMmm/tPSKDD+cMv6ySJbbSTPpHPVOn7oAyZRZIcbvYbHtW7LWHaJotW+LKCjLyi
	 JiiBR2qYe42W+UywYMC6vI5AbBT2yXlxvaKs5OoScK0sa0/COGkWPI45DpVXGQ4utS
	 E1Bi1aiirPhRxsSSLdNb3+5p1za3X42mXjcl6Hmyr5Lyn1KHAAwjtS58sldmVc+BoX
	 /CCSa7kjPkGSbElIWge7aPKM+CJl6vW8IZlRIQblUWGhB43yNQ0E7z979u3MrxpzUU
	 EDUbrAuGJO/f9TXzH1jac+0axpBFHL1uHkCjRldkl2WWzt4BjVM+SxfUqvtmUmwxmN
	 duQuOyqBZS4Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A222FC36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174260759364.19245.18444745149839516563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca38a1c6b9e89401ff722735ca8f2571e0ec27cece2c6c6b6baefd7b79fdd66c
Date: Sat, 22 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742607593
