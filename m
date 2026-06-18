Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE5F14ABE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781818594; cv=none; b=ESQ/P1HukUIxoveOhFVQv04SuKITiq6c42+9TylrwT5rcuVlMpO/zR7bIPKaC/HFM0xkPgjcBcNLas542TsGSHalQqZ/MUDmesR4usxcUXrBkzWp9ZP9pqaJ4qzbRzawSkxRKIXO1TMc0IfR6HqBtZZRBvulISwjpFOd2PN+0QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781818594; c=relaxed/simple;
	bh=a6VleH47w3b1XJ6egYksSUmGAONyh6xrTIx0oJ9L5xQ=;
	h=To:Subject:From:Message-Id:Date; b=hRq3yCtg348YSKRq6aQogl3KpEsUBOqjNJNpsYPfwZm3CktT9xxpfBHtpa2rhR6kpE6hiEPCcbQSBSSB4mJhjk5YKYu3AOE6yBjn72cxDZAKDKTDpcjTrxRgawSLD0gvPyPHhjyFQnuA5KBteyr2KRwnn5+gNy4+b4pVjb0OnKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaQOQOJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaQOQOJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6417C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781818593;
	bh=a6VleH47w3b1XJ6egYksSUmGAONyh6xrTIx0oJ9L5xQ=;
	h=To:Subject:From:Date:From;
	b=SaQOQOJLTD/Il3PW8hlNv8AvSnHOu6oN29QElQsa/qO26zOZWQTGGquz1tgoVFYUR
	 2zv0m7KzDt454skZLvIASR/qcLbDt8xo6qpbTEPzhU/WxWW4SPpwWxk7+XU7Oa1H47
	 xiSuug9mcccrfYgnXOMDH9ENa30W6/kIpvLKxgj2e/GnzTxLb3H2TqDX82AjVyOJ9O
	 feL25rm1g0/OpifczzCod6SkDJ31WQxUQBAdIXTvjpZpZnzyoQrlOBm5rPI1yHFa9P
	 WVXogAq8lN4IRzWW7Cyv32+YvN56ZX+CnQBujLbm1H+foxM/t5kRkb2LOYhacWEV1I
	 qxhJQsxiSnJVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17B8CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181859370.11802.1706052009774725729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17b3f5d47e4a45941e4321e5ce1dcbd67392e33b24824f8d215b927b3314dc0
Date: Thu, 18 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781818593
