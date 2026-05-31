Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C61714BF92
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780213474; cv=none; b=UzY+gpwG/2M39yqHa+cg5kLILxsti6zxzz9Ce65lKXYqhTVTkRjPyogl/5ZP4cafnHPO9y02+Dp8skyZbNAEN8G6Q//qErmPQJPFzL5fRPK4sW3TLbVbnz2HeRKEFE6m8soecjRsPs94zpzjRfAzacAZlydhh0vwWOBc8HtPV0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780213474; c=relaxed/simple;
	bh=sFp/oDivkdmtJXlNkeuyuafT/Va0PamdMnrT5ujB1XU=;
	h=To:Subject:From:Message-Id:Date; b=tS8rk0rg8TKhIW9cfvQsQVKs8hhYqUxWilPsuTVaxszVu9KzfDh87Cz+YldcOJDXj+GclNLxFBP6O4dvvC5XhBr6LSoJ7LTAw0WZLk3W9g72jWTAFqfpBtNwGZgX5tVgFHoqdK87jatD+TjLMOqC1GFOR1Of5/zdqyuaKC12svE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFy5fAtk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFy5fAtk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB4EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780213473;
	bh=sFp/oDivkdmtJXlNkeuyuafT/Va0PamdMnrT5ujB1XU=;
	h=To:Subject:From:Date:From;
	b=DFy5fAtkKgplNYuMZqPGQVkfu6Rhs4KiRCmQ5rlTDfcG2KmmjgrGv7KASd6ar/hkX
	 D+Nvg3fpKYOIcsPUHXwe9bxNFwIl1BsQvTN9QZ8vC/G1qGEhyINa62HiHwC6U020wQ
	 CUtASXPAfVFSSIKGUhAGNVo/7TIbhdUK5n+iDN0ouU5HJGmUPCXpZFv8TrnmLC/Wkn
	 HyjdQYAMxlcwClwT8Y8vJd0t057246VLlZUl523dauL6i3kVenOngPALyg6Bk3NogO
	 DF25PH4sWRKTTsEY+PxHC8YyEfA8caDqwo6mZO6fhp1xpPCBarOfxMMnUfPnujaIRP
	 vfMukgIF2XIuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD76DCD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021347368.3498.13929537466644758023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9959e51cc5926d62bf2c0d2f1940c6f1bc16a1c2f96cd9ca1a485ffadad57275
Date: Sun, 31 May 2026 07:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780213473
