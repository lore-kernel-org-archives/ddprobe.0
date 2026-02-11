Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CCC20010A
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770770634; cv=none; b=FMRPYURqJaHUGs2QYjF7zPmh+MpvYZjRO8gp5e2oc6u+jHdckiFCxaz5yxff+XBlWXMCtPPz2JefqaB2Wq55cM9ASFu8H7NqBWz229BdNwZtpFe3Rh9423GMw3DBKxcOB9TTCAaMgJr2vfb98KWrM8iybc4j/wlyGrOmsLY6mLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770770634; c=relaxed/simple;
	bh=gKflUImut22iUPStCkrV4TxYigCnVh3UNg43OK/Fz50=;
	h=To:Subject:From:Message-Id:Date; b=g72T+tLtau66UTHpjXVyf+d5QVtfh5m73TsG0PjoZ8dO343megmUxT3gmrvbRhHxREz+bOE11KKCPMz4Iwv6sEktFLhCla9dZgdTVKtw2siT6Eh1Y6hobx5jJMs1P18xwvlkTbzwf5OZPIvEVleJBVm8PxoulFWF1Xnsr1vN6tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5FLC4hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5FLC4hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD89BC116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770770633;
	bh=gKflUImut22iUPStCkrV4TxYigCnVh3UNg43OK/Fz50=;
	h=To:Subject:From:Date:From;
	b=N5FLC4hcbyrMCvXSHtLTzcrJ3jtMUUEuLW8qDguwCzSzWfA/OpkLv2PkDO6r6AQSH
	 Oj9ESR3UpzzHb/Lopd4Jyp+Cgk0gPASYFdIL/j6bHIcxlYr64rPz1LiCqwmPOb0OEW
	 riufmXKxDnYWBZiDkn5j6YEonxNZhS6HQzC4007BeoZ057in45EmB3bkJzTd2e2NY2
	 aXIeIrBn6lL7F8SphKxm4UuuJ+fJZ/99Fegjl+SznnX3+GywvOxsZ+NV3kneUsMe3O
	 wLa98eadOTFjsLL0RzNAAKPJBrwmDusAjmGatEsvRbXvBWoC6lknb0NZgxyk0L7Iyw
	 rIGvCKJJ8cDAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6871EB5949
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077063369.8212.6806532591504173442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9b47bae66fe8df0085b3c799a97c719a84f46b775669f4f312ec2550ecbd4e
Date: Wed, 11 Feb 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770770633
