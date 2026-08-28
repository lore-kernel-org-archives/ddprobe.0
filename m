Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4859629E10B
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787937634; cv=none; b=eTv3N8fDY8s4J/aZ4uvewymiB7rNGEz6MBTQIC9/qnOV31g54DNWIfng5K4naQgx46pKnt1ECBKdZmfWw+Wxs29F7ASv99LQKyxDM64lCSrhu7m6vJ5ntYw/2orqsYP9n+k+K+VgmYSxCQva7T0/FuTxX2oY/MSYii2BZ5qadtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787937634; c=relaxed/simple;
	bh=rF8tvVHcfR5gfUD62ygwrZrZYNLky6a2Lx33jnXwOFc=;
	h=To:Subject:From:Message-Id:Date; b=rHnV9ul7KdyMTBJyU7eTeX64c1xX+G+d2q+nP4wTVcmrPWrRLUuh0rfV+diNnQm58v1Uck4o/5GmkN7E9bbmYC2Byw1iMvIJImRcPcpaYGMjl7DADhPXlJeZej2zrmHAh5wf0b1uUrhe84Vu3wlx+JzdZF9HjF9TBeQj2u7gMFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnvpEfxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnvpEfxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE74FC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787937633;
	bh=rF8tvVHcfR5gfUD62ygwrZrZYNLky6a2Lx33jnXwOFc=;
	h=To:Subject:From:Date:From;
	b=ZnvpEfxOroGbtHDYVy9LRFtftkm0vPC5Hien2Zwg+x4ZEpR5wvSW1oT82Si+3f03S
	 f4O2s/Pd/NfIgJpdR5g2Nrz1EUsHqzWZKyUFbnfy1+GXZQum42p4VOFoeHxs8aY9Rk
	 +DpQCFux5DMS8esN9ptNI4XudhmgjlEmRG8SJUPyYKimZ2h0crjTAgKH9REQewz3a5
	 i5vmBH3a2E1imV/Sh+3dXa2IOcRT7Y6FSoNepr3gVAVCPQTW09kibeOv5gwqi8Br7G
	 fDQWDpTJA9MpDkKb81CQ/2dXKfopHfoVrOiXiH15Bm9jUINyFgabOVfucwz5e9Hguo
	 Btvqqw9049BUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD7CC61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793763369.16154.13770023108917212549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff767f900901eab1535ed9e00032fdc1b82624268ec38234500a015eb57ff8a5
Date: Fri, 28 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787937633
