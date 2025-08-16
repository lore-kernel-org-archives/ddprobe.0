Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C7B450F2
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755371394; cv=none; b=oZ/OPMCi7lyVJfJE1HSU7x0SoGEX1XMk7/C7mT2rUAHu7vrtk9Rkws70bNuIc/PcRzpi1I/qJyHeydCeckzMjqkcTs0DG9F5RwCt2Y4z4TfLMlraG3ZFSboBEAgCU/ztIXWewOq7QiUihRL9ShEIcVNQVUsctskDzHWrZTSEdJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755371394; c=relaxed/simple;
	bh=mrc/oQMBEmedfLeyCFD0ZZt1JFH8Vj8df1XrDKBsE6E=;
	h=To:Subject:From:Message-Id:Date; b=rnPcKYCHwqoedAK/bQYpngvBiRjiqXcqZn+v514a63b9/2MlMdQiTVw8wqyu7yBFY7r9DZ6oOqp4uw8Orzvk0NobdORquRFI8kmwTc5e8XERbMSWdLY1rimLPcRmt5TGa3Vd5h1AjzEy1Q8Z3UHe13ePgVepe+8mleTqUWe2hAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qj0enus9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qj0enus9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E5BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755371393;
	bh=mrc/oQMBEmedfLeyCFD0ZZt1JFH8Vj8df1XrDKBsE6E=;
	h=To:Subject:From:Date:From;
	b=qj0enus9Bps/etFfCz5+/fhimKEdkDA+y4La0+uEI4YONNRMRLy1/xFDrxpY14h26
	 AfNFw4I/KfET1LLWo73eR6f28G3dDx6jnvn55cMFgj0sGq+8D2TBxcQUMMRoN7ujUS
	 G7dcKbTOYTlHdEHZ3Hfv1XWSRXR3XPBOIHs/9P9UYGgEdyUnx/8A0KA7O5HslyGa5n
	 6ZGSqCiZywmL54HG1l7dtyMk8j7N/xL5KefRrA+L1k0Bjqg3japrchTn9SULaSMCLt
	 kM/5A615oFqK+knosuf62x5cFI6tC3gFlawGhlNeGlYxyp0qQsUzHpwUSTY5LD+B6v
	 CTRYBCDWA6I2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92826CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537139357.30266.17764030831090482300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2979f2663fc13f96804e1641fff90c0420961d8a172e1842655f1323073a1123
Date: Sat, 16 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755371393
