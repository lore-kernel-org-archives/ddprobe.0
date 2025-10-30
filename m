Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A6D330D42
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761841794; cv=none; b=I4ChZYbyWlJer6ZMJIGahAgdntlHQpe51s38MhM50qg6JhV6VnI9lFbnigh9Mrkha09nHKwMj8hVSBkNC9FLBpqFFDWGoc66kwdIcuIUzV6+V+e4wjVEMWNnDjYS7kAq5E00539PrQTDBPXSRJ4qlHcJR4V7wwWtkG8Co8LfKHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761841794; c=relaxed/simple;
	bh=uez+d+/SnQE9JNY4VoZ9JTjHjAqVcru0mnfN70m/K9U=;
	h=To:Subject:From:Message-Id:Date; b=it1U2jiKbIj7AEh+BfNCpKeqXy1jV67c47yoBvhQQkGgbiIn+fOPY1JONMmJBR++GtoyhvVwf8kzUzJ20bLbPyTqOD/Ew40rE1npolf50QoV69JJqCOfbLOVvh5xkR5vCNVkUQiKhfBgONl7a7gxW1hmV2s5xTQrq6zHhmSlzPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQGxop26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQGxop26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B2C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761841793;
	bh=uez+d+/SnQE9JNY4VoZ9JTjHjAqVcru0mnfN70m/K9U=;
	h=To:Subject:From:Date:From;
	b=iQGxop261CQhnEiZS6LvrPBV/2lBaeF4+yxK90Je1MUaisERBD9fJRbMKUu2TI0Ds
	 hNPz2gtBeuJBoK430C5UQh5oyifR7PzL/OPn55QCBMqy3Pt52IDXJ4uLdLEsqNy9ZC
	 anX1TzB+Un/bEIMxUyRUNZRBZpb/jOoxJjWnPCGY1xxeBt8237n4ZT5SK3W8H1X9l1
	 32fZFvKFnm87yLYc0185IrJiSZLAbtR9dEVstc0euzEBQQlutIxlJJyed4gsBzv4up
	 jEuvMTfbHyomnTgMMfijNecW92TaX4IZLgt8dWNrO8T5z9et/TOWGok9gcXdc3v5Kx
	 H2PRHp+PCZVEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92916CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184179359.14395.7140822061569607926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fec2acd27e6d1bdcea516149ffcbfa3a79159cf0bf491f2e88fcf1fba6ae08e
Date: Thu, 30 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761841793
