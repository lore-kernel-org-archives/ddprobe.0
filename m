Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019CE3876CE
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770740034; cv=none; b=BKePM8ZiUzX/d3dYEfPWoBGv4NGKA65Lgk2MA3rRXcoGBHokuac8UfB85jmgVf588R/YlfmoB5VEf47YqvZNke9ImzOCX8x0dOooguFvVswotiSCY+8NkBl0NvTCLdmbQurL+v0wufl3/IUz2dXoJsFf50bCMVH71FwT7g6kWrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770740034; c=relaxed/simple;
	bh=q6gZkX5jymXPol0jDQD8n9Y730SXWeNYBrMgO8TtcFE=;
	h=To:Subject:From:Message-Id:Date; b=uPQqP2Ci5z6jLBRBy17PpEpaWC0eIZCXzaGoBVbYj/Z/YjMP7Oy8BgWrR+mRvuketIXH858o0SIgLp87tLThHYBtwmC0fF+jNEEY5u6QEfsEL+8N0m+JHhTCG/SHsjLnTHuYdVTc1KLh/rs+hVBEp43tP6iOuIQCyiU/BPBJ+0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBLKF9Sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBLKF9Sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4144C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770740033;
	bh=q6gZkX5jymXPol0jDQD8n9Y730SXWeNYBrMgO8TtcFE=;
	h=To:Subject:From:Date:From;
	b=fBLKF9SbMaUI4/bTQiigvA6VodDD2qSGeA87GYBihvhDvAwq2NDG+ky8uGHpPSaFG
	 tWwlMhzgYrr9WsecRRLbxR4PK3XGcB0+4q2wc9kX11LOhG/kaqPr8nCuwHsfaqrhIn
	 R6x9CIhVXMsZdQq6R3d/o6nXHb2camTnuyVTM+aLeJbZacFcoKqu9smWc2wLQYTI5B
	 DXWJqa0wd0mOL2R3lnCUX0YD+p0+hBGtmi7osl9+3pMOvvvrFIFdQhePb1/k5skdZX
	 SNNfCldntYUNLi6vLdqiL5Ld7Pvp4gRvYGL9P/0AwAE0YhnuYTBk9MgZQRuEa/ZUpq
	 8dQ74VWHGRPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92637EA3F22
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074003359.9835.11230992540357397555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24aa989a919a44c6adf806aa201785d85bf9076345fe604848e4cc424ae88917
Date: Tue, 10 Feb 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770740033
