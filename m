Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BBF38E11E
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772909694; cv=none; b=Dv8y2rCN8KV72ixTry3NoDac4zx2mUMMMBsLzEKQcRrn+1oAkru8CWXYo6Umw+a9WeXhIyFCLprMHrk9jxNXjqRP6Mt4/rdzZdv94sWMVj1mwkLa3p7rLkazzgcStTV5PXBqi0qcrk3yOMnRhyQJsQbzfzCCmLMBor6rP0E4IHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772909694; c=relaxed/simple;
	bh=N1OiYsTMWrLiApM8IhnAuAP0kIxzUFiQAvjnRooduSA=;
	h=To:Subject:From:Message-Id:Date; b=aJouwMbltnI+JLvy9SUQgWFBUNwfyWXaVFDZnZsuoCmtuYTWYilgnrz366Idirs4Tf2iRSljkFA9wHdF5ICDbm5dSc5t1DZWtRHQFUm8TG4/+oh2DgYAH1TCZAqUFah69nzkjayjRtIxe2xi+7k1046p/vzzgvkp5vwZLASCNWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYeoAwTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYeoAwTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4038C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772909693;
	bh=N1OiYsTMWrLiApM8IhnAuAP0kIxzUFiQAvjnRooduSA=;
	h=To:Subject:From:Date:From;
	b=fYeoAwTil0/dkpBLmXduijjcQ91xF0hYljvYXnFr4O/NP7cNaNhMhRvwuj+GOM8pT
	 MxDXVkcnaQ8uvOLg3ywXJYIg7lbxe2hWtjcWUrlSfSxeV/NxSBnOjsAfQ2YvdO8sbX
	 WhsPK51T5EdeAhoZl1LZqlOm2qxCDcuv3fzsl5a/S6MSD84tUKV0DhyitxBEBJzA8m
	 vyu3w+j3FYSoyl511HNLoGsF7qVSmlBIl+SiPfWdCMrN/ux0CE5CRh5HFGXK2P8mW+
	 xjmCQIYdEq7glqVK9/aus+IJUy8DliOBGZvhA3m2YDxxXSto3qe8OmF2v+zOqzWQQM
	 JHL9GBPMpx1vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69CF55104
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290969357.23813.13998184632195992454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2077a4496be6cdfe9cad8ab780018a5d520e816f55dd3cef0af93c5a877dd167
Date: Sat, 07 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772909693
