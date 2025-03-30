Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC0384D13
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743310794; cv=none; b=cpqQJj7eLMohZXhRMKUjvYYHLO2MlcTVsBbw8NTXlSk1on4nXe9mPLOztcmKF/b3Ry96r3od9FMazjDzCbfKv7LpONcuCPNF6kM8DNHazp9FC+3NCTJMW/WQpNkXpRgqMCZOxsXacJ37hC065gkppA2DDNjBvfNaokh+6Jo1vXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743310794; c=relaxed/simple;
	bh=e/e2swcmY/9TrAu29N0N2zQij95bMrrDXCu6lk8+w/U=;
	h=To:Subject:From:Message-Id:Date; b=GfYPjxTwtI2ppHgNPt5DZTv0gy9lJbSAj/stVGn0kvl0YEbXXij9/IN3fTiFUx0sWyFee0TMKftjVGf7rcwPwHq1gvz2KPEirh9V3iYQqGBnC2mmuDti+etZTwzKI2bwv3sWWMApYiBjWp5A+Lr/tsJd8aK/BtgHiSo2V+BOlsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdFuSA5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdFuSA5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95E0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743310793;
	bh=e/e2swcmY/9TrAu29N0N2zQij95bMrrDXCu6lk8+w/U=;
	h=To:Subject:From:Date:From;
	b=tdFuSA5JhySE2nl90ZyVQU17JYcrtFp2IBWjKsNJqVp2DhU0fpUKnlpVQeXm3NXRx
	 N5gjS6XSq/c+WJkQPEnwQlEM9aaXmx01LE4AQhbSggvrgiBX8boHYSaEI+Kby5SMha
	 Hcw5WSJUCPBprmc9IDNzXbhZ1KXMTUsMieL2HEBI7r4sjLtwle3dQbR4e2NpPTDoCp
	 /KxoT3DTvlgtgx+BSoVh4UEWz5oo9h2SXNVEkew3PqsHCB6BMCygmByF38TdQZ2K5/
	 /wLcCS3qoxUTxA6SUsl98T7AOZHl8ldsPQvm6O6TrP4jmGVczMWlPFSUmCZYN30oVU
	 xdjXAYOz3/sng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0719C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174331079358.3512.8144505168031898673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0b0889f5d1bc82c61665af8d70779792c73ab883414efca49a074e386b3411
Date: Sun, 30 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743310793
