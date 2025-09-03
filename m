Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1092D2FD7CD
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756902594; cv=none; b=T7FCFyK5nhTT6TMMjctOUX2etmhzuZxEYZInuAw/YdS/wiswEtYPeR21tDwQNyyqJ9I2iY+zRJ39EiaKyEwDjPYpsC50o+hLGYA03FsmyaH8PX3e/YRhaJOOXKfVg4Zm26hB2lHqRutyCG0p49YjVbJDvRcZNaxNpGbOO4tM0Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756902594; c=relaxed/simple;
	bh=hnxNo12RYzR6nITi5QEguHPZGyIBbgr2UzV/0rBl0js=;
	h=To:Subject:From:Message-Id:Date; b=Zo5JQOJlve/9dmYTUnDfaMVFFZy6iL1KAqs86Ef9AQM6o4QMr36sgJE0x79/+GBonvMxnCYmYEFQiHRCvE8TtuYnPjdcwWU+CVJE6hJhtVDxPeElr6/T/fu7MDA0C1Nv4voup+jMw/fHKcJVIqb0yzN95S5fGbMjHGdw/6I8SYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFviJKKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFviJKKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABB2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756902593;
	bh=hnxNo12RYzR6nITi5QEguHPZGyIBbgr2UzV/0rBl0js=;
	h=To:Subject:From:Date:From;
	b=oFviJKKTNPGhZ24b+nLf8fjuWPAoi1XGYHWArl4bzXMnHDtaXIW74Lvi6BPm0Vubv
	 qb5+5kfoYfZUZThE41bSw2Lt0EvdBzyeOw7JR01CZ5QmZePmyp3+HaaO4jKAiWJdaN
	 v2C3EM8dF0L6z4MUCwTC/7360/7/mTY6353npNOP88lhrMyBj94RRxILByT0PV0fCO
	 6rw41B+2+XJ/Ou4pYIIeLEEqwAUaqBTQkb+u3OV+e57ryFPayvZuMCP7m2GmYbUUYi
	 TcCFZ8ZEoS1hr6ajWiCOPCTh1i9s1MsC0A0mo4P53pLPHZ9xpC5c+Wf2Ijpat45CoP
	 ix70agC1gAWhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95318CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690259360.23755.9730454014718569670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00196f5a5af08d0e51811ed9e78faef749e9b42fd2c0134080cb91da0e37fa6
Date: Wed, 03 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756902593
