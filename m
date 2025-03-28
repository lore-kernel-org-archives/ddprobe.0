Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD1117A2E0
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743148194; cv=none; b=eLSxhh5Rzd/nYxJ7cjUyu8xxhDSTTqMWDe47T4uSGqeiYX+ftfNtZ8pm4QvdfO5xqr6s4l4UWX05j5i/37HuBeUdzDsg2ZsGGBjuaPw2f/GZKnLD2OPaZC3VGlK3bQ45P8zz3gahNO3zfklVCujl/8I/UT119q4hxR2rYLoAcs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743148194; c=relaxed/simple;
	bh=NEtPTyJNouHZMCVPvY2PBytWaEUucfpJHfww3GnnLHg=;
	h=To:Subject:From:Message-Id:Date; b=Pl3tVpSCGay0xWEClFqvo0jGw53qBKr2vAVfkRFWzm+16QEXzi0fCn3kPTRSlo/vuF0euKIJUh4YPdhEJTigHuESjphGEIdCOL7u8K6IVlqrx7pHDhAaTQKUIydyKqtmBlj7iag1Bzub0pCD1cpvCtudKshwYHJ32Eu+kUOr6LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7j4YnA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7j4YnA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B0FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743148193;
	bh=NEtPTyJNouHZMCVPvY2PBytWaEUucfpJHfww3GnnLHg=;
	h=To:Subject:From:Date:From;
	b=P7j4YnA2exmLFBdnfcaxSDcFLnxgIgQAlhw+71FR/nIt8+F7GnS5yWJhCQPyLC/VS
	 BDPo3z7vjP/bUzFt3rJUWzEt4KbIEF8LfmYs9NB0ezMv0zJPPAih1VqRzh9JbAVEGH
	 tefJLZ5wmx0YPjqgj0yuZgQ8wuffOukK1E5QYcC50dp0gF2g/41mxavxDCLG8Sxf9J
	 FgLZCAV93AYc1Bfc3o0TWiHU39JlCX/cwGSG7NpOE0mRTQRPjOnuFtTpbhfvAlr9V/
	 Jf3HI1QWyVhAgPFvuBhTPkRxKcd8+znvdkoBs3TNolYYvFu3L2XmemlOtuNLWtqysG
	 H62MKbEvwVt3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9369BC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314819359.13097.9213556947821551125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f890641285220f789d39e05baf3b7f3a4ecceee7b8ae98cd9c51b478ffefc102
Date: Fri, 28 Mar 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743148193
