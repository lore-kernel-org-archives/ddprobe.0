Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3526B136E
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742766594; cv=none; b=WcKTOdVX4bHBwrgvtFUNyySscshgIzldw/GgjkfXkw4NcJ+ReMqLZ/sMr/P4nvavYOH+2Gw50OYsf/8GdU8z13NmuRyMCo9BQwRA2w08ZLXK7MKVmBGzuDaxSNR+pJkBypoQ2J8nle5LTxjD9Hfz8Ide1rlBxpAGXyOuQBcqCRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742766594; c=relaxed/simple;
	bh=Imr6tAUR02gSwyd0UI8Y0rIhVoyhO3jLtu39S/YHis0=;
	h=To:Subject:From:Message-Id:Date; b=NCXkl33IOCqcds5SYkWgh0dazTX3E/dEBINIGNYe4RkGTtaknmkfRFYadZByQUDruqhDyrBv2uBNPBEQGhycPGlN0qX8j9EAsVjqa5fBJj36lzitRG/b0uD6LzYaB/emiqMzyolVah4keADmzBr/jNWRncIPnH0q+fL2AfEtpgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEtri/Wn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEtri/Wn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE81C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742766593;
	bh=Imr6tAUR02gSwyd0UI8Y0rIhVoyhO3jLtu39S/YHis0=;
	h=To:Subject:From:Date:From;
	b=hEtri/WnvfGnHBdRYhVSxnpm0FLKkG/nmqjOQ8hHnUUAyyeln/iAXNSsu4PDqHxW9
	 k7IWN/nslacmG78Hd+R+ZyX7hmhkwrlWFWjjAOznNee2x5p/+3/aOidf4f49DAMIjm
	 XrWhjsbNy0FKDPdphSYbzGMcNgh8nt3A/c6VFUF9s69FAirJEXCQsLUi6opKILVFaw
	 oznMagxsc1soG9t/UmecXqJ8MNaS0CTEXS4BFotGhLbAhWQH33Iswec9Nc3uSrq4QK
	 jBWQn5iSNbNu38J0cnE2cYdqtw2RVbx6rIr8YEZjzUd+qrW/5cKjzsQfAWnpzySZdp
	 /Osie9vOQ6U9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBB5C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276659360.9496.16673653273796218359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8e3017134ad52bd66d832aa408e636469e4616111fa3572fa94bf7b3db38875
Date: Sun, 23 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742766593
