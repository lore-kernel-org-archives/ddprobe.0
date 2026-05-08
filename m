Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86DBD26A1AF
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778246854; cv=none; b=BvYGoVmxczdoqYTUOvXCgmIXwLD1wEA1K7rb4ygyfB66u2cSXP55JsHIHDVB5trB4HX+TNwprdAhW4x8hR3IfagYBzkxTEsl2Nll7uk0OwVpZU/RqwIqtF1FB76PFZuQHgVsGXOLpj7QedFrDSySYp5jaoPxefkYi6JxI/uKaDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778246854; c=relaxed/simple;
	bh=TkWXXPPTjhJFhI9z0pmDLWiwAh6Fr+R2YZFkUaW+H3s=;
	h=To:Subject:From:Message-Id:Date; b=LpTXMoBu/eIvaFLpIEheyGXPp+xbvxQqXk0gOB4fj+rksDidxxRQp7Dj8bA3XTEWjVe2cCbbn912IEKbcFA7K1klF9QhYO2jrOtAWy3Afo4Ce1ENrclvrPcS23VwpkJWPnepYbox04SZCzwJHg6ZvAzjbD/QzNgpU0AbQXu3VdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnLH9oyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnLH9oyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28A8C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778246853;
	bh=TkWXXPPTjhJFhI9z0pmDLWiwAh6Fr+R2YZFkUaW+H3s=;
	h=To:Subject:From:Date:From;
	b=OnLH9oyZMVd2KQK9CC7o2vBb7wKVjnqOgsUMzTvpAvRt1IhKJSCflUrnq9iwf6wjV
	 zIhxiCA4mXC5uudXdu09rRF5jz/PHvkDj/4Jf/lxcubplSoWr4K+TVGk5ETCDA/CRl
	 qxifETeH5NSdmJlRydEy47fKCNpRqSfP0jNp5l4tDzS2fvwuC4U3QpxNMYhuVJIt3T
	 ZPgPNrHZx1jwBiajtX6hn9WIXnHvSytKA8/v5uueTox4I+cU/i6s1XdKPo11qnSQVB
	 ScRGgObuu99x821Hk2V/ukOcN5vXhq9aBtlh9IhzXtjzphJ4FR//jiJregB9CmHaan
	 gegkSltfKt2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B379CCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824685370.6039.2603152243705062044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e8bd8603608e57570e79ecc7317db32bc57eeb9668b60447a22abc15e27d09
Date: Fri, 08 May 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778246853
