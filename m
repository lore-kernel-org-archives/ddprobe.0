Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26282320CBA
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756727394; cv=none; b=YP/Us/0pLXARNSVqqaeRafX+uOhNarpbSnu4QuKGJTCVR6peaVj1OBOHTRfaNXQGKl7qQF3GgAZwDNjGUdFF3zIfl/+Y2NOJ8isitmjQx5Qvdh5CTFZxh0wOgg4o9CVg2TaORcyd47C3nBJojCh2DZBkXWk158cwAHDUJ/JjghQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756727394; c=relaxed/simple;
	bh=RqUpyMIaia2m/Hw9qKSVnxt7wZSmkTtd16IYc+xbzz4=;
	h=To:Subject:From:Message-Id:Date; b=N2EQMxPmK/SPSrNQaIBPNLp3zpiGhiM1iMme7KgZ6cKjmQX0Qng+DEbnivh8y9UXqruTbf1cAfh7GsU34N6OLSWqFQn+m9B6m1NDv0XyCfOfHjFSrYN/7E7kef5UelxoJRCjr9fc7fabnx2HKWYh188IPBZ7w1CXwbTgevr9I1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jzz49oYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jzz49oYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A501DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756727393;
	bh=RqUpyMIaia2m/Hw9qKSVnxt7wZSmkTtd16IYc+xbzz4=;
	h=To:Subject:From:Date:From;
	b=Jzz49oYWsCfBusII3EeLJRBMga5tgpZ7tp3IiTXdSJzf4+rUZ8g9JZToEGv3y4RZm
	 XiZ5YAWa9RJL3TcdKvUhKQhNmEc/8BgpVrElDiPwaLTVQGhP5Na6xCIL+GL6ddtn4u
	 YjlaLhwJjG1Mvjnw3gLARDuDAiLQHSAhiW1xg33q+u0qcFAiVfPTltteUL/FZ80tUx
	 Un7kn5jJjQA/wOT1TYONnyzWHtWSXtqiU5Lmx3JCWtVUjOIgHMjKn183fii3nsVDe6
	 +dL9aa5p9J/2mrAx5D+Nju22jm/k+WW/9nRZcWpwEGGXNLevz5FdsAXfCDTu4aoINi
	 jAo0inQvuYveA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937AFCA1005
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672739359.31742.11553348755640963148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb36b3c1c887384e2046356566197f5c619561d8e6d254ba61a15e42202e040
Date: Mon, 01 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756727393
