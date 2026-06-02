Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D622010EE
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780409674; cv=none; b=KlTiNAm52qlcLCO5heFVcS3dQ+IsywUlSf9LObB18LM94InXfA+7S3R0AUBlY/QirXmcAh1shl9titUKYLku8WtvJxONl6h2nDyYkTbalmyLYmnZrU+JpbqYQ6n23I2pxHbmvQtkshF3Z30WVRxbGSGZSvXebA39JAunn8CJ6GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780409674; c=relaxed/simple;
	bh=NFZJsURMLiilxPnQYcCI/xvrCMOnEuD+0seOhx3Qmus=;
	h=To:Subject:From:Message-Id:Date; b=VtcL2lhcCZp3neGqZF6zllDNp2uRlbhqkwdHGp3B3xH3eypym4yPSyb/rgx9mAmvj7+5CojGPX/Y5Z90Hhf61Rr2zTM3fYX3rsyDsNj5MBDG0slHPG8AchRJLTxKft7KQ9VEvuti+Gt50MOSbQvVkagq/Fv5OVRBPRW8UgY6T9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNPRWQ+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNPRWQ+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC82CC2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780409673;
	bh=NFZJsURMLiilxPnQYcCI/xvrCMOnEuD+0seOhx3Qmus=;
	h=To:Subject:From:Date:From;
	b=GNPRWQ+VK6IRaCyI7x2cfE76yLiY+qy/8IoqYTNmMDyv/X7ylda0chRcTLtiYP+yh
	 GpIHrTWzQuW/90CUnXrhnTfoR1kAzy3J3YoDBuHu2p+QM/dE9a1pw07PFAPqVMJ0/D
	 sMCCdLvvWHB7TEUp9Cvywg3NErEm8vz71bYSUg+U3OectCqtLUtJ4DkTa0xW7JqSJX
	 NBJLrSKhAoAzVFZKyViu7mFZGF6n9zNObuOo3L+JStFt/tDFtB/xnrdgQ0f9axN9s+
	 /D4B71k2dU+Gh4TTF8t3y2g+yXBTXSrW4jKbT7RW0T8oEsF9ja4BWzGprqWSETFreb
	 sMeSd6JQyCzmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC67ACD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040967369.20384.6211373165618357792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e4354071f08e357bc42f02cd1bc1fb79ac9c386204de6e887bc7e3c586b9b8
Date: Tue, 02 Jun 2026 14:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780409673
