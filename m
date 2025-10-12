Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392932571DD
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760269194; cv=none; b=KPBsb3i5S/ib4Ogq/hz0jscu5SJ2KlyU2PpQ4DbTY2uLjk8vrfaIaY9ip8lkRCFf+HmhknfN6g8t9a2eWr0ivDrW9oG0xqqDrgW5vW+G8zdvH8W2N/Rudo7VSz1i98zynZ7sDjRva7dyAcfOCY66H0r1fIUmm5T6G4I8eE2X1d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760269194; c=relaxed/simple;
	bh=Pu8yuQ+1v4SixPnt7f3z+73EPU8SQNlKpsg9nlVa7eI=;
	h=To:Subject:From:Message-Id:Date; b=HsSHu+fxO9rSak2ICM0zB91F0o2LbiQJC/IeQM1UfaolZmyQOMOGByUzpNw/h3SpKfenLCrQqb519qsY5ZKDf5TeFDP0jWjJkh0RniprcHM9HBZOVRuhtwIpO99BzD2KlU48nqAWzYtQAB/mCTiiVXwjUrp5+00qm+oO3uwuvlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5uQXuPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5uQXuPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7144C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760269193;
	bh=Pu8yuQ+1v4SixPnt7f3z+73EPU8SQNlKpsg9nlVa7eI=;
	h=To:Subject:From:Date:From;
	b=a5uQXuPqPuS8JRm1DDEJ/mNOtPa+7k+McadrVtI3cY34QpmZIVqfFcuZOVKS3peUO
	 Y6ku6n4h4l9GKRMJ8HnoIuDYHzncOQGouPOLac8RZMQ53CqCBRMV4ogbCOxxbnfWBi
	 EJjmYxEGPY20jpN9qNH/jYkYeoWPGKd1aXW4o7TLOwgevDqTz1Us7GY+QkTJQN3KW3
	 9kJdOYjK81RzEcyMSyYkL5DqtONW80p7X6jZBzPvSCGMPgKYgBbV230/vXjMLGoTt2
	 IF0hvjCRWCcmujPeg//tkJKV55s0HK2T+fMLLmlZApZjNRkQ1zeAUUZaMbEULa8Re9
	 /hpy7xsBhvkzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43A1CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026919358.18306.6028891455510186396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99a0623124d01368dd09a5b57dc57a8fa9e0bdc77479e5997be04aa9d021d1f0
Date: Sun, 12 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760269193
