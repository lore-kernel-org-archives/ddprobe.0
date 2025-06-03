Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356331990C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748944195; cv=none; b=VjMgJm2zngrV1eZEAcVQ4jZmRbYYY1lSrr9eoShN4qQFIPFTd3ON+DEyxQSFcqWX5wmj917MAn3DXBeEOF8HmEA7Hi54J2Hm9ImD8psON7L1dXe01XJz02vn1lLxkMwNEPn8anSvhg7sAXYwWVQn4MJ54k5Tnp1AfJqdxKj0Dz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748944195; c=relaxed/simple;
	bh=T7zqgJo5sB0j2kBrfxMjItE2PEZhQExBQxuZmGUTatQ=;
	h=To:Subject:From:Message-Id:Date; b=DinLvr1j5Z8VAXta2xwTk0l0LuiUbVw1YHE60x2O242B+XFFkT1dYIjWX8dS9tdVMD48VouvYAZ3q7kb0gKjWvfmU81wjrnnrOH2OmpqPj2LB0xT7RMcdcAnog/bRIMGbZ0Byx9veICEtDH8yAcX/l+6sS6sk1UoFOfd4EhHRGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5CNmMQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5CNmMQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3129C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748944193;
	bh=T7zqgJo5sB0j2kBrfxMjItE2PEZhQExBQxuZmGUTatQ=;
	h=To:Subject:From:Date:From;
	b=J5CNmMQbz6ITZ0MBPk5skrP2XzKzcCDSuEP3zmzJQwBTxoKuI4wNoDCNKzchvQ2KK
	 5dOpf1SLCDuOiBoSfDWi1iLW/UXW//fnVRgUDZ7Iiaj5/1GFtdI/fX19HWCI7f3tDu
	 RNYA9hGb9gNirod6zd7WyEoQDsX/6oHrayjB98nl2mAYbHZbTM0wSPxkkRtazZEie7
	 qwMPrXyOAHzqZgCqn8FS4O4YmyLjmsOIVkL9Z4jETQycwk9ATY+ylgaztU5QTE5fkX
	 ettNoQGxfGv+D4naSZoD7vfi2RH3RaVd4heSAP0RxbFOdZI68zvuSoTnw5fVLfNVQe
	 KvVEghsLnzg9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDFCC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894419358.15307.4262010870272472717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693ad38fcb3d4be0223fc06120b3888eff9df0a2176bccd13822b9c9a80dc954
Date: Tue, 03 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748944193
