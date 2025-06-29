Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16482320B
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751194796; cv=none; b=F53R+4ynTpEbu7zmI+lw5+JWCTqZQrdtnVnOoZ98tDDP47NveZU6mFX/zI5ZYb/7CV75PP1JbpxujaQc9suhsm/aHawpv9MKgEkKM+GmWhuJLQc4BsOrm3F8FLzQFone92/sIXQjZtmbcCkWHGMV9fMMw+XxKA1Nsr4ZODEU24c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751194796; c=relaxed/simple;
	bh=I4fUzeXdTxjlC55Vagkm5rf4Drxu/XPTXsFjfQ/TUZY=;
	h=To:Subject:From:Message-Id:Date; b=q9pjESeWnWN8dXw34usEpLfnE12g8f0uvIJY3b5qcBeTwcAKLg04u0VENd66m2o9ScuovQe/mwJtaqhHV+2FIg/WGjKRgccKIwbknsmkMdD8SOtPPHL4YBRsHBC2ckxnzd49i7J2uDW/aDbI4yGobUkwsMJUyE9ObYRtqv0B6wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/65Zsv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/65Zsv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DC9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751194793;
	bh=I4fUzeXdTxjlC55Vagkm5rf4Drxu/XPTXsFjfQ/TUZY=;
	h=To:Subject:From:Date:From;
	b=m/65Zsv5HlwH4nLDgMl8EmCkkOyK2gd1Ia3Vm6IPaoOK6BfqROJY++qVZlusJEzkC
	 2IHGp8dxiTf2PisuMviEECP13TSsifZ+VbIDEsyMKemLVHqR9Pc+q59X7hyoo2pp2f
	 3Z/lcqXAHJCuH2PpB3G+WxnFTCGcyAgi2qFr7S9JeTJ2zG6dlR9gVyVuv5t/RLH6+r
	 plMS9YBnAE8pPBCkf9npbcO6CihAgm/YG3h8lTPwyxfNChQYCQ0WhR09s8AeV3SiyF
	 BuR8hDPK0xUyMVz67cg9NmwraxAy1cInR4VMPSZZB3xW0UafXZ95xqw6KT+1BuE3a6
	 mExDJ0QdBXDqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D1C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119479357.30847.13872962141739974219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916594e52530c2eb7c3d841aff9760c5f3eabbb23b05a57e55162b4ba840bd33
Date: Sun, 29 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751194793
