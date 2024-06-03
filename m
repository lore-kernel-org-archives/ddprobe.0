Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A87E135A6F
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717434323; cv=none; b=WvsVePuZbw+60gKRYF7iEPyvPJ6IqadJR4zBmpZirYF3BVPqQJVTldtY4X72HK17XJLwIegJNETGJk3GjqnWGofDQWKTbuWlt0fbezzfyz1PsKTo1Rr1iQVNKGJOduvIGSFpUHxCRXSVF4m2ggG+myl1+aq75HiWx/W3lL7XCPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717434323; c=relaxed/simple;
	bh=3V0XqctOu0NU5IPxcXKebouzevpuOIfB+2TSeaHkHVA=;
	h=To:Subject:From:Message-Id:Date; b=jcPFtGtzmljlZwxFn+4CFpRYmpxCgjXpJ1rTlA3PT9UpckManNSH6MeEovKKW1pYqoPCSie/HjpghruWinwYXQiUZDtOvbotg8g5rX9pNNz+U0oJg67ONfIWqRtF88yyvUErsaSfcoO5+7wPJ6asFhVA2RiN5dHqSxVtltYUA8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVYAeSjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVYAeSjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE402C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717434322;
	bh=3V0XqctOu0NU5IPxcXKebouzevpuOIfB+2TSeaHkHVA=;
	h=To:Subject:From:Date:From;
	b=eVYAeSjUHbrEBpjKNCQUqwDdSEceOC5gfluzY2/ImVMxpHb+o4PBf9ob7FpgMbewI
	 3JjYBF+HM3M/bhXD+TyBqin8UwwzzHqjhwfQNR5D8OozChVcDnepizayoZoE9hFebu
	 kJBJx6y4k+SgMZ2bVaKCD9Y69/msZmzyd+ichtKsGZasRMm9sAwUO4mtkBScxx5l1N
	 ZXWafjDoaSmkyhpm7po9rrvIwUbkFNp9V/xtVSR2uR1oywpUdDdm2GR8qHEKXGAec8
	 n+Wo2gr68z50bYfXz+6diKR/LG5PZtqe1nxV5f10mOgJ8MzpQ5squTUEeSlyg3vnAX
	 auDm5DaxGATeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF37C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743432277.14355.16973573710110047236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c53cb95911d5a8e6ac779cb03396c8652e8e14ac84b488eec580e01d5b185e
Date: Mon, 03 Jun 2024 17:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717434322
