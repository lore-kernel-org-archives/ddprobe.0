Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1888B12E4A
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725846354; cv=none; b=EhSKtx5YizJasD7obA6Tw/jfrai/ZpceW/5oDz0FRQD0wDTAtX0ygH+AnXw/S/j767LGKUJnjz+pGlHYEE3GkW5FOGqQ85KpiCOqZb9rMCVTFmsxJqCSklZFoASGe4RCIWAy0aFVwRMQV8KPplb9awHC/oj/c9tksbBJ2yViyEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725846354; c=relaxed/simple;
	bh=sZ2ie2sKUYSHf0JPYw0/JfWChs2p4Ppq5PUWtIjUFrg=;
	h=To:Subject:From:Message-Id:Date; b=Qmo8OP+fyUSMcrr8S0q0xKkHdNioAwE3CUzJjxujUl8YyB5hiL+qDgHMhq2nSbnyb220DmW0ku65kZB1SIgOWn7oQ+HbfZMukzxrN5FSReNXMAelPboW7YWxjhY8m7+uRjQfI03c1plnAJmu8IOnSLSWY9rXAkCSvUIVItmE4d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7hE9CeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7hE9CeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6789C4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725846353;
	bh=sZ2ie2sKUYSHf0JPYw0/JfWChs2p4Ppq5PUWtIjUFrg=;
	h=To:Subject:From:Date:From;
	b=Z7hE9CeFyC29Fu7NTcfJ7FLti/17iRGE6zWMUUHIFaxHn6CGuBSZ75eey2pRUjLIR
	 iEBeuNN2wMAPsG+VjlJy435ZcwV6bvbgJuGb7VHgcAFckB0rP7+Bs1UAueGcdhXSq+
	 qgEfszAhuUNCgYn6+3ue3Ygf3u335JAdyN6VfJFLCGlR7RhikvNQpw/VFvgS4RjSOc
	 6BHFRxBIgpr33ePTM5Hk7NLUPalf68lX2ON24IkkJjQe8RxeN7WIJavrnD7ZdPY0+A
	 QzE1LrHBQn+YWlAhNWE/csOCMrSyanyn0z/pmebQ2i8+Tt4Z3fcVTxrUsuQBW9kyH3
	 2xodppvqeo0gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94343ECE577
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172584635359.25565.4001317190349208933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4ec62eeaee9626cd33043e5f607bf1faff6bf0ca350c97c3e660dd10afc2d9
Date: Mon, 09 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725846353
