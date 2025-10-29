Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1683590DB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761741594; cv=none; b=ZVEpcLZAa6Dj0Gu2ve+RXwO789nIDBH+ihoBku6inqwdo8ZkBV+SLlhqJUfnM0/C8CfPcSr49Yc81fj+lfsvm0NkKL8lWxtxAVoTt2XVn9x+U2pAqiA/2iI5NE6ww09SXtDQqLZd7R0Dva8zofiYyqB8z7+ZaHy3g3wc2ubzCoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761741594; c=relaxed/simple;
	bh=A22725J8Ph9V1UBOjXvLUXvV21rqQb6flRbzACleXrQ=;
	h=To:Subject:From:Message-Id:Date; b=pA/BBPWnFatFtsv0FhhXR+E9NR1bLWd51hiKOasU4U7aEVTVqIXjja4p1N9W95wggrSgWgeUM0e5TFmvZuzDq7zsnfbiV565x3Bu9NM0PObcqCodkb13x77kMH2r6WIoQyVYvRGZB7cyiork3bEzFQuaRo6SEt5qTa8e0BE/J9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVJpMd/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVJpMd/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11FA3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761741594;
	bh=A22725J8Ph9V1UBOjXvLUXvV21rqQb6flRbzACleXrQ=;
	h=To:Subject:From:Date:From;
	b=nVJpMd/4l/iMO1g7qH8XdqhYtjfB2eIDQNNxg0x8QOr+Is2z6QstF69eeOdUNdEaN
	 Y1pVqvcWcSF3QH0Ul26NjoXMZjIq/S/hmaWLf4dL7oXY2uU/rI2GU+/et4B2o9eSlL
	 4C1D61hFMnqK0LXrsUwu8eufx6P4/5SDfAr1XI0tNz0qQraJwERiCarrqdQdk0PlLc
	 Ei6MHsHY7eksF2jo7sn/cqi/hqcZZ31+4VmwR6PJo21OivHIlBXJ2JJod0TE9gFAsl
	 NvoIGQdCrzCmmmQIoeg/rMEKUdNP7ODQYHLOChXIOr5zJFqz7JMG/hCQipK0vFVtS5
	 0XEqG2q4nCUAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D30AACCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174159382.1489.10624833839219579186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f33bfa5671747e26f81076803357bc257fea892a255abd5eaa196dff432779
Date: Wed, 29 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761741593
