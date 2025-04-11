Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71ED8202C50
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744398595; cv=none; b=fPPVHHDRzQ13cBD1N6yFOuqKad5QheAHTA8EDLvBGMzYpPZlSKZ2ZHxYS6bxND8NDEhkXmYq6m26DIXTQ/VDYzLiHAFRnYJFzK9OSHvezABXK9p5gtP+dkSqlswTqVuYVnGrptINKP+FVon0Ck4HuNLKSktfwz3ye1YIJKHjVqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744398595; c=relaxed/simple;
	bh=fBedOp1FodckHSeS5uW4Osb5+rSLejPctkCbKIpgBB8=;
	h=To:Subject:From:Message-Id:Date; b=iSBOd9HBGUJObZPFvQnnp+G0o9W/5Xspie27XKHfpjCPvGkCesPsazglUxNTVk0j8PUrffgBEGAFfQCgZOH4lJz/XPakvf3UmA27VFsDzx0M9TwP9Vcx2ep/Aw0LNtCUdxInRQngSG6gayzeGeY9ygiPI8V5sN9FRZNDOd7FktQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3ZyIBxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3ZyIBxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD07DC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744398593;
	bh=fBedOp1FodckHSeS5uW4Osb5+rSLejPctkCbKIpgBB8=;
	h=To:Subject:From:Date:From;
	b=H3ZyIBxepZYljYuehe/dWPtv8HHrmRlu0R2+X3U3S3cqQzevi+FCY/4EbUG7s+Xpj
	 zkzjGhxLKxaFYY0ZCrtMewkhDapdXLXWWQk0fRFlw4PGc0PBWniSUzBB2901QnUbPo
	 aTdxdUCox9rUL6pgubAi4NbJsFgboni/jFqqAmtLsmr1JD+0T3fEbYK+O8EEZxjjo9
	 yTrMr1jjXhV1jhMK12hzm6S0tzK9DCZ/nBZcAqC+tYjHJasQfHKmRLHU38sgQ9aa2k
	 OMaMDjDK9WzkFMhlW56SXW1xY7SOQ0emc1gmOB5ZagUiXfeD5FIyShFSlsicALGZpS
	 hLbYZrnH0Ot/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38C0C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439859359.13227.2531048135092307002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8ea9c8142fdef809ca2f96ae01be0d4fad8f044e303a77893713bedec38bd5
Date: Fri, 11 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744398593
