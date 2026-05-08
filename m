Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96033377ED9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778224054; cv=none; b=F4yKi6Yyenqrn+wy+sca+omGtEQMLam7YfnZBx+72VkhPqzdr5fW3roet2FcF77Se2e9pv7cyFMqD8rHAS5+T21EvdXQw14PWz3beVJhe75UkK9d+0KxMk5077vxZPPQMZDo73FQgMpGTyMRzR03Gzu66ATCxwnVP97VC+F41CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778224054; c=relaxed/simple;
	bh=D4fUNbcJtxzXqH7DVo7D/EBM9Mj5OWGXOGaBD2iCMSM=;
	h=To:Subject:From:Message-Id:Date; b=JtIP0p3LinL3u+IzACBLpyxFU+AiBhzNeoqgn8Wch9q2F+SXvOFJLmCS35a5cF3j8OiR7nlquyTXctFJOcr66CvAWUAgggeWY8gf5/LVeSlGp6LD68UvY7ViBR70b9tVTZLQP4wTYAJ1PB8PhSOAnQYHkdiguz0Zpgq1UIWghW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcXqduH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcXqduH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C5EC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778224053;
	bh=D4fUNbcJtxzXqH7DVo7D/EBM9Mj5OWGXOGaBD2iCMSM=;
	h=To:Subject:From:Date:From;
	b=WcXqduH5W3iAFPyJpetH/3Lu87RhlJISAkeH017XPilL+lKGc2vWVhryzkmcy9O0o
	 wvOL/gcSJnxtT1W9ID7boY9hQJ1uHoXgzpC0hU0274ZFmI4Rnw4xAousRQ7FmXgO2D
	 Ahi32vLLb/BXhAbcGpEnkyI+Wci7Qic0VFsLGrgfM1IgSl3MZJWIE3S2k9z16ooQWE
	 ulms8bgu5NBEDyNDax7qoshTw8OI9xSTrNyz/zBv5uScweaqfa8XiiYXhobtID8Mrw
	 T3T6FbHlhmXdvlifPBkyLka9SIIay1bLdMJT6VGgCEy6IcvbKSqR0veJ5rB5/bkN8W
	 ONev7CoLQZO1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8EE8CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822405371.9608.10869178076627811270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61de0ab5f434e1bc283a902e46c6f2f86706b7d9427875c22cc654368c1628c6
Date: Fri, 08 May 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778224053
