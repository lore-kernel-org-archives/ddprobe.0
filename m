Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F35A1CEAA3
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742986794; cv=none; b=QAkRDQyOSEsC6qZMJrnWFswsigNEE2mhPUWlr0uhlALlQ/Y0/AG6hbT12fJszhTF2/midy4ss6tEq3rj14LlHOCHpKyXOTgWzjJ/0FijWSS8ckzfCFPITCLn4DU1SjO9zig3E7jfrddTmO2dac+TTR/iDGD2KQObr//8YEDnYNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742986794; c=relaxed/simple;
	bh=q3DqaXLbUw/IzaoaSMuOV+ZN3Gx1oxZZsXBuYKYv/Mk=;
	h=To:Subject:From:Message-Id:Date; b=hNP9nZ12qjLgq/cD8+iMhLEAA8rphfZ5Qd4e0cJ8uinhwfvylUtrEP1tEi9Z3Md4sKBR7dZODZRjpLGv7X4rKHFQBk1vIqfaNAgPJ+XK+7ATEkqgsEvoQk2+CpV6j9cHLmWrY2Lt1kbH68EZsIDOspj6Vu3o3/l9Pw5RjFRVjfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJQYKRe/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJQYKRe/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE056C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742986793;
	bh=q3DqaXLbUw/IzaoaSMuOV+ZN3Gx1oxZZsXBuYKYv/Mk=;
	h=To:Subject:From:Date:From;
	b=eJQYKRe/+hO2D7s+++CqHm70pkIjjA//GFJ+3+nVqyrzFt4HTd2sIIrLix0yO+1pF
	 mH6PJsHfoGVHl+KY8/HqLr3Qm77s7nfaTPOy4VUESPCC5ml0/qceH4abBgb3t5qHkZ
	 bQezcfwnJz+/T4Hhsk/DZySODNo0BwlQw63Bt+2GcmuWqpMxYoHyFq/tLo9CoQItTt
	 UpOaiFtrUcyNqmRiLCjnb+NNkCp69EIXAwpDBqC/AVZ70aFoZhuPtcYWGYOP4gQypC
	 li9J9z8SuxQN/Sx+p8sPTaihGFJ0UeFZSkXJ5mGo3ev4lZIvcmNmGdTIjXosERulhi
	 /KEDu4qlKr/KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C977C36010
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298679363.26683.16787582293975664015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6601c862c9a6e932da4c35eb1a39b2026e6a95331ab6e29e4c3ca5eecf55b46
Date: Wed, 26 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742986793
