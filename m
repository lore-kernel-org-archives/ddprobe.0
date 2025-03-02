Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DED91C8636
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740912535; cv=none; b=fYM5mqq8XtAXQdXo7+fesQqM15pi2hbEsyJSACVb2AS/kW7b8CzSbBvKm3FrH68yyIF4XJKPG8PJSZRGs7IkEyYUF5HbCGzrhnXByyqiTvWG0HTv0/t+//vL6fiZ4efIXJiRvytbGjmdz8ENbVcDmk2uoGotSUh+yQk6njsmxkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740912535; c=relaxed/simple;
	bh=yhsBGPZOiFpLeUV1wsy0tcXEcTFmw3mz/+R+85yoHY8=;
	h=To:Subject:From:Message-Id:Date; b=GmjzVg3O00wIKAQNg0RK+2oQREvuQITBb1qfW0+cVyudQlL9uovn+sIw8dYWPqArVf/4WEafbdFvjWCOL7NqPsPo6KZoD3b9NZZmgPyRE1C5dieyYfF7Em1d9co54dd90XHIAaoxq6UvXRfS02jp6VgqG2T0IldiUfDmoGhQLGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XixzP1g3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XixzP1g3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44DDC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740912533;
	bh=yhsBGPZOiFpLeUV1wsy0tcXEcTFmw3mz/+R+85yoHY8=;
	h=To:Subject:From:Date:From;
	b=XixzP1g3/z/g4aQKGoRSGD6fQv1kkLFEQZls6D0nuEKfYzD4HAKtMK/tStCaiFKaK
	 sE7jRLdoOQU6pcJ6SNUMFt49MxjA2rPvV3YzmZoLoHia/r4p6h8yXR8zC2EoOtEHq0
	 VCSWzi1dqx+NvEGVaacL/gnWv9H7d6sJ+oG+WXjf9dkGsn6Sxc5dKdzXTOYJzRGzMN
	 Pl9sRsc6EEoSrxyFaIrTLHsBcEIDd9BiAtMSqDO5Dkr4QHB+NY7FMQHgHTP0EpgIF+
	 qDpxhQ553OEuyyLKwwogvAYAzqjsr2Uuas26095r+ds4vvX9sAYZEy4YtbZb1QTiSn
	 E0EDRqwx1m0rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CB2C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174091253358.30781.14031903812030075521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5880bb5f08e9dc31b258f1141de5f85203aa7488b7717ec8dd2ff3e4f2a42f
Date: Sun, 02 Mar 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740912533
