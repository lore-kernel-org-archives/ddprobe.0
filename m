Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E8B3C062
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717624643; cv=none; b=bFGx91T8IbQmxINVbQRjj7sThqluCKdS5YBRIqBb7asrv+g51jrpmB14s5u5WRtmVTVbXUf4zPvgZB4otwTgnENwy5SMFJTJitVI2zBDJkJkmP+CIRfJGnGrZd/4UNBxrnjNwaeS2/1sgvl7XEiloyEGO416fczRoAYR/m3p7eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717624643; c=relaxed/simple;
	bh=vhgZqV1ojgQym12W0tDkhht7C2cNGq6FN4KmC/bjrhM=;
	h=To:Subject:From:Message-Id:Date; b=ZTYe1Z7MFDZH+JgOjjquoBr4Q1l2wG5pNoxC0Mjhfrmx9hRqvaItMisWgmv5DbZifDC+Fv/WeKXvo7T2bMjYLDWOSZLUVXXO8zZP3TT9Zo8CIlXU4fvhmbxvtmJAjYSszASlSiNZ0ok7+0DHQXrt/O+nrjPTeY0Zj/UJmF+V6sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJepBdDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJepBdDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA587C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717624642;
	bh=vhgZqV1ojgQym12W0tDkhht7C2cNGq6FN4KmC/bjrhM=;
	h=To:Subject:From:Date:From;
	b=lJepBdDKX8IsG81+76BFSeDcnXntv/mCh7RMeMHJcbulvNUKa/opG7hmuPH1YXHuc
	 40ptmc6p+ozUxZe2+r57Y+ftKQyprc6cD+9wWWPZ4W6Ndqb4QaoDbZDi6Lt1e1cFUa
	 mDgacHy1MAxFVjDw/NhA0a23cmSA+2sSIhYm2feNDnXoR5Fooyp499pAW2KNC64dTY
	 hc3sjLZ4d/KSPE1sMqu5tBJZXh83+Z6SB55FQtz1BWpuTU09rJSXN9GVkVnIixcSt7
	 9ZYsLBnZVFAM8g1lKbMmMWYD6m5vPXgx4HohijPhov3LXTNkjvuL3JTbcp8ouGTyg6
	 26yWLvwXce6Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AE1C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762464281.24941.13874142974984938617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212673c0c478310eb1669a320cdf230a72d4f8b57b4b820b8ccaa805cf3073bd
Date: Wed, 05 Jun 2024 21:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717624642
