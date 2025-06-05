Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479CC1C4A20
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749121794; cv=none; b=dNvAM9qlIVyPAGVkzFt3pkszWlNzwklmHxLOOeBJLzFzYq1wMn5UizcZC9G1PqjKyMzdak8mLmzWsLq1qd+jXGRtpQvIN52dV3lm5cILB6ISKOYlbxEvPVpHh/A2FS3XDO+hCEFCLu8ZMsPiCeiXU4qPSbxxDpzz6JyJ1XtabW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749121794; c=relaxed/simple;
	bh=4FVQJg2A5697SCaY3kXP/PFLtcK5s+CmwXfk3vxnZp8=;
	h=To:Subject:From:Message-Id:Date; b=BBUPh+uSiHQLp7GNLGZ+jHA5hR1psC8LSAFK5lnjL4knEuVyWFHVXyZZLKgHBWKcgtEETULPVKMV3eOYyzvJFL2c8vlrcG0XpVMCC0eD6X4/x1SNYVmdnRb3HS10yPcE93qRzejkPgBrECj3HLPbrdQ/jhHjryCNXWOHgtwlrPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sd8yThTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sd8yThTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B5BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749121793;
	bh=4FVQJg2A5697SCaY3kXP/PFLtcK5s+CmwXfk3vxnZp8=;
	h=To:Subject:From:Date:From;
	b=sd8yThTgnTWOFUYBCIabcDoCs3tOPPmHl33V7qpPnQZEVzwAQ8NjicSVbsGP1ip47
	 zlfDrQNgLs2Lvo1nWj+uC47jM1C/qRX8OkVGJ9Z9YLFsh6RSfQJFWizSJ0ljALDwhx
	 Gb/1oB8hr1mojpK8oFVNc/arFArXjZX0hARHd8YeR4mqKT8yVDOsmrMNw6aMSQCFKT
	 n3tLeUis/wqAu/42vX7aJ2cJDowz+342nIEGHRSuo3bu4V+iyP+Qm9vrrpo1yj7IvS
	 jNgd2Y5GqVDWdKBL8qYu/0rGAiYfADcCtxDNKC9b6TkMLnChmxQ7/nIuAk8uSpOpX8
	 vvzBr8ATrAcxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90993C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912179358.22419.16983361285429018024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d82ba601b38601a9c41b6c2f6108b965aa25bca4f41d4a8b64062ba83f6ad6
Date: Thu, 05 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749121793
