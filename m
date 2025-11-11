Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AAF1F872D
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762848594; cv=none; b=A5MvZdsUwVFf1GCCV80QXLnL2ThQ9D8mCDAU1qEM6PU79jk4iwJywJjYNoaHokv/MijVGvwlBObtwavkQWLJwuc5p9TGouevYbBR5poltCEnP/vw+6WyESo9bF6yT4vmth03eSCa01JdgnuV2bCN4fRPunmMNskhmmEGMLZ9lwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762848594; c=relaxed/simple;
	bh=KThC9ic430gZtiFehzpqxS+MPGgSXhUPyGE+UC60zxA=;
	h=To:Subject:From:Message-Id:Date; b=ee78J1eEbW7q8JGzplfT/Eljb1A9L2+uqhEIzuQuXKYYazcgjyWIfFZJZfFoFIib83mWrNCx15yiTczR8sf3zTyWI9BX3rjpC5m/3euI9/zbFzb8ys6UEFWFkXsvdUuJdWBFvgUMZ2WOYv0dUQKPqjYN/UcsCcV0dEuFzjqdU6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcedK/yh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcedK/yh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC60C19421
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762848593;
	bh=KThC9ic430gZtiFehzpqxS+MPGgSXhUPyGE+UC60zxA=;
	h=To:Subject:From:Date:From;
	b=HcedK/yhy1z8Fxx/HPZB6WGzqqe+rLqAkM5EuZgaYHmhys1ubjfSxhdchurYyAbXo
	 CDBNlaqfX2xtOG4JiyZ68jxcjrkOqgs5OA5FnQxCS61J6mXgGWwSvkOicVk9m06W1R
	 m04RHVyzYmN06UwrSLk8PIk+aKkzEl6r4vkf9fc0m3ELkALORc+RzZt0y4iET3/Lb0
	 GCTiSbzyV5/+9onxMGXhrswraB/gBeO9+kDsq9JATIVsk9iyB6fZc/9gQR9MtG1ZmJ
	 m+4Se9bG6r0tc8q4OJyGLAhr2CnrLJEYgxJ9WoG8kmdmsjiTChdrVZBPrXWfhJkrwx
	 9KYbMfE+so6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902C2CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284859358.31190.12716303900295318472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479501f44fb13929290d332e11533a66a3bc29c2470f8b91aaefaab48e59e39f
Date: Tue, 11 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762848593
