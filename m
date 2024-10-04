Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206C59475
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728017154; cv=none; b=Szaq2xZPFIMjqel9RK1g/SEhNq4zFnPJ09JSOC/a1MrbtkZXfGTxAcIT2NAprFf6GOyNAVYiJo95cxeN7NvRTywcTyigQYx1Z4sTKSInih1IbUZvHdXw3y2PmPGJMTt1nbTLZsKyARcRlK9VqNmPDRWXBF/4QECIJ9WxnUmoZvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728017154; c=relaxed/simple;
	bh=hTzM0BocjQxoQHvm+l839q487+zUIqbdPdE09WLLCW0=;
	h=To:Subject:From:Message-Id:Date; b=dmVgAyIxM6DIvW2BCcpII6lESDKcUPbjNP8wjenq9A1QhdbyoVXstwD1BRjTXYgGPPjnt8hVwDMzlG2ciEf6hj0qGYyU+URnu+n0RfPfJhARqpC9KV63mtad6PIURlThvFkiWz9irxM1puaJ6I7frpIyLkFxpd9IXOe6+k3Xiok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JO2F55RS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JO2F55RS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89E5C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728017153;
	bh=hTzM0BocjQxoQHvm+l839q487+zUIqbdPdE09WLLCW0=;
	h=To:Subject:From:Date:From;
	b=JO2F55RS7Zuyo1CfrxEmUtNySJzEFrXrWt7Cr294tVvKTLhVubs5U9laL5G+ZtsK4
	 vLS9SdGRsBsYizmAxL3gK2zmOs544qlUmdM23ew4iQMBUdK0wd68SdnadZiQ6UX2AM
	 aQsjHzWj4h8RGaaYgxgPDiG5uABYZtrprcyyCKT1RE3AgaZNTXw7hitqS5VpmzUV6A
	 5qlrG5ovfdDt6OLe0eOsTiiGEF9HvA49/pbjrIu/vjgTppijpM7fZ5hRO10AieNQVp
	 rlM7zPlyU+Ot4TBo46zMAb4b7fJhhfHJkN4NkswSVNcQFPZiRYo93oHyg0bq8GXA82
	 naAaUP4FpJjKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D08CFA745
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801715365.8210.9016271778680890366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5fb5270f54d83deefbb084ea28ea0b6f16bd03b84b4eeb1640e8179bc5f12e
Date: Fri, 04 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728017153
