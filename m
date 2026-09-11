Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB4F438466
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789128034; cv=none; b=UnTpbM89sf4xGocskZEmU7/MNAGSBlcBoK07WbANYyTYBAJ0IrW7m3UM/zrhkuPa9An2WOXAa+D28Fc0luJ3KlaoYjrD7iECTfBO7r4ykXMs192S7pbKA18FJTNvLYjw73/9gkqzmxEexDR1sdkvh4c7iUBeLVXPd3Smf0CyDJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789128034; c=relaxed/simple;
	bh=aSSdn5YBb74Xdi5ekbk9p21cob0j6jXqOJ6uQ0Xbeew=;
	h=To:Subject:From:Message-Id:Date; b=Lp0S2Bzsb8/2mocQR2d8uWciYyUkjrAyMVNPQbsfsrtclIM03UXKjiVpiVsmEQsN8+drNWQcDMD0AMXhBrozAPxjkuYH4+WtRlDLPTEX84S7C91gAbFQsm0abfXBrqXRkcm1Yo1Xo2W0ecbqJqKak3BJDXi8Ee4mUMbuLjwwbLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jxd/D2wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jxd/D2wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3A5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789128033;
	bh=aSSdn5YBb74Xdi5ekbk9p21cob0j6jXqOJ6uQ0Xbeew=;
	h=To:Subject:From:Date:From;
	b=Jxd/D2wbCgHjepD93zj3OuRkrHJe6E3Lz+8mEyE+nwlnwSJi5lWRWHmBQX4BnMjy8
	 T0CVZv+3f9fUk5hqB2VRkn3BIYbvYGC8YW5gbLfThPlf70QQo5KNTzzljfSFq1zXyV
	 TmEYgQtWpCqCkOAdF9+vMjRPZOS5xo4RGu3bVJ+BnoZohcqhfGK4gg+0nwsm2Q67K9
	 w5OTrQ7jgc9eBmPMrs4cpazgdGdegxd4ZDQZSrw6ujBEXqsqDfyC3aZvTg8ZbHWpLo
	 L8Cgi4yGvnXpQ0o5bSIwMUBIQFsEly/D/DcqT28bgkmz3p0lSWlT3GEIwjOIcJ7zLn
	 tYI5mCbfVR2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC179C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912803369.3764.2638433217503603122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f892375a82f63bb4f082026f1d4efdb780bb9d8ae8be798710eb29ed224575a
Date: Fri, 11 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789128033
