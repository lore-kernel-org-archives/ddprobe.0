Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220DE1D69E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724597754; cv=none; b=OXQeAW6LXHe62BiICyp4qiQb1XfusUHsMsItY+3f2vKu7rGObyOZnhkIrv1jr7VjafQWvvUPa1MOf5/s5fdT5B5wnXTVa3PsNsUOK+aKx2x2T9o9kKp7FSouNYr5mq97lrudoaHNXjAS7/3PZkSbBOlUHJY9EYuHXTOBKQe3BQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724597754; c=relaxed/simple;
	bh=M8VaZC5wx32yWOZawlRwdVIA3PaJNDPWLz/+70MuXms=;
	h=To:Subject:From:Message-Id:Date; b=l0F6LAN1LvMN77Fp+1/u5r+nT4Zx367o64zDUMra2EeCC7HPlaMTd1Bee6J0iQZitGMuoKkv6ISRWHjO5Z4vfM09zGMdYhd77CGPiLEPX67djz8pI0GGRMvVB5t1I/Gi1MGLKQTMLfN89jjBwOrssvcWeFTwy1289/GZ0n17v8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvFocoEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvFocoEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71F0C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724597753;
	bh=M8VaZC5wx32yWOZawlRwdVIA3PaJNDPWLz/+70MuXms=;
	h=To:Subject:From:Date:From;
	b=XvFocoEa604cYgJPv55pO980RbwCIOaMqnqZUtSzvoXoVolFS/AOIZc3I+bll3ERa
	 qBr0NfcbPl/Aw6Br7gphuMtf2NldG9Uox/X615KytK90ZdthJ8yoCQERfvU+cJ1Haa
	 TaLaSlHbTEWhboDfYSY7ImwjuncVvrRKYunQlmNzyCU7kTBnS4rRSQdsdx7ZueHFQD
	 R7jvEf8EYZkYqVFSjV9rHrTdiQ/XTHn5zhSL1lliBu8gONQ3zh2wkCsdw79FW7Ww1B
	 5194lseCtMIfzrJVjMLZqNKWvhXWzYmu6IQaxMnGaTJvaiOxNw7hWsg1BcYnxk4ItR
	 lrTrCTmoSPatQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94237C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172459775359.9679.4305400446238799659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320a74c62e2d9950f3065220588da70c22fa92369f54591b1f6f26a8e5342f30
Date: Sun, 25 Aug 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724597753
