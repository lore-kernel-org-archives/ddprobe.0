Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C01112DDA7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708001297; cv=none; b=HnXJKEkk/BJS736cxSZU7P8wtCyl2tsSBC1c4ZQWxMOpDOtb2j6icOPwWNGsNx49C+h/yQcqSdlRONFjrXq/So/EMrlIp2Ah/HO2VUH+yNOdvHL6UYMBqzcLG9WvAFyW5Fhq6vdrsDQoDP7+2zQKDA2HYdTIaLx8Cp7V0QqbBJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708001297; c=relaxed/simple;
	bh=GENVwS3hDzMRQF4RKAKQry3MdsBKAQGlh3GBm0E6WJg=;
	h=To:Subject:From:Message-Id:Date; b=g42No/BqGvK5OJ7R1lvEtd683lYWsY9+K0M7T5LbwtHSrWEfTTuEFM7pabbjj6T+1aoEcerq093uKO1LSsMR8oXAzZaM3TIdBnlKrxgeDeavdPUV6v/EPBmFhKln3EzUlkd1F1x6YXlhp1LrNVh6Vea89Cp7SCuKe5nIMayXgN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOQoqeFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOQoqeFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92E5DC433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708001296;
	bh=GENVwS3hDzMRQF4RKAKQry3MdsBKAQGlh3GBm0E6WJg=;
	h=To:Subject:From:Date:From;
	b=uOQoqeFMSijIkl5Mxke5fzYspRHbRfE694UZfmPZ87B8RSiXv8OKd7rFY/Gw0kn/J
	 jlCMAuyFZe7UU2oAummJlWra+IYvvW5zoe67PpW02zatOy+St5TcdryAPmlCGipUwC
	 RCMcXH3zEOx6wjJq1dSWrFLx4t5PruBzldXwjcM+LICrQt5KdEZlIO6EDUSNun1AR8
	 LRM5Q6opoI/zYyqzYejtT8BtvZEK5GrU+2R84hQQGGRmWSwW4a6x1HSJQE3VZVbqOX
	 GScoMYnzxVtrKefJzSow0Cz2fvxZ61yz8gbcdqmmXZZbDuKFZRyA3dMnIdWpQ+6CIY
	 XF5AwB4IgefyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75DB9C48BC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170800129646.22936.14089152821180187558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd9882e3bcd562490506ac31d3022eae7aa137cda94dac8705e890ea6e12d95
Date: Thu, 15 Feb 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708001296
