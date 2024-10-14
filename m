Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409FA53368
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728878154; cv=none; b=FfMoeahjMk0RNHVh+WjO/ST58JR3cxOnn2W7pm7bTBoFUNxt8Bp+q+/KIZ42XI4sPB4XkEYkQjmtOCSVF0CFtwrCm8Aaioa/rEucZfwHZZm/rPEeuPIcUGJO2gSKHlKxnT+h6lOu1Pvv+gzi66kOORAreH+Kyq4NNbTW1Gvzjhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728878154; c=relaxed/simple;
	bh=St2bPU/pBfTIE3Z9KCfI4m1rmM3fHXfYmhbSu/DfvDI=;
	h=To:Subject:From:Message-Id:Date; b=j53ASWtmE8mxKIHThxL07qvRRAuL4uBd/wBCQxB3j2GT6WYlLuNRPh4b/OTtXX0E2rbO6HaZ4tb9/ko1uwpVkhfVfNZTAnrc4zdFuYxRzB1k0t4p93wngeM5g1Bu/X5gLwJMJ6NAIFFeDyjK1aCCbQpCclBx0mXAPF8ppGkrTbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpFsSmy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpFsSmy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0064C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728878153;
	bh=St2bPU/pBfTIE3Z9KCfI4m1rmM3fHXfYmhbSu/DfvDI=;
	h=To:Subject:From:Date:From;
	b=tpFsSmy4X93MjgSz8sZbFLq+EvLSp/Boib6bcfepxcGktdtERnHsLBv2IDWAoxVDN
	 FeLJMany4uBpKxkTT4VmXgNKy2893AiQ2fghfq5CKt+7W7357tJUcxeili/2yb5CZY
	 +N6u5QY6iK49/Mjjk+Ez2oRDgt/5I0iiHx8IRQW5eXLrWW/HdgFuzK5g520bfF+a6y
	 1P4H7XXICYgaG/qWH/SgpIQQhqfvwZX9DY5DenhxZAdv8SsYZG8BNTr9CbdLsgBfmc
	 rxVzCKEKVw0x7dVPeHTdMZf5A3z3DdSdUbKGi5DnnEa2Cdqrr2RW6EG3O40Nva6qZS
	 ibezoOjmpJtxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F692CF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887815364.1687.6495379134522937803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3185762827df5e2a434fe19484c9dc42b6552740eda5e244b9f643997f77462a
Date: Mon, 14 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728878153
