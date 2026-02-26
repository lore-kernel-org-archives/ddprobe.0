Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E88B36212F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772074494; cv=none; b=WVyZ/7sPVySuidqieiND6l63+Ez/nG2YNhlvOd/1wUOxUzFkhpzoRvTIW/3jI1OTSCCbYFu6SVDXkS3zKJ9bKQLLVky6V9jm8DNJk4qpyrQej/GfZ/jYBAeTn27OEu+yQxjE2VSxKJdDgF7719RLlJXlS0EKxHpUS0VhOZ3P060=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772074494; c=relaxed/simple;
	bh=k3gSMH6FGjQWp3EwrDIroHByDlfPiwb/IEZeLnY9lXY=;
	h=To:Subject:From:Message-Id:Date; b=P+M+mt1o20YOjxrqLYl6+iEWyn7GKJ/hdkvdu2SpVGlkarz9Hq0A2SOIUw4qoLfPGOZuAOXntsH8CnTTap9/S88fshRRfQnbAMExtRVe9yRyWHGHu4g+1F+Yrrwttl0YOmwXRLWd1oBTuYtp+0BUY7W4XuOe1/Qj+bXmj01p2dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEqDWkDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEqDWkDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF70DC116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772074493;
	bh=k3gSMH6FGjQWp3EwrDIroHByDlfPiwb/IEZeLnY9lXY=;
	h=To:Subject:From:Date:From;
	b=JEqDWkDnvYMB7osMBduljU8q3IuvSJvmPbQ+xUQV5NkQYFfWSjGTW2HWbVxbxt8ZF
	 /Ql7NdVHXHWYGSCEnIGQVW2x7FfDaEdU1y8Q3fnai1M1zX7nNyd1AsQXn+g49Z98Ns
	 ytSSVXZV0Z+XQyn/KGW/78ZLNMLtoOboHMgqpc/HILi1TbYIv28kfhyldEmlxJDuJS
	 mUkYX4eeof2gn6iiRWlss4axUSTLIY/BEnxrCBT5IirUQ4e4zpCPII/hbd04OKZanN
	 dVlCZs3vOPYB8EV1npgotJKt6+pbfi0AwdyIIa6wDV/ZursBNpuOOUNIkPF95GfDAK
	 Dnk1ufivGxCIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963FCFD4609
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207449359.26375.4771135755647376011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7334950c7ec95c44a967a7557d8691b0e4436d3c8673a0c71226547765e74223
Date: Thu, 26 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772074493
