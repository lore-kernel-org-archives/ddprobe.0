Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A25316192
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767950634; cv=none; b=tVhhStMPvLzxRttE3bDAnIQXn/DQ/JRgX8VR3JuoVuxP/JpDYrXEz2OAeHkfD0KZUE2ocYs41R0sHw/+kvqPseufkZMHIIccSyoiFmYmjL9iFoHx8316DIsYx4OKUsXDMhYHDhmUkBbepibga5uGCZ5O8h0unHxuCZd7TcKv2vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767950634; c=relaxed/simple;
	bh=RKtGQivFXTTNHYZcBH27Mt6QvACteuGNeIvXbKamHGY=;
	h=To:Subject:From:Message-Id:Date; b=MPMHygmZcZAWX3VF3JJyD2PnUR8ppH4b/gIVJXkCkL9PKOGEryx0yJ4BUIYuyRrjftP8YKaBrzNnol5UnHMTIZ7jPGGDcW9m8709jjV/PnH85fuFXawCMk/e8kV8Vh0dJCiiqd0tca/UO1fYqT6Y354lFm+HPN3KkfMNACrMACQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEw3Z9/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEw3Z9/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A50DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767950633;
	bh=RKtGQivFXTTNHYZcBH27Mt6QvACteuGNeIvXbKamHGY=;
	h=To:Subject:From:Date:From;
	b=oEw3Z9/1584Z0Phr3Rw4wnDuSBN3mJp/PTIqXUhB0FqlcPbaZqJtKexHvXmxuP7pl
	 5aAFVYP1zqglK/B4lQZFarrBXzecep6bDn0nxsW2bR7A3dP/v9+P7widj5t/uVVRpD
	 9LDnb/yBFfbUJ5ouE1BEY1tqK5dIe1qowJjiqdQLf7QEhZdwggXhv7oZe2skUtLgty
	 WNO2bjA4Vfbfni+c49MI9P966WaQz9kUB77mIv/O6JMaLX9yfP8X46UhoAd2Gfbdf8
	 uNkXm5Hpea5oNn5EO0YtmKDjodmqj9wYdBiNpPxKei0VLFvce0qNHeuy8/tFc2UnGT
	 LUMBh8t8TYM4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CBF6D232FF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795063357.6412.61861158449507248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fd4eff5fb1b4facc71d8f1c52e36ebd6c4802f57b9fd64980c68dd776887f8
Date: Fri, 09 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767950633
