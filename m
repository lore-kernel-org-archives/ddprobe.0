Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41351226520
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754522395; cv=none; b=FIXyPtLgipevbuJUQbZ3E1jw7auWgDSIN4Qxt1Sq4WrKTDeWEfa/En9X3zQu+NAlUZshUyBlkDJ/M0EfEZ7gNEFFgyjNzzYYZGkQYvDWmXGt7Cwod5TLWwLnRTzkObOInawwA39guabUxIbefJ2u8z5K9ZVCligHYC3FUC/dI/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754522395; c=relaxed/simple;
	bh=e7I7gBlX9VwGEDYED0zzM3MGmrygzMdv9h8XMTkt328=;
	h=To:Subject:From:Message-Id:Date; b=o6hGD+0mcIuY29c9H1lC3kDBHav4m6xfRcCli6SUv9JRZv/X941j4H6nGOxEJSkE8MjINVta7Vq4F67DuztE2z+cMvcUUnlTPL4Hi9lQG8S43AzIQGHS43rG4rdOFTOIAR9IV5AQQ3Uv4CN6cj0BiL9EfMpxM1sxQOYVptIpOYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZI18aYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZI18aYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1B4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754522393;
	bh=e7I7gBlX9VwGEDYED0zzM3MGmrygzMdv9h8XMTkt328=;
	h=To:Subject:From:Date:From;
	b=EZI18aYDNPy5LB68DNCXuaoXn3yUhsXyWULnN+QDUCbtSadmQ3GDCVeBl+6AEyTrI
	 gAGJiLKT+UZ6ssIqcIOIoeM/7iuwcndVCAICYCgq+GieprS+Pbj6hITCJwMLb4em7N
	 zxbVp6U7wZcUp+Tg4U7/evzIze0QwCd03zW0VjqeDuUZqfGqO0vzPeYQRjtM7KzTer
	 nSMcc45TR99rkeFSPh/9kqOBCl62xwOWRVPpn2CL7L+4JOHTsuRUKVI0S3rBqO+/C1
	 PuC6GY+O6F9oCJhtqUjx1BW8YgslLgqXCT85ocwK1F3Mj/KvYlYrBhqEqrjPbrIIV7
	 MjEPa4Q9Y8gag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7FAC87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452239357.21712.13432126703098202535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9575495e618abf900eb0bbd9ab6a269f5f1ce0fa15b41eb22e8c6e8681019d42
Date: Wed, 06 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754522393
