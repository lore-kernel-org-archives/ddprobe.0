Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D252E1C63
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753898393; cv=none; b=qZdTd0WnH7hHUaUAWZXxyM/C8nzgSieHxYGdHNnD4lZKscugP+jTpHLKG/I4TDGEpg7eFMVcEyLjoG1jFk+lHTQIVLu9TqodMVfFRrCkQrGUGn/I3TRLXb0i+fUCwXgJoivhEocEmeorgomdXatxTUZa3Y9FlVP4p3S4aMPJ+zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753898393; c=relaxed/simple;
	bh=mFUMO8j9sfvAs/I5TuJA9jXynlw0bTRQXQqhXHSxblY=;
	h=To:Subject:From:Message-Id:Date; b=hI16CfDpXleHCcbuTkU2tV/7OSAaz5x5EoLwrjaN7+yQLgIjGGKQUs7sEaJqBVaW5IYNyJGBys+HrFtM7DTitBljfQJ1/fsUYJ1m1/iqtWUuIds18xCi0N+58y0Pc92qNDCWA5Nf2GN7IHeuXO5Kam5aKYZTOnoCw9PWr58iOsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QceSKWt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QceSKWt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FFBC4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753898393;
	bh=mFUMO8j9sfvAs/I5TuJA9jXynlw0bTRQXQqhXHSxblY=;
	h=To:Subject:From:Date:From;
	b=QceSKWt6If5jJOZkTRc6EGfxq5aGTrtWHLGrW4dMxD6HFVCRbYZrDIQQ8PobilVau
	 U+UdJElq+iXufnt7Mcv+12q6WYMy9ckKPp18Sp4/mlQg7Gcs7zVMprU8jkqAc3qP9y
	 AeoIAnLSQp93EPUlB+pKB4ydiZDo/P+NbzdJ3B2NrEW0tNG90riMAVvRQH77a/tauK
	 TRsrO9Yt50ne1gzVgpkz8AquFG0NVX78wwbgDpOxHlTmbRyAWPciYnixHQ3sXHaELG
	 P/XvnHWhcvQ3iXJQD5HimZbOox03+WaDKkVX7wKkSwWJ7YHY5Xouf4gxjtUUvU/sHh
	 zuhmtxWX7LPxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DB2C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389839358.17907.18176388000759406477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c91a7b825c7a994bda8e4917359b9bdcb987e8f3018f75ab8f3fd4a6c96e3a
Date: Wed, 30 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753898393
