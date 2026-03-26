Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF1A39B943
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774503894; cv=none; b=bVnAxYPXPjoDDkaiMxZnBfiLdvhcFLk5lu57Qza56K8mJqv+6bMXTiZ1XcipRdPo9Yi7+x/D1sUpzze8YrHKYaWKRm38eIcTAQ5CZ+XG74TzpVGxoGrvFvsfncA+G29itEYJ9MOP8wTlUZrhTFjm9PsWhAV2Le9NomjJ1rtcfHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774503894; c=relaxed/simple;
	bh=ZTYJ2JRE3gTabhlnLc20GSFzZvzcnNAnWzY5x1MW26A=;
	h=To:Subject:From:Message-Id:Date; b=O/7vqlZRCnigDQhu5zV0Up98WpVXfsazXey1fyX+LsHhLYBlkinQrZsHLtSPgXtzd+jx1xMuTvH9xw4R/jCnj/gKXVQKOkjj5dOu3/oFPp3yvcyFDGF6DzMMZFN2MZ8sqfXPsCBp5WWPJs9ZDHEyU2sU7KGBI3Z3gNUVyb4M7L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aF1l/Egd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aF1l/Egd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B91C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774503893;
	bh=ZTYJ2JRE3gTabhlnLc20GSFzZvzcnNAnWzY5x1MW26A=;
	h=To:Subject:From:Date:From;
	b=aF1l/Egdg3R85DIB0SgO9fciQMuHPkTBgX8AYReYAX6CFZYr+5UtpBZOyKCyThni8
	 Aw1UbraqCd6QbjHeW+drNR3cYjtQjcDYW9Icyu3c4AgRKaj71QcoN0Ijf9B+6BY/0a
	 y6fQLUvrLEmcUOOHsJG+13vGqSAya9gTsojNwrhJ7kp+7DKXanoGETJp0MmAiA/ucd
	 AWpt+jMniFFCgtmmsfPvIb7Gxf0UqnB5byzsxneXnNmFpFehBPrLGpdkJ73Rsqm/At
	 xtzIUzzSrxLlxtb/nOnmdlFQs3c6Z/K7VOAPVVoN1zW7U292dWZV2fUJYWsMgBovNo
	 X2Ep1sgqHOEXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9301B109E557
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450389359.15656.10654830348842380552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8097bae68b0c780e04676500f1452ba346e56c92ddb664ec16cf24593065199e
Date: Thu, 26 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774503893
