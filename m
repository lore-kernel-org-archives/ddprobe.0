Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218A324677C
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755801594; cv=none; b=eIhnmcl4ap9djdpOPxK9oUpxj5uClEB5bzmdCU6evS2STNB3AuyNmbGO41RcEiWHHyriBZu+T1iCoR8nT4/J2fg7mPV9ixGxmkNTlMcO444oWzbwyrZKqHNlrmDver6fwlCFECEk+PYZ94w44dfOdmTeJXwMUfh74VGcWTza+2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755801594; c=relaxed/simple;
	bh=fotHe7+FiG5lFM1m909VAp7S9+u1yjr1fDClWS1TjmA=;
	h=To:Subject:From:Message-Id:Date; b=uZymZRhBjHDoZ/n54WATSGeI6a0t+d2R+prnYm7hyl74G+OfPJGUnFtAJboFkVK+jiOqCmcnErh3YcViYVNutIe1IcCDA0YH+jcC85pTTskQADetw85e5opCM+Ryzf0SqkaUQU9Mx0kYO7ZQ0A0D+eGp1FX/XPOpp5TZ9bJ77N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nB8rbjg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nB8rbjg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D1CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755801593;
	bh=fotHe7+FiG5lFM1m909VAp7S9+u1yjr1fDClWS1TjmA=;
	h=To:Subject:From:Date:From;
	b=nB8rbjg0xe8dIVsSrzbGIwK9hacUy7a/sx2xArPI9CY8pZttydqJtY2ctIA9oGZ/G
	 z0DoHPfOsk9R5eqBKrGeHtICYav5h+IX2wC2XNSnNuQxP0IZzyTwd0rXvq2jD/C6b6
	 wnksJ5DS7Jevd9Mww56ZQC9HDUv2w9Yq0ndManNHvxnvTnofIpVeShGwcL3/ek48BR
	 jGQGPJJKw33Ox+9Dq4X9PA3hpRbGU9FNvRAWnTc5Elb81gXmpaDbDU4EucnUrgxetb
	 NVkk8Po0/WoMFtP7A5uq/SdjrsyT6iTEygXwjdyt2MsA0n7OHgtC5WFQDgwgR2iL+i
	 3b4AJ7PkDFmFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92716CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580159357.25539.14685074567512826436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa849ba22b1ddd04d0b851ed0dc2040c0fb39ab97e8a0994632c008065c2c12
Date: Thu, 21 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755801593
