Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B968182B7
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763676714; cv=none; b=lO0v67Cc8GNLA4JlJc9Gkq2hhzG86WAQUITgcPzKSiNAB3NA+TOYCn+F74CRkdhyBtRVoTlfgQvBbMdM4acQytl8NQHWV/IzXGrj3LyT7Uwk4QQDtnduLqOtWAYsQF9jfaKOF1qfdCpQmdT1dhalqE+anAgePJGb1RAbWezgXxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763676714; c=relaxed/simple;
	bh=69rwxV6YFmIr1cmtozjKv6O6CCMDg26ZZJuZwriVpE8=;
	h=To:Subject:From:Message-Id:Date; b=CGKjlmwfjErqIQUnNGgcxruh0GFRIatbt7tKJzqqwhfiPDu/qEQjoYp9vzhO8CfdrNOhyEhDSg9y+MVP8quH7dhlUFllGqd+3DKgsLDXDr8cmeAOrhfEH0SgFI5wEPOLV8Td/572Sna0wupVWsKhQPfceaBL9/GS4m+uCllTYtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o70o82R1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o70o82R1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A8C113D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763676713;
	bh=69rwxV6YFmIr1cmtozjKv6O6CCMDg26ZZJuZwriVpE8=;
	h=To:Subject:From:Date:From;
	b=o70o82R1QTosW3MKsHtvNpHSsJYVWz/k8tyx0EFmT8VoZ8G7sSB8uLr9SKXUK623N
	 E3ZmyRjIHLnA0pO5uzpKIHUi/CK87V0nrQ/Vb7qGl/Pp0trIZdPPQDKIdgkLlA5csp
	 Ac5n6BcIEGfDBdafnDgqMah91tlyKNge60AMIcFWzT6mvoTWA2GR+BvOtMTzqtWz/R
	 CsHuBC5HncG+9vAuT3PErVkm06uSKeU/uUjtRu3GUpd1CWnafJzOrnXBhku8PdXYoR
	 ScXJPnR9mVEZZbwTfj7sJ1rCrZ+hu+HROe0ByHsBiI33K2NI7r6Ky0Gf6QZAZ1BWai
	 VS/UBSYtPrQpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966AACFA441
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367671360.31161.13627579453526485931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706457631c2b7c54a5c2d3204b426da369be1605149ce9e2e3199065ed569351
Date: Thu, 20 Nov 2025 22:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763676713
