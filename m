Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F93163C7
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715569943; cv=none; b=ULZFSvbekZlSjdCPojf+ncw2f+NR4a6O4axpn92dH06X+X7nFfVpdJXbipZeL+SV0Vlv9R2BZM/qP+K/6umTpcL8JElDbCrAtzSvHVKSu/sASIvN1M5EkyyKs1Yyx2PxI3Ja8K7clEL4YrI4i2h/2SpWQgxaMmB33+8VYFxfxdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715569943; c=relaxed/simple;
	bh=PEXjz3MfQ7AKTIVj6dioOmjuL6iHfYGYtMif4mxzUAg=;
	h=To:Subject:From:Message-Id:Date; b=n+pQPBvZlmheptLjRQv+C+9gSscl1z8U2AWeHscBsjym5j0NSa5Ji1g2ZE1v++7WdxAy53RgAKjtsbfJMxEKQcciMRrpFbUJRnBlR67lwh41fBcZtDAcdAPjPhruI+f93y1QXdWxY+oKS4LP8Jqa0F/z43hbl+s0DHRBEeYKtq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQsK8ELx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQsK8ELx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CD5C116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715569942;
	bh=PEXjz3MfQ7AKTIVj6dioOmjuL6iHfYGYtMif4mxzUAg=;
	h=To:Subject:From:Date:From;
	b=kQsK8ELx9voY92kcX7be7WChDU/zbZ1N7mBhXidJrY574ic5AenlHB8RNUSKEcjmv
	 jRaVkpyg+rp5r79FXrrsQ5poTNTLQBHQTnyZVQKNW00ppqoYzJ1U7DIyr8RlB6PHuq
	 2P9ktqpd+HF1LhOna0HwoBXeCAW5CuGBZETNVn9Js53KTZub9qB92cl9lHkUa5QbFN
	 ucz+iKkNQWMaJQ7fa5dQv9r/MrvXogT4jY6RN5bRdAuECNL7G8an9zY5IDQe4FFRYg
	 jm11qYqr9CBTUwu0kqMbI6h2gAgMheAtcS2+taaJdPAOt2oysFxdWNrWZCKO9ti7Tw
	 9n4TiGD5l0PvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC9FAC25B5F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171556994281.30764.15735614183876741786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37b6bded4ae8b1e1e725e46e85a5b3342278c6a87b4370a433d16f2bf32d513
Date: Mon, 13 May 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715569942
