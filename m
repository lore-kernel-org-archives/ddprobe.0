Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66573D2E5
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717788443; cv=none; b=Z5dZ3uWusxR5AgIa5uRxu/fD5C2Har/HyOsEvmrad9+gKo8cukSNQAKJAIc2KOTQ8oxnq6GbqbSYJopWA6+VsghAmcPzfNoWAZlmhUtUWXGeZn/NOvI/2V+43GM2QQkEF9w0i2USpJ0GP+mw8o3APJ1SaVsh87Cp4oIMwUWO5Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717788443; c=relaxed/simple;
	bh=s56WHm2cM+M+2lVKSqQNb1KIRXUvq8AvbaZ8Zd675TQ=;
	h=To:Subject:From:Message-Id:Date; b=fwsjFzohvRtRd/TPsAnAen2hcbAsnFrVQ25utdcXdHf57p2RwTQSeWhEyhoy32Kv41bux0HQlFBp5Oar04M2v183eYTykdMDdya/KShxXrgjSg0Y1OSgS2mj3Y94untF8qyVO9S7KQcwWt6sxSkOKTjVzQTosP6fQC/Wymseqpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZcjQ66x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZcjQ66x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95B3C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717788442;
	bh=s56WHm2cM+M+2lVKSqQNb1KIRXUvq8AvbaZ8Zd675TQ=;
	h=To:Subject:From:Date:From;
	b=CZcjQ66xWX1wN+8zhDus13QBZJ6bVrSN6bxYKJ2kWOZuNoW2LJiDlIUB+LGLKYuEl
	 YdQ3JHPCA0XsOqu+BeDdbc77Qvc8JcXp/1GJG5M1HhBkIcs7caJzs4pO76FFGuz2fP
	 YfSzNIfwDJ4eg1f4YV8C3Q+a94XQWKAV9idJXlqGEPVAHLG394I6ZBivf9sJpDjvSv
	 nMr6T01R5x7dDcVD31cLYpfwXkEnQ30UOtaKOXkECCCMbayHLQvaxWLyUgc6UuLSPT
	 Wae5mgylVVkw4s9ohgdzMBkF4n0evU0Vz1JgtlS1JtsXE6fFEJh71oyMrPOXuv5Vzk
	 HDmxUG1T42idA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9074C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778844278.4881.6646815928884628128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082be5c7f0af6bc689efb952e036ffee2110eac7e932ec755c49ed25a75846b9
Date: Fri, 07 Jun 2024 19:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717788442
