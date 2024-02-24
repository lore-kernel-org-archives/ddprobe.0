Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F9213FEE
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708807097; cv=none; b=RFCfsjFAOYVSgWy2YgYpuX/Heqs9RXaVgcknFcU9UU3NsMlqWEEukj2tUU83iY2w8QChGul59M7qK74rcQuUVrRrOKG2vxCm9xGMhsYkGJTx3feDk94qUvRECBpjmFvqBVtcU7wysHr9gdQOrg1d/VW6HULjHhEdMN04wX064Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708807097; c=relaxed/simple;
	bh=+FM+spzDvjq8nBLq4VbXscrMCY506fhpC7U0o2XsJXU=;
	h=To:Subject:From:Message-Id:Date; b=TTQHjHIELI8wCih6/I2AADPG+x6xeKTl+9Aikc1HzNyTj7OyhjUpeM9viy1N/DuNhvNtnzNrpl19ukuKWFQ0pUq2psM/P96IiJHAO9zi6Jcaf/EbQwAkW0OAG6ashcZ7LUoiu7OC0eyaP0pf27gdi8pDBUpds2lxGO3xv8Gjx38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWQPh6rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWQPh6rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E55C433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708807096;
	bh=+FM+spzDvjq8nBLq4VbXscrMCY506fhpC7U0o2XsJXU=;
	h=To:Subject:From:Date:From;
	b=YWQPh6rv5FlnqMM2ZssSPmZiuPD02Fh57nArnJV3zTxCR/W4ITyxC+xgzoNu1QiO0
	 El9SVn5KIwpJgLdWpLBo8U7X73fVJ2t0a1/81gEGgsHIA0HBPQFlRhtzUNX187Sy2G
	 Jnr2Vm3J70mzwH/GYR1WB5fbaaRUq/Mz23ztcssU6SMH4CaHsqDmwDVEzsfDUwTeYM
	 4xN2fcL7o28gM++6P28TUJiKDTex3MKbvtx5B2jy+Bw7P4NsRq+YuNbHnjUvqEqvqH
	 eY/Gw8HpN4BnhSw1YWVU5K610ya/VF6wUXJ3kAux8mHsMkXYGamti1IvKabywCzfD1
	 oDMTuQnOPpPqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619D7C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170880709637.27559.7856659669515496140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1bcec964909d9d2c29841a10b955c7f8a9d17cee7036c303b3b74f156d56270
Date: Sat, 24 Feb 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708807096
