Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5322E1F01
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760653794; cv=none; b=MMmMWsayr35yU383VLEPz61tAVq4VaYhHWtskqeAibNOkY4jsJ41D2pSUf5imwnmpsIYBRQPHAummamPhxR9DYHN+OiFyaUXOa/Y2lHcLSgAEQ+Zc8UXsUyI1o/8cq/1cVmw4A2ChLD+dRI2ndcY7JAeMgVW7dd/V0XMSACpZbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760653794; c=relaxed/simple;
	bh=MjVBgHihR5hozm+ct7oJ6VB50qb0sCAXQ93fVj6bu38=;
	h=To:Subject:From:Message-Id:Date; b=QJI2YKEn8+YF9+3X2LIU4QpLdMPQQJHO0PaFPniMJ4YZMgBijy/wSlFdByeuQQPNvtlKMsSjn7kEvqpTE1s3p5U8oF8lFZWDkLuLuJNi7szMPjb/Nh3uNXc0Yp3FPMLkKpX4L0tdSnCGmYSSPMB0PKq7DceMVthvRP0nM4X/gNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RW07ovJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RW07ovJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8825C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760653793;
	bh=MjVBgHihR5hozm+ct7oJ6VB50qb0sCAXQ93fVj6bu38=;
	h=To:Subject:From:Date:From;
	b=RW07ovJwWd1bF5UhUasJVlj+cIkjaDOwn6sIr9Ib1Hu8xjemCJ1sf0hWr1rRR4HxQ
	 l1jeKsByFb9HL/VKYB6xB43FvvybVbjXXzht/QUSkbIs15KApsrGqqSmxQcwFEjgo7
	 CgZ29b/1DlOMO4BGi7oJdk0iBpWnwxGHbPmFdTfQxH39mmgGYX5iBpbg2x/7gSWPz4
	 cRI9KpbNCbkILrz//PikaVpOChmSSal9w/kSLRsB+MHn2Mc3Ic6VGX6s3Fji/fXWAv
	 GML95JdrDGTQWUnsl7JTe+1/sYMyfwPy6W5ENaSMzATVJcHzsYVWxEvhg3psrs4ny/
	 wOzca5uevGa7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A6CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065379359.11554.7417624701945002455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdced0f659b5daebf0500e564e58bbf5318d2e44f9923e8acdf8827a4c575ba2
Date: Thu, 16 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760653793
