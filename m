Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE7622FE13
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736825154; cv=none; b=GnKplybIIq96x3nkxl2HmhZzY4fc4/HIXajv/huz7tV5lRBmd5t1Jb/ozim0RPcB3ZdlfpewKR/Of96yTL9YolEOp4VDxTBJF0dn6E2JMvjZkB2T1IpyAbVI1GHLPEfnm9SD4iOGQOn10JxMPNIs0jAF1xLFjwY3aBWTs1fwTY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736825154; c=relaxed/simple;
	bh=rVbgFYexB+cQoXR9mkucOmQuh06ECGUBT5QqQw+ZeZk=;
	h=To:Subject:From:Message-Id:Date; b=kKr5iAfIZNC1d3K67+aIW4iQIbyGi0UyH2jtc6PTzIuyg37XofgugPTX3W+oDUyo3peSD9JcLrZGRuxX5TvsKOjS3ac34XhWXpUjSI/2JpzlWB1uaK/33M4AGr9gPvBpXt0l17jkwMgwkRPKOTgm251f5DN9+mufEwAqfcSuYmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9uBAk6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9uBAk6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67C2C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736825153;
	bh=rVbgFYexB+cQoXR9mkucOmQuh06ECGUBT5QqQw+ZeZk=;
	h=To:Subject:From:Date:From;
	b=f9uBAk6gpsz2Twi5Ja4LdgVthLHXlkKVHocE3xK+7q/7SPdwRQS2xyp+Xm252eK9f
	 GXKd3t6EiIKH/Ygrjg+teTyZcMVtnK17DoJuqr1GWPShVPiC5q2wCj7hiCiqiF0N1I
	 /AUMZdKY8Ow8O22qExx1mSz+m+nQQhM4iCKhCivGzW3UpIR6rkfJTmllKNs7cl6et2
	 p1dTXArbERGJz1ByB32OzjeSl6oacuYlqIlyjO1D8ajAPizKSOg17qxtMKLaC0hyyc
	 HEah6ur3s7PZy+CXvFP+TPvrS+xgL0Ev4/lRRjRYvbPSDPcadomj/2MnWIg2lSv+4I
	 RAKar1f1mL2RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDA4C02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682515361.24074.7960938878446590491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d672f9f0f3cf292b3d2842b498c1768523298ec7771c4d10debf6854aa20d203
Date: Tue, 14 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736825153
