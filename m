Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0972C21F9
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772735694; cv=none; b=U9ObvOVxj8UxSXcoEBHfssaBpbYJSKHnXbXsTInsZpSC4L9jiv6Pwzg3B/yvBnO3r4X/cZxzBEslM/L11zmzyQlqQmhOa3e1DME7OCFRHKfVHBnq6cjeIRj4yOerhJ0OmOJtu7IvFfgRBzWFO4tOe63Xc5vYRIx6GArsRyyTZpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772735694; c=relaxed/simple;
	bh=KFgxA/yLSUv5nnUa6qxs4nYPnGf58t6gsq2g1aTiAzU=;
	h=To:Subject:From:Message-Id:Date; b=KfvrWfzSA/CHWt6dWQuro1W6cBMtcEJmr1kq3/JmXP7yuD/R9AMMTV4w262YcTrnvh9u4fe0fgkE6o0kmkR/NyOKfjz6ryq/ULmP0d30q5O7Jtc69+lkWUelNkNi7aE5mGX8/GSAN+c61nUJv6aaGcxzSetSdi8TWOdjtkomcG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+n5hVcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+n5hVcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6558C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772735693;
	bh=KFgxA/yLSUv5nnUa6qxs4nYPnGf58t6gsq2g1aTiAzU=;
	h=To:Subject:From:Date:From;
	b=j+n5hVcCgpyBU47/h+u10U+8UXZPVq36Ks21QXD1WLfYxzlgqFlv0akvUn3e5lr+g
	 CVQmOSR7mu6cZ/G0B/C6Up8iHMrCUO8OkQYlQzqiYl88YL9AqX4PyjhWYt/SXaYtIQ
	 p9/WmOeFM3M7iKQmfQSwuJSrw27UOdVRnN+0/YMPRq9Mx494AJlpRMPNFmXupEfEa6
	 LHC24KxePrvxcZyWjPMzL9wMf2wFwnjGR6rC57bXc3Oeph+abqP3y73K9cS3f8JlNR
	 OvpiaUFK8ECYbzBsGXVgKwx8vXGIrat+xZE+DYKnNFqPn791bvSlBreL6wcF2CIhUq
	 ShD9zZkM+Nt9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D72F47CB0
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273569358.13678.1233122439530123314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f21b6eff06819fc6747d672a15495831a72ba43dce6a11599249130e6b25bf2
Date: Thu, 05 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772735693
