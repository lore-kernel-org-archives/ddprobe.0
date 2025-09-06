Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150FA1CA84
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757143194; cv=none; b=fOK7e4xTnzJsxlgVHXrxZgtLF4C6szxy50mIK/bDj8clGjCqTE60ZlMb7oEIz7AceE82poSi4QQGTS/66V6q8kv2wiBb6XZqZJenZJ/zshEAv4KvkA2OCNwTyrioratLRPxFm+A5wg7aDZpvWTBjqU2apUYRgn55lVHLegZcCTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757143194; c=relaxed/simple;
	bh=q8L+ukSKGsJtbTx6A0wUSHkddbAR3GeYxoFtQgKutlY=;
	h=To:Subject:From:Message-Id:Date; b=sP71FOYjDnxgfERjPKgMhyfb6RFikD2rWZcOU4SYEKHZmZLIXI4xTmm0Dkhe0chto5ozcAlpRAt563PfbgMI2qFCpiZ6A+1+iQP54Xxy/FO9cspZa5+GUgu9xIG8rDNXATP0oS/vhUSYZelUDsTgOpIA9tGY2Y/L5zlarYrQB78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NftfQVhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NftfQVhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D3CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757143193;
	bh=q8L+ukSKGsJtbTx6A0wUSHkddbAR3GeYxoFtQgKutlY=;
	h=To:Subject:From:Date:From;
	b=NftfQVhHQy1hMvi06mDROWpQ/52LfYd8ycyS41SO1EG24/ZPZVgho5H2PIabhXYvE
	 1ClE88eyrxKNJYFi8iRrGyrZxMarAUmPJ/KPFFywSUkbLOJZm5HhhBrcnRZnhj9zZ6
	 +enWIgfCkQMv5sXe4QUIeNokjp0ntCwFe59qQEWvO246+XeZ0wwwIp5DBVtVZ+CqNq
	 jq8QkeAuMNwsrlcQJapqaqATwQ01tfv+WN7Wlch6n2JVHSS2dsjVW5I4SaJ1o4Dq4G
	 32rhmUPqcIT6Y1pZ49Z4r016wWn+Telyq/xzVb0DhJeOnck8cvuyPqlYB4wwHiFY+A
	 JJc6JVES6YZqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED7ACA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714319357.6849.8299780697803039365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb6dd89d3161c7fd348ede174dce89ead23b95ce0b1abe589acfe8a843ded5e
Date: Sat, 06 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757143193
