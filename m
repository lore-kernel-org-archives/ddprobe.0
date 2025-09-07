Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D361FECCD
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757284794; cv=none; b=o8G/Q9aG0t229TQImr0d7TW2eotXAPH9hYifibFvdKNFf5YGz6LnS0PNZiF2qiw3dZeMRPhRbf+mmJiZV/I7GLe7TCqvFXr4nP/gM6vRl2sJlhRRcVSRmDEeL7q9TNqvRoc3TL8QR+V84OsuvS1Sx33ELaruBjRQdYrfxf9cRNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757284794; c=relaxed/simple;
	bh=X7FOGLGNiSY8zC9fBc78909WvZmbHAMA+e4lRiBN9pA=;
	h=To:Subject:From:Message-Id:Date; b=ekFNLCWEjIXAcHzOObSnC6mVLBQvqrZnD8Ksa1s/TqFid5nmWWS0YT3FTncu+lDlFNCDRmKrfFPRRNiDEdarX60fpl9j0F43hilQCvvoKggpHHOLqdZ4YwEdixAplzPMptEZd33DnguWWh92OZluvmiyatnZndYMWvdVdAahvYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4AIwIWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4AIwIWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCA5C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757284793;
	bh=X7FOGLGNiSY8zC9fBc78909WvZmbHAMA+e4lRiBN9pA=;
	h=To:Subject:From:Date:From;
	b=A4AIwIWVaC79f5yLft6cr9R6AgPOLjDWt5DuAqEnYCc8P8alconUZQ6kXDMHBC0fO
	 FukSwD6+llhTxkQOYizUen7AOp34t4z/Dgdm7DJ3XsA6xgL79VnniES+6Sn0tmlvNL
	 JAC0hGX4MLSSpoyxi3rtmyS+cR+2OLvLyG3QhyJ09jl3R6/qhavWzpsfxaqIi0Qrtq
	 GO9KCqsQ6olaTN7IPtcaUZ7/9oZQ8TK5SA8iXpYqYxKdPfz2DuNdh1uDap6+gphRg2
	 slginWKq8JVDJwp0S1oMySMziWL+W/0xeY5YL6I2Nm0n/rfHzb+r/+XHHdkCo2EQgz
	 BikoZiG5K66eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F562CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728479358.14983.2295524257646937638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6715bf8e8bf18f7e1b5c2dce2db8af7403780646d18eb2ff8d0423163b10945
Date: Sun, 07 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757284793
