Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C64471243
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785514835; cv=none; b=dTdIr1fWNmwM0y2QXLzO1iNJTen9acaH6E3GOdzn36bHV1yvhBLh2ymjhizsFbfrrBcDYJmQEzCao2/0q1l/DH+9cVL+1CMkPDLGTpwJ1ZylaqBPFlaYfpT6wxkJjRrR4aPy9Q35fDRu1paIQuiLefiEyeld08atT9ERfqPg6sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785514835; c=relaxed/simple;
	bh=ga6QDlQR9rY7VKje3sKN20PSEwS1vYX/sY04IZWd2vI=;
	h=To:Subject:From:Message-Id:Date; b=Lwk/9OtiqGGxVawh8DYBqDoq7BqwUlahx5cOmCtl5/XNJ1QQ/1tVYokg4QI9NhxEKlQNlCMl6L/XQmT//9QtK89pyr4LL/FKw4f7YcWwW6mZRrVmkVvHDPC/385kBpd7tbnenqiAuQCVQBEBvEPTA4r7nglpjjpa1AxHc/NgpnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXSpX93T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXSpX93T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD17CC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785514833;
	bh=ga6QDlQR9rY7VKje3sKN20PSEwS1vYX/sY04IZWd2vI=;
	h=To:Subject:From:Date:From;
	b=hXSpX93TK0gQ9CkE/kMaycsdk1fwcGfViCvMU5x43LsT+E0GGq54SA2OfXDIedirj
	 If1DDpenoiZVEd7dzo97GTwK5j2cDU5mCqyNR9h7Iq0kWxynfw9uz8ddOfoUn7o2DI
	 zWouBwbElLGusONsbg9BU2c83hwK2juVTUOnxz7Lt05WvVpEieHy3x2yrHwHbRz22V
	 3sLv8XvqRQwbRif2yB2HYRxjzmfmuEFkZyKuFbfeQKtJpm7jsMCWXa0OTmbtQq2RcC
	 e74Vy3ZVHAvBIiHX7t0jxj/QPSgckBghdiEJiZOkA+RpsZS36nQX+j74FEiqjPZZZ6
	 uPgGQ+8VqKe1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1C8C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551483368.21547.17981253111017782623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02826483870b22ffbbae6756ac3462841146b95045e152b4156933055afa9d87
Date: Fri, 31 Jul 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785514833
