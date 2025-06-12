Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A9D13C81B
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749703794; cv=none; b=X4VfP3wgzGffeORPB/uNeV/fmCq1mWnK024bpVpLtAO3XwCYiFdAvfZkbPWXiq6hKJSLlAuLg2lrLNultrgORAlARfDE9w39d3cEPCbidvBa8gKLbLndVVBUE3TKZLbhaawlEe1HPuFg42ZvB8Wae8Hc6fXjYVTur4vkpIYnJxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749703794; c=relaxed/simple;
	bh=b5l0zJoTS6PBbPqJXnRwR2Se8FSoag/vkCtGAyap284=;
	h=To:Subject:From:Message-Id:Date; b=FSUGrPcJNd2dHroBaYBTKMwQ9VpmnNcFSeQTNmUOv+W1G765USdQMsLE48XW/mYYqg+l95cZZUdpbHUmXI0sNw/E3b/Fnj2dCrcruKS19PU6LbiGU4xbvUmwi61IZNwGcvGKGeieMEKtULVTfP8/xFWUVPW9Tl6+A02dmzpQAtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPzTSMIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPzTSMIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A4C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749703793;
	bh=b5l0zJoTS6PBbPqJXnRwR2Se8FSoag/vkCtGAyap284=;
	h=To:Subject:From:Date:From;
	b=XPzTSMIYY9kcHqnVixgey24L9MG/9sZ72iYlJcIHV25O0f0MUccEPPhiXqsqrMUIi
	 jIjyp+LyTR0KA4M9QA9xBmdiIQOQIuH7u3xkO9/5m3fjFnaaIZ7QxEdB/9Np/XyJtg
	 ha4/0dvlPaISoRZsvLARk28ion9IabU4wq37l1SWfKdzekIT4iJ2P6vQMEs6MivDAR
	 TTWt6EhsOpeo5NVk1bArkrW8Kwr5DkCM00ci6IzEvuwGVd4EbUHYabr28zaZFy7ahW
	 fHwBqGipaX7eyzD5jAu/WcAR2YL7rlou/ilHtbGMyUTcflz0QOTISgPAZFRZ98uSL8
	 /FimsYyz4jbiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90506C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970379358.827.14788012094912821134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18ab76a3715e7293dda0a08a06bf97fc02f0f382fdbba8c45d793e63099b6ec
Date: Thu, 12 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749703793
