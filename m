Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D95747F
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754352595; cv=none; b=iFBuDNmhv40MagTgDwox+NEyb7RcTTe6jrEVbymOi/RaynsKvyj4jf7cWw51lveJQYHkkZO0lQ2JK33deahPHiYWwfTpoqwISXJXiveRe1yxuNLeLObPjZAkvV9G7OeqeQMlIMe0llBKy5U7aI7L3LHVaDtVIUXz79d7jsT0kNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754352595; c=relaxed/simple;
	bh=WsALL++Gta2nPOVHy6vBihHBRJxMp8ix4b9gaf8TucU=;
	h=To:Subject:From:Message-Id:Date; b=X3SO7zbEYXqC63OTQOvTaQzJg9pS7klWSa/SHdWytt/2OgJNNVmPTW10OUwl11e+NNLCGvaEai2Lk2N7NUmH1myoMppHNwB26r4TJvxyVcMlZlv+rO/jelEm+J/VCylbhxWAK3ShnvmKjeBO6LiDdwsm9K6bEyNLhttJ4cHFeLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOL3MQmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOL3MQmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA61FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754352593;
	bh=WsALL++Gta2nPOVHy6vBihHBRJxMp8ix4b9gaf8TucU=;
	h=To:Subject:From:Date:From;
	b=dOL3MQmJPoq7jUz+OMC+CV0hvCzkGUgjBsDkNrpVduyntBDDGQr66hfgfEkIDr1IV
	 fxtIL7CQV6CeAbVf9tUiaHQ9UkCw/1HYu09w62kR8q05vzELBTRdjkiAmShEtiMQUl
	 5hT/0qAdRGt5+sqScuDiR8Rd6p811HsUnoanOjviO7e/cY5qZtM4E9Q11wO/ycVh0H
	 9+TsypWg/Z4mUizg7bmyED7vaT39r4V/481Gsl44lUcRMxCQk+KH7JOfhVet5G/shW
	 Y/4ngpHiGegLpF1PTr39DCsW3F75Nsj907xAn4mXiztTFTe4JOnOz9O9jDsGQI8CaS
	 GfHApcxs3VYaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D34C87FCF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435259357.25589.11872624752395597516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613375b24d9a6d611f11832a62b7b5ba2ff3921bbd798c45d92ade06506ad1d7
Date: Tue, 05 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754352593
