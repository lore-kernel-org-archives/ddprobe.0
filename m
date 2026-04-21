Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DA52264A9
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776802654; cv=none; b=pijiUM5nlq36dtOCZHcSoWtc5bU4+55rMfYyjYtbhEmZGZGgwqmO/QPv0u6XWVOjf40WuKMxhgfKdPH3oTu84UUEzftLUIiYNzV6yAspXT/TgkEuM9M3xdrOANcIPsbFdpWIE5nZK/GKpzq3Wjh1xsGkkVbexqggUskPcnQzhkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776802654; c=relaxed/simple;
	bh=d5B8RnlrO05odyIPs3GdFPQvI+acVskyl2PhqJDk3Sk=;
	h=To:Subject:From:Message-Id:Date; b=hbdXmT752xhoFDAy+tDwOXKUdctFgtnqjt3q+iHEc1irtr2gGmIiVfPXc9Zor1JyU3IdUW8hss3t5n64xKsSjBWcQHtc5BKTdk4EDJOLuySTtiirEHajLSUHfjWbcYsN+FMqxYEn6bPlJEbwgMkmIlePybgaIWsIPyO3Btk0Udk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3SkTf+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3SkTf+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58DAC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776802653;
	bh=d5B8RnlrO05odyIPs3GdFPQvI+acVskyl2PhqJDk3Sk=;
	h=To:Subject:From:Date:From;
	b=t3SkTf+HHc5J/RzrtDLBZqX9Wn/nIWbCYg13EUtUsSrxgGTQce1kvpxgzS5HU+kWU
	 VbZK5mJTz5MZ/l0b5WxIoWcz2OvAcpMK5Qb/V69tFF1OtkqaL+3jBpy4zZsdzclJCz
	 E02mmrqQQTePbfUyiH1WJBuNX5LbJauF4Bmz7jvleRCte9R2n+4IlBTZx8A4Zncu1Q
	 x/vHvccCULrmRMcsRQnA5Pngy/wsclPIaf1euT7MHlx8vdjO/rBXaXh/jOTT6jS+dR
	 /+SnKH1cI/SAmLv/sCnKvcf5WMvb6TzdLBbitij7Sn2HUhgKCmGzPdjtbbsms54bXZ
	 nJ9dVSqZkqpgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE92F94CA7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680265368.11508.13404489080245533631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde6a6c73f368d9cfcbe7daeb60a7273a007aec4d2f270f4b9b6892d439686fb
Date: Tue, 21 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776802653
