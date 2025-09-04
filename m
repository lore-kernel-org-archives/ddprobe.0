Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285C8253F05
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757017194; cv=none; b=OptbqCm2x7euHkscN/OcCw3OPjClkg5tA3JIOGE/p1C9C/Jou1SXas6sz3Ge1/0Uv8/4XBscACbELXatHbi2RDeVt1XLjZueTSFe5x919PSxyj9KU+ah+pYoJRcmcmlw7toJvIWbuvg4DVpm13PmpVdXivJR5KsN7Zub5/OwO14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757017194; c=relaxed/simple;
	bh=9HbpzZYCUasvMIUXlcw/ghJZbTMv9c8MS3ssLLTTsRI=;
	h=To:Subject:From:Message-Id:Date; b=aHE9h14seDC3SggkI/1fSRrH3m+9UAXwcBkIAUQGWmYsqJEhMicKHl3gjZ3w7BYANKBD0MqsRnmd1xDsL8kqkYMwTpoZnE5CH64WCJSAELyrOfVIGJulcjcF40PEhTXUyhc+94Z9ZwrsFdfcC4QIBHtuHJX0BWCFMEyEYbOKrRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pB8PLBYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pB8PLBYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A1CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757017193;
	bh=9HbpzZYCUasvMIUXlcw/ghJZbTMv9c8MS3ssLLTTsRI=;
	h=To:Subject:From:Date:From;
	b=pB8PLBYew5H0ngcpL6PouPTYbS3QVPTofHkcFO/isogzw1b4UZJGOWrbDjIucoclT
	 iLKLIn0abJFvN1G62SMiy6BuibWe3BtJTe65zoRvs+nOnHv1UdX6GKR3cDtYsdTG5n
	 7qmGJxJKLaRVEWefsy+8XyzMzjdZly6zJttR5HwTLSeZGfrKS7iC1LdLe3PmIjwZwj
	 bSGA8ReVpw8c87QcY+yoxoszejiahfXC0bYllrZZF4yNhyE5UsR11P/f5tRcyPs7qp
	 E6267p+98eblEu7r1cBs2Wn3xovZ2ZBtJSIwo8DUtxmMbJ9JpAmQL2t0KQsxNibrSp
	 +NSR+YZrQx+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90568CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701719358.5167.962453748223927914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4babccd59d4ae3d67e282b5f9999b7e5630d7ca6d2f5ab0f010c66235380ba58
Date: Thu, 04 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757017193
