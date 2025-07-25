Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1509723F421
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753475995; cv=none; b=Bic2AxPXVxClX5wvLEbPryvGnjxKzphXc9gke9WwmbONLMQzBioWyuQjxVFzH4Q4/pIqJtCSndte/qYW9u33SguZTvaNGap3ljgru7JaR8zQojYcNQaeZWfWHJb3qoZOvfUn7sPDNhg5EbtHFDoEh7piFSfY41JCG36jO+wd2Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753475995; c=relaxed/simple;
	bh=Ouj0NlTBlp6yh5lcl7Bm0g0jUirIYrjPsiXlnFxFKBI=;
	h=To:Subject:From:Message-Id:Date; b=YSnkLiwyd9TwI6rnEQo76qxO7czThMgniTNi2F7N/l5Ya7ZqOL7wGmC1h1Bf0xDk8+Q9W/Q3HZS/NH66JEN51CLOfGgrc7FUWYnJ7S9ZhQWsP36YAvbA1CMFgqtWt4cUgwQsYX65YgOCcLvZOQDosNQrPVK1I15jpDKT1afieGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VywLh2JK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VywLh2JK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E656C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753475993;
	bh=Ouj0NlTBlp6yh5lcl7Bm0g0jUirIYrjPsiXlnFxFKBI=;
	h=To:Subject:From:Date:From;
	b=VywLh2JKSmJeX/6biAPMwiu1gs956Sbtoyx0cMnQhvfbfdxcgOmdQCTAX5EXkdlpJ
	 e7lr6+jDHUBAGHDDA+WFi9UiL3JiXPLliO0m4FQibYRkcbNYyM6hGgMKoq3TPDBXlP
	 +ex9o30etbU2Gz+HyE2KviFUCOa8HG8Zu/0m/Jdn6Z17VLuhjmn8F+RBsaF1raZgMd
	 KUCNNLbhGPzdGa/UC1eDOzu4hzfBFZ1TRQ2UKJ+It3uRD5MXfzuHTogU6Hub34Wv7T
	 kkb7DGO8CnRFEiqKfE+Tozf+gjSJGDZd097g3cp40LvIjMeguhZT8mUiPsqh9BoStN
	 eWIqp0rCJp/FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD9C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347599358.3689.16864387906419464462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b09b5f44eb4c3de6ab98d4c793a3c80acd0e26f3640f8c280bb50504d67196
Date: Fri, 25 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753475993
