Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2092B17D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751075394; cv=none; b=Kd6C2y3nfh00xHuw5BVzfXUDCzWwqTSX1DMo5oK8CRUUTqTtUvdeSV8s0uhVs2o4tEjUOpteEwQgMqVnoOpINtZ+TEl1W0xZpw1pccUDLtbedqC69OnO6s+Me6LmhuIS7VTxW4M/2G/wcf9rfXh40ekK2oZRR8OQELHwO1Rk2H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751075394; c=relaxed/simple;
	bh=irZNeNU4D6th+Rl2cyphG68h9aJrqfQFilkY0VgflNk=;
	h=To:Subject:From:Message-Id:Date; b=lpaf69unJwBTTD0YigfRlbY+xnbWkKVh6xleNCl8VeWbbK9PBfsjAuwP7z29jqZG3paG3jK5TEWBD5axrbDa70ZBdj9J/YPGvEsgtdPWd25wC9DZxfusT+6SO9n6rG3mssbiKLaQoZgLkswo4YRYtx2Z4gw4XDlHILGLfLTL+i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SY2GpePq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SY2GpePq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A5DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751075393;
	bh=irZNeNU4D6th+Rl2cyphG68h9aJrqfQFilkY0VgflNk=;
	h=To:Subject:From:Date:From;
	b=SY2GpePqfQ/XFUn+7hMnpGiQnvvoj16bdkBDZBXKSFGE86vtPGyfIRBUSnbfDcj5i
	 WtZbJO1OY5kjF6DQzPQVV/2vly9mkex7rEPGp3PJO7/J7j6tOzpsdDF3/hQNp+Gupb
	 Rckq2xnzgPnLZ+u6nEacnMxn60oGbXc+A7314JLybesazzNFurxWZ4qCZAm9eEf+PU
	 TkCSuTYKTGWBpFZmn8uqMYR6ICqStTInRzkaNiXvnYbqeREPQ0kinirSJ2oUTAg0am
	 KxfV9Oxhw1p9sVd/ZpNtpj9oMYUT5ujBx5lECfv3OvN1ccU/xQiGqMVROH75lygV2F
	 3Pc9MRkTYxhVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F42AC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107539361.19883.383548500293008130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe02b8631465a634d28e430d8cd7cfb91b8193958fa24df423d3354c3ee8373c
Date: Sat, 28 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751075393
