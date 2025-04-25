Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D391632D9
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745600395; cv=none; b=o14cX3nGimfVBAO2OqLMLj2ye+YMU6CAtPIA6//NPv+3B92dNJN0UpFHfALV66N4tJFbOcaG4WnJDBkbBq9SkX8Ui/8d6nDzM1wjpGok/BhIjtNMaUowcycoHJA6/METlz/lKMsbZPgwMkDh3NQwX/Wvn+tNmwOaQi07FPdcNTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745600395; c=relaxed/simple;
	bh=3m+MtUN1bPzBEufWzmLDRC2OBrZqGZY9II66+DHsLnc=;
	h=To:Subject:From:Message-Id:Date; b=Xj/cx8p6GMxJx/PF2mA5Jfn/FBfTmmljKoZHgedjdqxMl4Lxwt8SYeUfxN4MShxIS6d+QaziNVKqhD5hH6yIhR+C/db4+3k30MIX62HaMMkEKiws91q4bFBWSLhe58i0bNCunSFWNhBspoeyoqFaBR3GF31ZScy2pNKRzW4kuqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1Iw3Ezn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1Iw3Ezn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DBDC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745600393;
	bh=3m+MtUN1bPzBEufWzmLDRC2OBrZqGZY9II66+DHsLnc=;
	h=To:Subject:From:Date:From;
	b=L1Iw3Eznps74mHn4b/xRuHimwnnSUCJiyxHFISaQwkp6VKzHcAY9fiUEmnRFidVEM
	 pH54jSlv5AUP9dqykg63B7O6jYZORRupx8gKdhwRX3oXqDbmzqoPlZqHXb9Jepc3j5
	 i4YL8kXZvw2nItdQOqfyPk8N3iOjW+2hDYsVxEDJazX5JJqe8aw5GNF1vgkL9xqa02
	 /4zuLYs46VStrF2ISmP/Q0emBntx0NgNlClnbwIwRd3BuQxiUD07odvoOokuEchvgb
	 K1vq6l1rDySFcoiqN8iZnhlgWTobJBF02IK7UCqul7oLX5Z+KHJkh5CBrAxbH31O5H
	 Ax7tnsvs3Ot9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C6C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560039358.22134.12056139976105564054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635627888630fafe672ad38861ccf51d3cce1961c94b9e69a876b42bdd3aa1f1
Date: Fri, 25 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745600393
