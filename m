Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2AEDDAB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765207374; cv=none; b=LIkceMtl4CP+KOfhbwYKrajDlilyC/M7BK+w3qaiQ7PpcshO+MNRddHWCQxr2g/rpnclVlsJxDsoR1wE7ZdKXL2eTnj2jam6MlKqd05bMwJN4rMiQdk/aKpccx5U/SRIgZthcaonrqkynbGqyPynN8nHI17ND82rGReJS7oO95A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765207374; c=relaxed/simple;
	bh=SJjV/isD5lo2o3o5Cu4QzxXiB/rzde70dBoC+cWKvvE=;
	h=To:Subject:From:Message-Id:Date; b=eSnnr63b9ChMBpD5ZjLvGfHKBA9zM3Ns5uYiIfZlcjXF8uMuIGDpTQxSM46MO5vBv2qYg6twlWS5cTYXgLLamfxXK2kyzGnsIUzq1Za+dIG17SYt7wJHEbsDD3dzReZEq/eYjRr7SLNg59T41F5G95UTnSLax0o4FJDtomJVOE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEKZD0Sk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEKZD0Sk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A258AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765207373;
	bh=SJjV/isD5lo2o3o5Cu4QzxXiB/rzde70dBoC+cWKvvE=;
	h=To:Subject:From:Date:From;
	b=mEKZD0SkfusDMJH6tzxzCWuNxr+Om2pJb039P88hZs2hu3dgeZeHAouxONWPMDg/J
	 9t0WRexedm55if3S/ukUwU92TBu1bLkcZOHwoWRFXCLjgBx8Uc7pz643+ggTFFsRRm
	 BfKL7xiLDGO+BwRS8hYBjnhL1bqawwoISVGGugpoCz6kh5uaWfvfQBJ9iCdicLfIf7
	 Z4MYptNcflZB18apWz6G9ECaBaPNuGlCRZY9ydFyj8msN8E+md5JK506vciv0kH39t
	 SB+6hR2F6nSarEm5eKIpF23HNacifhZ7bH1C3I7/nsR6uu19Ogki+CQJQ8DtNYKUBI
	 ZMlxyXSrx9lLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A3BD3B7F3
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520737359.12985.14745416282328765630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fff9af77d5f4d13bd262c44074aa25b57f5ddb3ccaa7c25b5964f62283bdee
Date: Mon, 08 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765207373
