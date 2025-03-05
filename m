Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376595228
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 01:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741136934; cv=none; b=VeWEB6cpgccra1KztuIoEn1gHyo7VWVGSF3dWPy2F3JtPY2g5diIpGeLzjGQvzMW4o7WJvYF2VEkKh+JKXRBGnqGZwUG7tu+TN3up+2a3hPQ8xC8XiYgeKEt87GDO5USR2JPsP4sV0QqDrNv4AFuV9S8DNEWrUM0zB1b+r6MsaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741136934; c=relaxed/simple;
	bh=nQvMsPqP7Klf+tAR3LqSCdeTGlYjKk3u+TaTtEHz0Ek=;
	h=To:Subject:From:Message-Id:Date; b=ZFw5dK4icw/bqGdSlR8pkloQOD3HA9s2cE3+5E4zmWOXiwD5wR59Aqx5QZSs13AHiiQ1AHkHbjOxs+ImDBiyEnFnIjHRqGhqK4Dne6pnIV1qxxDW2UZbFrLyPB4RM/+36eCNTFREcBfzBNAu7uiCCiOIK3SrYDOrTUB8GHgqIHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGfVs71W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGfVs71W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6DBC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 01:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741136933;
	bh=nQvMsPqP7Klf+tAR3LqSCdeTGlYjKk3u+TaTtEHz0Ek=;
	h=To:Subject:From:Date:From;
	b=CGfVs71WX5u8tpdYLsDlme527Yw0/IPpq1mWLB0l1zPqtUsAYijnEW5+rnlhIeRuJ
	 I1+MHj/ZUBPrCwisXxPvLzKFbvfMEy1Jr/6E1ZSU6I5wRU9TZYhe9Cc5R7SPo+vHAz
	 yc2y/QbwsFbLEj9Dzt7k6GA0EEX6J2inM+W9COYJqZmAHjDlqrtoTWdS88MJ78WWL4
	 Y5GbvTowvoToanw6jl31uK6Yk2brePSUmY3kL+uaqlYFJydGSAVb9G1PHeDaZLo2JZ
	 iJn2/nwXDFUlRo2xZHPluezdDrzTxYQM5E+oyKNy8aQxSMNVOy0QZnNqr4Tz13wEZi
	 e2a7+GfvmSuKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A45C282D0
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 01:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174113693360.10738.168862439551431444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c017f711440d62f794f4b84918c01ea5aeb7d8e4b50ef0697b28e22563812f94
Date: Wed, 05 Mar 2025 01:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741136933
