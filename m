Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E911547FB
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727958354; cv=none; b=GB9iMrH4Qf2Jq9KNPCn8JrJGpsG5gVk2Gjl7H13KJpDuhqgfv4toM1imDQqAL90LiUKhJ+YiE6ugScHQiWTKLVoBoOLsKNwKcBDMz1//4Nz+7+u61C/qnfikSNw9ZGqKTHe8HIx0U449G8PPMLPbvnLVTuwlfbZSZ4MBhMBd9q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727958354; c=relaxed/simple;
	bh=Qyq+JmEzsLCOBtlBE2e9JjlG/5ZT70AsEdMlQ2qWXi8=;
	h=To:Subject:From:Message-Id:Date; b=KQJV0Bf3ih3ZgNeFp00ua44h4dOioiE6cpEjLRttYrOBXoM2OZSSjCe3r3Bo8k4lRLf34+KyhkhuwxTrbEkKXYjIc+TIJh8sb8ZHWcNxOK5v5v2R/ZxhGFp3TaNO34K+SIiAdRgRBlvUgCR0evV2PiwfDexNsga2RX71GzeMXuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAm3qD9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAm3qD9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A1C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727958353;
	bh=Qyq+JmEzsLCOBtlBE2e9JjlG/5ZT70AsEdMlQ2qWXi8=;
	h=To:Subject:From:Date:From;
	b=dAm3qD9gyp98Tv9CmaJmwkPE6J9HMgU4/dLs/XLYpSYoAUcKhu5O6Xp5QbeopJuXd
	 PtWO5dA7LI6g4iOTIZwE7awPhTPvhlhymoYUWEdeLq24hfm1KUd1vsBBb/A2QEY6Up
	 4xQ7OXzfIL4Yo9d2tPcHtP+DXVDlAekpjfSIHY9NW8PxPSTeR7MK8D224WaKwNpW7t
	 VDitHg9MU31BcL/i2Y8vATOaXi0pqfGVS8vK7f93lSwrq2+Us8Yo4wjsbg7sCs6Q2A
	 3RYkYvM1G/nZUN6qxopBo46o8Av9l1oySB9IXLprCjInFEXkoFqwKYhVXihb5azmPh
	 82mvVYWhiHYOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91898CF34A1
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172795835358.4689.17841875943587521978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb84a6d7447e756a34b32fa4529882dcfa1fb8b8dbec3db1fb9b955f7258394
Date: Thu, 03 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727958353
