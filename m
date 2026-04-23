Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240EE1C861D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776905254; cv=none; b=DhzB6lIr9v1caGmS1oqgfvUzkVSEDsPyJ2hTKfVfZtzLMtZMq8UodLylTBQJEGdvsE+fg/FG1t3P0WyY95difO3djyF8GPprErCQLiL4KPElq34VEPJD483Upo5dEv7XmTfqrNUIxsQsXCttnTmklysu34CUubsgtdlrdsg4TNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776905254; c=relaxed/simple;
	bh=AGV519PGDMrF5Dqj0f//ozO74ZS6kqQ2vaTXWeUGaGw=;
	h=To:Subject:From:Message-Id:Date; b=rMpJwwesr4opvt4mbIFSChOswfOTLXFxmQnM03p+BHOP55VQDeO18q3dFOuSXdrpuPS0n7872RubqzfF4zxJUuIL1NRE/7uuRsm8h/Yghqzs8m2vbHR3MCPL/wOu7FxYHFljASC9xtD+cfkBtsFgpL+CQ33lrKD6C/bCI4zA5AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+orwooq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+orwooq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDC9C19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776905253;
	bh=AGV519PGDMrF5Dqj0f//ozO74ZS6kqQ2vaTXWeUGaGw=;
	h=To:Subject:From:Date:From;
	b=V+orwooqiNR3fpvFfGsatOoln2J9zANItcYSwbSajElE0GyJlvs5hVXjePTl0IEZn
	 dbvTD+orwfgksLg/Gi+bWyKb2oG27cu2+SmPRBYilXrlWGpPze9yX6ebNemwWTjaZq
	 zgQeUiflKpY/+DcJC/JJCJ10UPiqqdAjVrU1jmsSFtbLXhUgu//yPDUj5HJPBJvI+6
	 SCaHEQKm9jhxbHugSBFAKcw1TxhciZbRqi0GFgV/tZXXChaej1UZeSi7P17b5FdEEi
	 R0W0BIampE2iz+kJ4cyZBrNV9zXoSFP9UHJWI9EOgT6isybrelH23YUbp/8tlYmsR3
	 Xg5evhUQiHXYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC38AFAD3E6
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690525368.21106.12297568973691625371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e912c9685d450007c0f4ebe0c9ac60e5e894225bae5211770b704ee073e7b2
Date: Thu, 23 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776905253
