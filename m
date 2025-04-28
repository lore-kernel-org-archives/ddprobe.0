Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F91C15748F
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745882994; cv=none; b=PrLpjCyoaYzmNCX07aJgQrgYJjGEYsBdVN0afk5dAGFJSRITcpFV3yp3Zber2PZojPwSz/GW435ZzPIfHMLsyDaM0J2F+YcY0aQaQrTxAQ+YNwHpiUANL6HTYNBkVsdjgCS2pwLQKNWvHH2wwBqry0rh2qkc81uNMeo+PnGQHMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745882994; c=relaxed/simple;
	bh=gPEok13kiLn/xYebIBV4WfwWLwKGXe8YvnFelg9hTds=;
	h=To:Subject:From:Message-Id:Date; b=ceoA/KCE2vppyUe1Ao8DgCaP/UpeWGsYwZbNJRuOhAlQp23H1XMAhSdtC6rFupofnZKJ3IQM/IoeURhN2S3HHlA1/Ss9OaAZoUSTimD+WMGkZeFH6KtzzjaSzzMWB/6vc5kLdZLlaQk7KBbKLeK04R1OYmM6JC742UqciO+6r50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTmxzz+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTmxzz+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53B6C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745882993;
	bh=gPEok13kiLn/xYebIBV4WfwWLwKGXe8YvnFelg9hTds=;
	h=To:Subject:From:Date:From;
	b=pTmxzz+IpxMIxclzr4cSWYLba2hcdkL5+B6VLu/OIR1oiKSYU1JrH3ZBD7XN8hfeZ
	 PvkVRfZ8bpPJM/wksyhJe4VZWTMB7p4V/R7gqRcg2w+wsy0t2l1ltJ7ENBeXQAB7l/
	 HStQ4QInQ+aBbtg6MXW+ZcBNvZbVCfwRP2AK8I1rx53NEpHs2MSdvS8oo2JfpnR1/l
	 EHauTc/aq8kSHvjU0OpwENAMLVM1dZlk24hzmSCMKwFhwQWWBb4t1sX2EWBv1SVb8v
	 t9DaFgHpZCU7NqxDAi9GrSQ91qBwu4k/JOx8kpw1jSvjm54WlB3OOcvLONQJAw+KAS
	 rbvSjRrTfccKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E4C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588299358.17947.15842632205974933161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8d9ce1f1760d35efe51231f330ae4442d0dc2ba710730eb338518a384d28a1
Date: Mon, 28 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745882993
