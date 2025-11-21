Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E1A2D77EA
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763758313; cv=none; b=Jg8aJ7IyFiJ16gCLRsG3ZqFGNscSXELzXx03GdnO7yjoBohiJyCt9RHPQrvFJfOuGdIZHkYrojSqdlcEnCL2qy+kjfYZo02x1HQGQ8EAxQFz5fbo65b29GN2jIAW1OqZRdjiY9aXfHzZGcup3ctdulSVMssSAR2UvCZ4MQLGnEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763758313; c=relaxed/simple;
	bh=YnbGQjYHfYvArVinZM3ubHc1maN1OMRJrxlfYgzZb+Q=;
	h=To:Subject:From:Message-Id:Date; b=aE2yLIBn9YLDvDV8Bg4SrXsaLzRmLmxcnbLc+Yjp4yNsC9U62snOdQIfvarpgCYodb8Tjt8z/knBgRnXnmZYw0Kt3O4CnDVGHAHUlGQrCP0+o45oF3nvmENhFxa/moBdhpfFrxpdkRQ6pgYrBhamNUytBP0DPqZjoxRnzMXwKtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJnav+Mu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJnav+Mu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39D9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763758313;
	bh=YnbGQjYHfYvArVinZM3ubHc1maN1OMRJrxlfYgzZb+Q=;
	h=To:Subject:From:Date:From;
	b=UJnav+MuGeJEsPNUHsJHFW1rq3wC5st5mLGNXDEmt+HdGBbVmsyI1IJsep2ktNQyI
	 pEv+cjG1EbjoxjutN43INSD9eDyUCENPu33qYYTOIiM4Z3Z/LSbcXMxhslhrPpic0g
	 qyoodqZUGvizYGKYusnpqMLAVSr3zHY3Ca0GpQK+FVxhZJxTbuRPsktITji+4nxWMh
	 bK+bJL/AtSLLQDihr8DnCoCo3xLSh4j7TqLIcula2nNnQLuJp7Ah5uryjIiJYbma5e
	 VlEYbOfhQ6OLab5BnjyRwh5x+emUTJk7h+sM6/f1UmwtuciGI3v26DnFA/aLG1/F4n
	 eB2m3fOP9jbhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93188CFC281
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375831359.18038.8976934053812158162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38ac76404c4995482bcf6bca6744a1024edca3180a702e295d216f9452669d2
Date: Fri, 21 Nov 2025 20:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763758313
