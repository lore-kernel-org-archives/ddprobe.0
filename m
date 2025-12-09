Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C02D1E8320
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765294374; cv=none; b=QhXQc0wiwiE1ZyGIjWfvMywgPQV6oheiHu6elb7LOD1KTTQ36/M4s2adMjxNamrmaiT+3mEK8+MwHLfrDlglDErekKJQt7WCoovXjMx3f0Bo28hbRBACnKFsF+QImqDyMwWMe52CkNEf3A1KezpDX43tP3R19lDjWDOvPrT8vg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765294374; c=relaxed/simple;
	bh=gWK+UaXRLzvEMmiHt1wnhR14F6xpTKvUserYKX7rRnc=;
	h=To:Subject:From:Message-Id:Date; b=szA1WZy4pM8Qt18Xj4MsEHtW4+qybcCTo3dPckeeJX/e8kluQ/8FtbpYhIQ4o8J5GAKaMT8mXzoxVml0rb/OgyzuFOMeqVdfcQlZfTirwEgpz8Nv8JHYf/tdD8UtiRZzfIcHDVJtRvHKDjOKOHb7EvJlYmUl1owEd2ozd8OzKus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtvnUpvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtvnUpvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14D2C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765294373;
	bh=gWK+UaXRLzvEMmiHt1wnhR14F6xpTKvUserYKX7rRnc=;
	h=To:Subject:From:Date:From;
	b=jtvnUpvCMULOBrcRDWewU/oRDy5vyFeHSkHx1rTYfqM1eo+BbglH85crHTUqB7+NR
	 us+8KkHWZ7ESl1l5zIlayGJJ8vCFf3Dlg+TH0PYq2jlNXTQWwb2wKsSJeVupWny3XC
	 wOtXLShInt+8SLqNfKAcaCf8KVLedWJYEy7qjgfdPRiCWPeVAfyUQ5l/5aJN6nyPkw
	 v45s4xrENyNkTBAyhIafG0Z8VJ5KdWJ2J8j6MO6ubQCztGfY/Q7ojXclbKYXOST9LV
	 dKFZb27PS04/E3rXRqzOPO89rnPaC4RhTKrNbGcDBH5b2TtVjuSjXTXtb/YAhIeS3V
	 RX3LRPao6tBQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C6D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529437358.10301.2155375389776807171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ac4cc3226c3c62253f10766b6c42d3a7c42ff4c84f4add32758cb24a44cb1e
Date: Tue, 09 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765294373
