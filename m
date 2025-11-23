Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2048C220F21
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763932914; cv=none; b=tureyzkHDhtPQRPEEndiKct+9StYNKf3NOAD3pJty7vj9RatPC47YbzWyRdGLVROy7ekIlRPTDBkpmesJ6p5ibcuaUqAw6HVCPdq0gtzNOm7DespkcHseiby3C5T0ASjtfALbErpB+exO7RfByJn7+t717RuJONwKbAmSzJkCyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763932914; c=relaxed/simple;
	bh=3Owcq3MzP9mqbmSa0RIT52t71GS96oHZ0XUz0iSc3bo=;
	h=To:Subject:From:Message-Id:Date; b=g2YD1nsh1X7u1VWan+2jko3oDkFleNYOf/f7+IWpb8PAUFKWYyG7gCsO1LvsCESo3IM/thOVS4l4QAvpmxZ00DgH5KAWiq5VWrPe/0TttdlXcahfW9NSGVLvZ/MpJnta8FzWcXXC5qvKgeBtvPPFS4ZGo3oTTwOKKbOFIZHXSFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nB+O0ikU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nB+O0ikU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32A3C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763932913;
	bh=3Owcq3MzP9mqbmSa0RIT52t71GS96oHZ0XUz0iSc3bo=;
	h=To:Subject:From:Date:From;
	b=nB+O0ikUZCZl0kEYoufGR3ssOI3dVS17lynUuio9oBij5lcv1w/JI4FikjdzfxE33
	 GjmA4SNkmLiYHcp4c5QVjvEUWP77pHMBo9yAC6OOPFO8ePYMnW6mdS95M8KC20Zvyx
	 aWdWajQmNjb9ZT4ukxnQw4CxYOwIN7qr3x9fQLbcZti5xvKQbEvDdTUu+H4f7H5G97
	 JsBvrI6rWLGkoPllcaEAZlTMv7kNCwLk0gvkXrAwW177idL8pud16MxADT25qOsIkw
	 26Bft/JVGnzfyOC6iwsrJ3DDfTUg17alVGVWZAbxEA9CIF6q5Ufew605vuLtemenau
	 kqs1QX6GMkVDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95276CFD318
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393291359.939.10310634428005794522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d487c31b67ea8a85df045a9fcf9c7181773052b6c23b930687261fcfba542c56
Date: Sun, 23 Nov 2025 21:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763932913
