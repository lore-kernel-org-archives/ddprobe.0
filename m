Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296AF8F6E
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725500754; cv=none; b=ACo4cwNdEWDCyOPfnBKXkpftzWzw1E1Y/m/7VpW7aHS0Wr11+zpBFiU2/aDy2/JqQ8ch+Bj5DspoFLhOeiDi0VjmkTGhZga/rZv1lH7VD8+iVq9bSyMSSxQLmEjw5HFdeyhWe5/LmOLbmN2DFt4ZKFkLUCNnjTssMs/+lttSC5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725500754; c=relaxed/simple;
	bh=1utmDdKKiaSKCRdlece6tn8xpRXj2MWi3OVnLnbZYEI=;
	h=To:Subject:From:Message-Id:Date; b=WnIsxN0bZRYusOfsJWDb4OaTbKtQi+ToQTVMoZe6SF6kAi9V0hcHaJBWAcn5iIdq1penZP1EQUUONMKnbnxqfQs4eUCcvW6St3aTeCq4IX9S3fqHnU9s6a5YCqG8/259uzHmAiMooxGuv1w5HaMD3zqW7NpOimIw9w8xoZ4kKys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgi49ciS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgi49ciS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA9AC4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725500753;
	bh=1utmDdKKiaSKCRdlece6tn8xpRXj2MWi3OVnLnbZYEI=;
	h=To:Subject:From:Date:From;
	b=hgi49ciSmMKvKBD/2CZiS5iZ+NAa7KBvB5dXVB/6xyhyQAJx0pkvkwf/XKtAi6ZyS
	 K34Xqn5EzkjkkaBLxaW93aXuIoLWvNV7kW00VRqk6t30noAG1XAO2neaGa7RqJnIiO
	 iGTw1QtxpMKL+KCnUBSlJYictldru+80kdzVwNKvzz9cRH8QQGftG+NZiHz9OxvRf2
	 tOjdP8XaiA39moDbKIml2AX6FKaLb1zTSFXY0kRiIRzMoGoBpr43m0MNoXtLxavsS1
	 SOAhf7URi73nyVsuXXyHE4kkmwGVoeu6HjS5yNKO4LdRuWv0mPHUmOWYVQ9yN9lwgx
	 EhwX9F9azYqzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F60CD4F4C
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172550075358.10250.5624492181289453385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc330f9d52b4814490d5235d7aee1cf859c2eb94873eef0e191c5adae7d8593
Date: Thu, 05 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725500753
