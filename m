Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FF6202997
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773515094; cv=none; b=jCZC7+PK0lllhr2tRgGkYPkoKNhrncNK7BdSMzoZM6zLVSXCM0RgX3hhW2XBIuyCnwmu9i9wTxFqvh2eTf+14uDNeazBajeMmPGZkFM9ihze68ndOsVlQwRvxe3z/aE5EetaHWYgY8xsgKJrkHQJ0qL2uiEFE9eEgsL7Ad0xkK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773515094; c=relaxed/simple;
	bh=E/Ch+E1l+zS/ObUVbrRll4v/M1kQk9RCVFdTgpCt6m0=;
	h=To:Subject:From:Message-Id:Date; b=TOMTCNdbpk6eSFNjg23ftWH5BBU2ZBg+VJxt3cufLB6R2USxYROY5Kr6XlzisfLruCZml7AY+1IqZOtK4845xyJNb8L2cGAMTeZUOKuZ8Y/ofNYWxxgIMA8/QdEEGwS5zBeA7XvYVndqjv7wt06CkJQbZx9p/CA/7eE6EcMqB+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIENXUFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIENXUFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A848FC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773515093;
	bh=E/Ch+E1l+zS/ObUVbrRll4v/M1kQk9RCVFdTgpCt6m0=;
	h=To:Subject:From:Date:From;
	b=LIENXUFFjJ5djyoA/hf7n5d1o86NMswfhIMrypsjQxaJ24+OmmJyNF+ALov+MJqQe
	 Q0E1UyGzey56zWMD6Q3JJfnUNP0sQWNW2lwG0LuDvJ7pCGPFr4vcEXMYinUm2+PTW3
	 vYWuxbAbVIm1o9RnSzdYVEN4n+baW+Q0Rh6EA7v3KQqHq50+9lIsiNcmhPjN+XawME
	 F2khYc9VACMs9Rxl0eIqMAgg91JjSc6MxrtAOPGEGFtJPKZ1dSM4hxyAZeBMWBC4DR
	 gwFdjqIKe6Lng90x2OVgQ9i5JwfovZWyyjwUY6L0S0mR1NGmQCoAmA7grS/Sg8UnGu
	 0KHfGTsY5xMbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E5010706FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351509358.2475.9141545561332959913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c1900b3f11c09afa76d252f7c74216e2847ab1e9d27e3281b38ae2753240cb
Date: Sat, 14 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773515093
