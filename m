Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A3E31814F
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761310194; cv=none; b=Teui/CFHzrEjiMI0nIacPj6BPkl2vkkdnQMvg+AjXEGD2DhzEewHvAxC3mlEiq8ZmcgrSBUkj7nx8rOCm1Ln/2MHPqtww1cutZstLkAk8F//aO9EijEKoCgrUcECugf6UEzGPBM/SAjgc0xLtVKKHx5IK7VCz/fomnJ/fLRE+bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761310194; c=relaxed/simple;
	bh=S5i4Fw8FM+1TcWfV2zrnPn7rS4NLjXntg+t4687NEuA=;
	h=To:Subject:From:Message-Id:Date; b=EcVmCqIul51JDH7Jy62EALfX6LwE2COTiiQ8dwuK9qzN0gnvW43xiIHE+8SFw+8ZR8lWyk6KnzxtWMacV2kRLke151zmM6HfauLLgJJ3jJ6PGGrXNBnNDt7SpV2nnK2ZlA7TxkBogVa/xNKMIHGfefXeXDeW1F0OaMl5QUvu8og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgfQF94h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgfQF94h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3FEC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761310193;
	bh=S5i4Fw8FM+1TcWfV2zrnPn7rS4NLjXntg+t4687NEuA=;
	h=To:Subject:From:Date:From;
	b=sgfQF94hGtZ78nSCr6k3ttLzgV0mQPIEOgyAATGfk/ZwYXt+rWdxt7pl59jBcC5ht
	 RgASa8cAzsZohZhf2AhhBySWC9NJJ0jlGkBL/lBFwBXPzGFVhp8CPCrKU/L0R7Y0Zz
	 JSOKHLCIkJPJhwN5w20fCvSWHldY/iOnb4ADz3Jbk9WkKrXmnBXMf6q73VdaVIFse5
	 PKs40wWaRxDIR0OPZ49SepX4axpVVg68OHSG/upM+dHZF8oITKWUSUsFKQjXQgwgbZ
	 5HplYqwex2FGyC+wVTp7bL75F/UPPyoJkY9y4AdYKIzsjGODRHaZYBoET8YaC+PMAd
	 ZGTP8HWhjUKWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A6CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131019358.18284.5771208948906597361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b5c73b1d58eb9895e87f69470156777749fe798c9ef966bf2212ab8bbcb32f
Date: Fri, 24 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761310193
