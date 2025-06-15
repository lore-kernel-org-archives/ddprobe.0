Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C05B2E11CF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749958794; cv=none; b=twCYGoCIfT3VSPTy3+mpQfQcqZxL34llGHEBtfaufod7RZAI2+fgOadrT1vS1TQf8u2j9nqvB+Yph7w0Sqdu7/+kAX/KXsL7dd0RtIDe980crZOHDHXDyzSCPBgw2MA9mBAxxD/5gjd3W+4gurhEYpKBdz7zY+Ys0QTCU9hENtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749958794; c=relaxed/simple;
	bh=CiKhsZE7CvUX5wmsUEg3dGyrIC7Y2nhvpwGh+w/gSu8=;
	h=To:Subject:From:Message-Id:Date; b=M+jYQS23BSVf3jS14OXp3zMjEVw6UCIeWJYFGtH0KwvcJOO7tfBlg7e0PYMyS8LWO9kB7FJxOgraPxL4Yz3v99wXbPg01h/ZIKtQ9yRGwyyQdwkFEZgXYNznRiq2qoNfiOt9lyoXLP8nPuo2UQRfkUdlCztIV78EZrqmUz1TQ6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRpzLmnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRpzLmnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF18C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749958793;
	bh=CiKhsZE7CvUX5wmsUEg3dGyrIC7Y2nhvpwGh+w/gSu8=;
	h=To:Subject:From:Date:From;
	b=MRpzLmnTuGarK5MIaK0zRaxwGApgjcz3CuMaHXx/a2PK3tlNZaMIpv9J7l84gdOCu
	 74834mB4wXWDmsOsDHKcTHRfJwZtTvXmUplmn3OKpl/0QiY0FjqmQ9AM9uf6CfRhbp
	 2AcT32ocuipUpcRcflM75wk4YEdv0ZIIs3DbJlaKm0udA0Ia3k2uHroSlFxaPKZTyZ
	 EMhMSHviq7cu6mvbEjduAUb2rKk5pI6MSzt4Vu0sM68vTOlD6UHKiHJcWB2n8gRsAq
	 VXuZJtfsSTC/lxhEGvNtgdIQdZjX6xRalaI4LvoJ3MtHxvgBUXkqP4TycZF6Awz9cT
	 ceVdbpeHC1Smg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992DFC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995879359.29923.1192417120551863455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298e5ef585c1256a13c997810e718a34d3d5bf6334e62dd9f0f9027f62d0b6f3
Date: Sun, 15 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749958793
