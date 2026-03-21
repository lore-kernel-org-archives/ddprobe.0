Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42DC241CB7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774077294; cv=none; b=G/+hPUmgP7EgxXWh1wzr06jeeWXKB9wnMjzvJXusir7pmqD2TrWUxhJjH2+VYyrODY6CngY+MQ1+Jb3g0f9coggnpNil/63L+oopaZJJxsbmXV3jL99/OWTFA/ud1ugNWrWJxtaiR3vf5uehvj0i2uxlyDRLQU4bV65hjFRnmrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774077294; c=relaxed/simple;
	bh=jnN2+JlCLXiZ3G7oiykfKmiMuPCyLWl6m9eYd53QdRI=;
	h=To:Subject:From:Message-Id:Date; b=eCCFWG8iTk4PZmo8f2CJoZo3c2T/px62EoQANIdnSjIIMg5H8I2C5mgiMygFffZjamMVARocAKqAuwUxotN1G5mMuS4NsdrzoHTobOu3nBMCCnlvYodfsM1g0v59KAmGX3roq6h7gE01bv7tLmQybwFDt6iKMTtLzcn9MGwjycc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gc+sDLGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gc+sDLGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D154C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774077293;
	bh=jnN2+JlCLXiZ3G7oiykfKmiMuPCyLWl6m9eYd53QdRI=;
	h=To:Subject:From:Date:From;
	b=Gc+sDLGnXb4agxhAjMXcbM2TYDs0X+yqfqUMNit2v3BpOfQfZDdV1AELvmhhTcZyz
	 yUWDIXH9jVfvS3TtLPVtGb82LpJwgRuxhDNw/Dvm5MUBpCO9fKx3B6LEslK7ZyJ5mv
	 xgMOYbcfzsl2DEs2Lghdd8YHjWdBU2POBWd9NXlcSNjjMzGhC0zeDEQ7o2hqz2cAO/
	 wPewn8orkEQNKbmXr3+wfpxisRiP5n74UiY9qD2FFKV1i8zSHi6R3fSnJtDNMINm6C
	 VRBee7HwGi1S3oHqg19zhJnhLHNhVznza0InyMoRWjMy57axWyQFhi9mnoQE3xXS+E
	 IzJxudXH9i4yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E028108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407729357.31980.13116619336697968940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb862216ccd8f7185fe1bfc6c49fc1568abe36da897b0a8d20b721ac99ae6be5
Date: Sat, 21 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774077293
