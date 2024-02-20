Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A8260DEC
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708420097; cv=none; b=Rlw4KYguFUFHsX2CcTPAKlgqklB5r4L5hiiAdouTCQjymjeEcaVUBgb15RHAEeaf7YuYy9JT15E+Mwa3D63txeNHqm52XY6qLjU5C9fg8W4kdKEMZmZCJJbUdh1lKGMyDWTacTEJOXyQiV875qVkZ56dXZkgoTDuA7a5ST0bDYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708420097; c=relaxed/simple;
	bh=FxLo23smLQ6M8t+V8JGt6AAwk690VqnhuLjrqKT66ts=;
	h=To:Subject:From:Message-Id:Date; b=o91g3973kgQIfK9nJyi665c9nWdbC4lAbILoAJnhHOlyV1sQHaE5qFnSnfbIHZ3fkqLs7vposInEoxVRJ/ST118u/FPYRbbMJA6ivylYGjBLV9oxQmW0HlbpWQ47aZtyHNoXyrGx4YkLXl+mPgHASzmocghfyswCQZ4sTObBYQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2Gu1L6S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2Gu1L6S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829EBC433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708420096;
	bh=FxLo23smLQ6M8t+V8JGt6AAwk690VqnhuLjrqKT66ts=;
	h=To:Subject:From:Date:From;
	b=Y2Gu1L6SQ84E82kPUtw6SYT5kGmqULn3CyAoG8+YcfKobehDvxu/jq77ocwvKJymt
	 vstGgqKYmWnxxSB6AwsRjeG8/dA5XuagJS0cx4YsREnfwtCgL3K6gQzZj4D9AunL6Q
	 u/C8xfF6vh4vrvs5xzxAT4gFO8Ipacs+laLGe1c+xWJrzPV/4CgmyEDXpIzaVQ5Tc/
	 3IhLZtt5jJcuRLn8fNLgEkFcFzq1984cTJsn7+o1l7ShMu6ot+aCNnQpJXlCvLKlhV
	 wMWRO8BiAxQOUp3ySiBctauVrXf9rkKOX5G2FSTjJ5CzS9CZP2MkB/EiL+S0TcrVb1
	 8TZDEQw9gUBEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E4EC48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170842009640.8058.18258819710018421241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290090cad6f02105edb5d136e0dbedbc7424bda7e1716cabbc75e95fcf905254
Date: Tue, 20 Feb 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708420096
