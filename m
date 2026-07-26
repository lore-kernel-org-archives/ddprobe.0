Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC9C1E4BE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785040834; cv=none; b=h7/X20u5/NK0Ax8rZFPuuwiJIrVoooYnao60UN4/DmHXtt+uhe1rOzDxa8X3tqiVcxv/wAZFNUgtqvVjjksS204isGbEvd7c2v2MVgIumTE+fW3r8i3TXCThgNlWXg66FG6rWNcP60VfYRqQwnWx25FqH8r6PZCKsb6qn2aifeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785040834; c=relaxed/simple;
	bh=sCQZb7KY2N+Qi3T0SP1r9KDRDqjrdWWhLK+vUgH7+NQ=;
	h=To:Subject:From:Message-Id:Date; b=GuYDWMe7dlrAY0YxIlhm8VMVXW8tiVVzCAkBVPHkuqJnHcQC9uBK+KMI+KPsgA3TKFoU9bjj0ETdW3zZHiUz38uK10d4XgWsIU84GsI6oOw56N3/IEHp0uxJw1zwKe0JWhncg20rnHkDNFs+NM0/2AYB0uFgLxluKCZyHArybhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5vG75Cy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5vG75Cy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D832CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785040833;
	bh=sCQZb7KY2N+Qi3T0SP1r9KDRDqjrdWWhLK+vUgH7+NQ=;
	h=To:Subject:From:Date:From;
	b=a5vG75CyAbh/7q3Lr0xlCbJvsE9vK+85Ke+laR7WUMuEekkBP9XV+JfphlVeBziFR
	 OznEvX63JewEuLHJ2ViZDtdgLImxLjVmWke0f0Mer6leAle5evPVM8Aq2H1gdl1Zic
	 5tEPzZE7aYj0B0+vYELLg/fj0wJDKGILsUMzxAKUz278gtKV7W+49woLZ3XSm9W1je
	 zW6yPEuM4MSOh64KK6JLCt7qvWcFr9K2raQL2uiTobtTHZ8FYO4svr35nCg7cUQs+g
	 dZ6doCBhccNF6KbwysNMZNd/3c7+VHHpwoCId1VFFcknP35xEg2HJP6X2wLSNF9Vtw
	 cSqV3hf4Cqoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF49C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504083368.27294.15473982057527426994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe445feb7399f1a0d5ca99ce70c4845bdd92fbc9c771711f6bc4a30165a02a6
Date: Sun, 26 Jul 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785040833
