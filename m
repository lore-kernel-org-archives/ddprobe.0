Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22AD19E975
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739458734; cv=none; b=cFz2IaUI3NQCgbQaAAkzZdUL8Q/RBjVLeU6bhYhHts8wQAV3dcuor48LkIKVYp3T6zUpXzF5nNO3Ry0fZzB9yVpsbXFpkdbXDiBQNzaUE0vuiOSRtyXKczlFVjTBiagVKympORvKK5S7x2aWr773ArEKf+Tj4BdZIfmS7UfwY4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739458734; c=relaxed/simple;
	bh=g/UffQGIpGhv6cXiOzuqZOvP9w2ktz3DvCEnLpYHo44=;
	h=To:Subject:From:Message-Id:Date; b=kpqhrsHuSOA/daWvZHGMi/YX/oPMF39rP5TaJZ5Gfpf/ThcjpbWDRAlQwo0zTGR6hNcXbPRXFJibJrODbBxKHJWYmNeEPS8Nn++6THSyYovhVHtH3UuT8HDxglevxW4ew3a2d2AK5bXaBu/5H/gxBdmgzjxRf+nnwQsHBrMP8QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNCUlMXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNCUlMXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3468C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739458733;
	bh=g/UffQGIpGhv6cXiOzuqZOvP9w2ktz3DvCEnLpYHo44=;
	h=To:Subject:From:Date:From;
	b=FNCUlMXEFR1GxcZ6+kndclJDQaXsPZyCc6cQe2XLfUGHIQHOHcDHqwOO0eFI8FcwY
	 V18WGwMQtjOXkXzrxF4KrX75aQX5qub0JIOAEnpvmJDai2xlYDFhU4O3m5EcxjomvW
	 En0JlUa8VR878alJuXUPTDaAgN7jqBZTSwTTg/pzaiTccB8EK/lEhFi4OTABLG90eT
	 3EDvkucxEep1zxiGVqTleKRJZXT11Pa3RT6gmm/gGp0PpvwH3BRs7sPsN8V37pTYVd
	 eybMllj1218SmuxxxBg5qYxVvOTlTi7mW5xYB5GArdNdZ/Q7B2Ic43cnACZirwoEsP
	 u1mlTxeed1hng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F2FC0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173945873359.20967.1461901100607441201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d76445031255ca2298d62df4ea83e99e3a95faedbff4a7747a177e703468f2c3
Date: Thu, 13 Feb 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739458733
