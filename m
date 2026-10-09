Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E332D5436
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791525034; cv=none; b=F6mz23AEgCwFVhgXYGXnZLMimvDs6zybOFLBFdBBDd+ULabmbmhbcVkfHsQ5VMPIeb1da5A5kDWiFwKpZqthiEGcBiDBXW871pB/t41R15jP2DgvM3Vkc7DF6YaNmhBxxdMhdNUgGTEOLnty8JEjFlt4ZfiCsTcRhEvP/rBOfoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791525034; c=relaxed/simple;
	bh=uju39Dr+hmC1oXdLyUCoH80k5AczB8rf45RVJIcBUKs=;
	h=To:Subject:From:Message-Id:Date; b=kDsWnqJxei/87xvjGRihFk7J+gb1gmBjMNFa8jmWFEB84IisC1MdspfNkIMn59CbTCeCcXDbnG8vo4mT04Vq/1GzfetKRy9/KCf4sOYm+a43YY09fg0eTEoSdd8F6lOj3KUj5LbW2Kuwz/DoozT/mZXWCtEkEEcIf/prRvxBeAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL4oiu+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL4oiu+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12ACC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791525033;
	bh=uju39Dr+hmC1oXdLyUCoH80k5AczB8rf45RVJIcBUKs=;
	h=To:Subject:From:Date:From;
	b=XL4oiu+RMvngH/WidpBuCtSyydo/+zx3weUDrW4CHz2fdQkUSvftzMl2jIcQKS+Tx
	 0bje5ODNis4ts4eTUKE3/CT4GaVMT4h6+ZS71kN9bPPw2F0kv5bVWpUnwnpc7JJS6E
	 Ogs82cYHulTpsDxNkDfybkXxeu2Lkj4wn/W1F04awj/wESw9Z5INovIeHqXF1hKwOL
	 PZv1dJkRT/1CCr6WckSnFTlwfRcJmIWZvuLMjQCgUB47B9X1mVuRFAuypWrSer6Cc7
	 M+5+Tr4R5GrPjPaEOCdGHORncQISsOpEtTocOb0I3H/CKWj4CeOuJu9Vq7k1do1DVF
	 GFzaymcp0+LUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD785CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152503370.11991.13377070133920200755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86afd38dbb89f0b925a24a6e1787e70a9e3dc2c0997e2c35af39d01137e158e1
Date: Fri, 09 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791525033
