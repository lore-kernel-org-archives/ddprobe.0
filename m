Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2616814F98
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745974794; cv=none; b=RTnyzuC8aSiz/tuLY9Uh0sfdlnBTbdrbx2IJLEHijNvOuUhaRWOqJoXt4oRFODzK3ICjgdgQ4tTmPeg94XWqrsSASWF3nm6YDA/+6S32SQW64gz9O73J0QNR7tNnU4GCkCxbkxuFWUK1Cv1ik+sdiG2mn7YbRHLrS/11GEJGAFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745974794; c=relaxed/simple;
	bh=m63n2YnpqPWdbAxQrMXqH0a6jkp6FdPkeP2qxCxU6Ow=;
	h=To:Subject:From:Message-Id:Date; b=ixD7TDC/JxhvHpnxYwequmJFKgux04lnK7egamnj+YgU3jgS3v0BvNXaQchXoiZ1j+JEFJWIggdwdVn3ler5RVX+qMixzzaFsXbPWfAXzjKk87D5BYJaR1XYHzGna5s6lZbdmxLWysS8HOwA9TZyT4m2/sd3X0QcEjxguzLara4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tj8bOQJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj8bOQJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C48C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745974793;
	bh=m63n2YnpqPWdbAxQrMXqH0a6jkp6FdPkeP2qxCxU6Ow=;
	h=To:Subject:From:Date:From;
	b=tj8bOQJLeBpD8mBVDfUxzAY2fSPVjL31zvDrnROi+m3tSdymZVXPHnn5jG18Db4ck
	 2miFxd8AdZdeEok6KclEI+vl/KnMR2RG0Cgc4EMTlUN8emTaY6+z6lxd/L+1iMDVGN
	 WlMgb/XwN2DRXkrC/uuPkWFf88GZ3bHBc/iZe8j4eTGtGfpXav9Z+J7zFzkkR+KEei
	 pOEYWlG8rdEQ67ShLJSMY/vFs/oCXfZ7dMLLw2zkOu4RduR5NDNwqmv3rQpjHHEbEE
	 O3/dpLLv815SmfiExgJIeP9C1NpotRilFChQb8K0lJHq7n4LOwfwgZ33ZlktXVPxmo
	 hQ5FpSl2kGthg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E4C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597479357.16592.7733250357965919684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28fda0e70a40dc14c78c4fd29ba05580d2627755f994e381b28b7402c34322b
Date: Wed, 30 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745974793
