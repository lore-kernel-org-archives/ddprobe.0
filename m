Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0539410785
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705766297; cv=none; b=EsX/+HmtaWb/BLNz2sh4IAnFGSb8xhFprEUltroQDZ6BcP/AO3QkK3JGD2zdhR3rQVHOZNBFY50vGxMJfSEegnj3n3cIO9hAnjAr7Vf42GiDXMRoZKZrGvmzOoeip/1twNkcFhYvfIYoW7tHJV56e5/x8YvYnotl401ZZAJafFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705766297; c=relaxed/simple;
	bh=bVLHPWny/R/Mqwwabaz9/1CJHWiHLD/ZZOkqmvmfA1c=;
	h=To:Subject:From:Message-Id:Date; b=J9oubnPXaDbNXEXgviaWfHwF22h3KkA+a0AaRH+D8rWjMb4p/PLN6fnk8r21LTQPZ6NoE8BjiJVnToBAUeVZbLvspAuvrax2BNlJIgb+MhaoKvBpYF5zmlBL0dwrhoEyPHn7ZMMzuG7o7pztuSSn/81hTUGytWd9P/gsUPS2IiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOqn81mh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOqn81mh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DA2C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705766296;
	bh=bVLHPWny/R/Mqwwabaz9/1CJHWiHLD/ZZOkqmvmfA1c=;
	h=To:Subject:From:Date:From;
	b=XOqn81mhcb7adF3VPV51w1bRNfibJp9HznLt5tPpSop6Jw0mo7of7MA8iirhTOhYs
	 E0WuOx3rwESh28Pdzk46F72H0xuchItdAf0WmKU64wVvDOaf+4755gGiRdLXHV2dm0
	 2MNL9p75CA3ZFeQEsuXdYCaw4U6xA4RrVDD6mW0tyTWeVn4iznWBNYA8047bQskn42
	 dycdi2oxQjzF71DiL10g9JwFksTGE6OlLwc/rvc2Jlf8dsKxm3CT33xx6kEJ40ypr/
	 SpbYc5JueK2OFkJfeluqLYpc3WoNK/XnCZk4hMmof8txZc/L3mGKSiX93iWf7rGXR4
	 xh8cc+LVr25Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B6AC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170576629640.11451.9835571867877802977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3615baa02041aecd9809a07ed7d02cd30940c11cf3f8d8fcc10b661f189ab8
Date: Sat, 20 Jan 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705766296
