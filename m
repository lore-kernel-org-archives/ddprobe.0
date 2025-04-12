Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D471AAC9
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744421395; cv=none; b=F7PRSdDJ7KRPmIUZSR0W9FxpD/AcE5gk3TjB0lbD7sPkCAOpDTeQ2i9m5TOl1QLe/gjuqqNoybRzJF5ju9EJlOLIxqzQMvVwk2IXd1P1d6PM3g4RTxWiSjWY6AHWXR9836zdQUVOPkfdMb52lqGMtTUMRjuiLJ1yJtX4jyKIVdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744421395; c=relaxed/simple;
	bh=2SzVMprw7EY7gY8dB/iOE+C6uBwLZNJ6bL2ovf4TnFk=;
	h=To:Subject:From:Message-Id:Date; b=PmpDIR171w4H+WfjeTTqLtLwz6PL11Wam7OgBC3loXoDnV2AM0uPuKc8KAOkIu50OGVZaoRwxAJx4B8a8Let3ppA4Y0oSQrFlQf5N19VFkt1DsoBaZ81KmXlYo/EOBJV98d5O/PzhRwdVHdkoej2kOhh9ljvhQmDxnCma7BfD4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEU+/wah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEU+/wah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35E1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744421393;
	bh=2SzVMprw7EY7gY8dB/iOE+C6uBwLZNJ6bL2ovf4TnFk=;
	h=To:Subject:From:Date:From;
	b=PEU+/wahrFjaRXr2az2dIkW5C+oY6/8cLEgp5OuHLIaCT/8mJgLen9eUVJt0vledL
	 PTKykx9MqRG1a1vScfJ5bVTeNO+/w0tt/tUiL6m1ICNqL6LX23eWlKJU06JjanlnoH
	 CuHFPitGT8LwxPnuKIfMkwTU6/F8q8IB8ecBP990ONf/9yBiu1bf1va1EysxdubWm0
	 ZHjrizowIlnEnvjLH6AODCq3Q4q2D08/zhWarruQp5OUxMtHcrcciCg74Pwj4PAv50
	 d4NdFMgcSZr2eCCUJMqj60mHzHbN3S7O/YSD/sMV8QhiJXGBI1yzoKrNVyEmq459tO
	 O1gKi/erQVJkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994B8C369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442139361.24448.16699006145817119900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4a4b52431c120b8ed552ccd2bbd1974b3b43ef3ee437d1e940a898f894c6f9
Date: Sat, 12 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744421393
