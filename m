Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED42F2CCC9
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751287794; cv=none; b=LfNwTVIroepSf7Yo7GnAla6yzmWucn2oXN/NqG7YUnxXdxsECPtWnT4ff7EMgKWGfPhe3dGw9BG5dIX3f+57Kluu4nFp9QG5z0tBbmv/UnsC325X1C+vA2NAYwl6sCRKY+9CVJDaqmWCbmRXp0TPUq9w3wNZOEgSX0fBQf1N4jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751287794; c=relaxed/simple;
	bh=xVX9SE715vMiIRWprtryej4x5Cj0KDX8IwyukvP28fM=;
	h=To:Subject:From:Message-Id:Date; b=n1X0Zz6BXtu0Kq1ZXGRoADbOQd8/vqlp01F2RoGD+2HTk4LbNxVuvJwmkhSrt+CxdBxJAez/RurcCR4ihvfLgIoTGPoOeiOb81Tk2oEMZvBgMK8mKVV/trP4G4WhWU+qg9zdXmUXbg7dTypV8L89eLrEtgSRydjp4Vtls/wxwN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRkP3F0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRkP3F0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FA4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751287793;
	bh=xVX9SE715vMiIRWprtryej4x5Cj0KDX8IwyukvP28fM=;
	h=To:Subject:From:Date:From;
	b=aRkP3F0A2UCXA9dzHMDcZRQRF+Z7Y1rqS7JMt4qGO/kQ5nFCOe6G9IEcnmJ9x3ETB
	 x39mhiQPOpxMc/nCnNN8ASXLRjSthlhpHbT3fgWwzDuhRgD+NnNCfYaKryasEYEZ1f
	 55PrzErEi/mlG1ElgcrUUrnVPL77pQKtGhnCvcefwAvsZZsxvN5zW30HrZrwQto5Yo
	 8ExzDh89RrXTKmy/C1aX8jezxmbROY0gB1dCG/81C/5qMWl9S6+YYwSYzmy4h2zVF8
	 uwv3ZVUdIQ/Bxlk4920StfZtxQFHXaSRdVkc6AqOxgpl0vE9BZC8GQnX8jxJKf4ahX
	 s60IisQ/3uI6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0B0C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128779361.17820.11054313978224754108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e96f667c602890faf01beaad9203b051cf2bab0510badfeb4f47cc69351fc9
Date: Mon, 30 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751287793
