Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468F738DF9
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760262594; cv=none; b=ULVeO/fjyg+oLabef6Q0qdvsbRf0pXnzN3gdVLTQXPmVsKFD3NojfTbuZJbS0nH3fxYYiIvIOJ7o4UdYBGWbZYGoG2DVwujysAzKiyZB76yPT7dyFFD9kevJYLjMSITg8U8ISfgjUrmqSMVp8eUIzXCcUnRR5wVKGHF2qkcxuwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760262594; c=relaxed/simple;
	bh=2MDWMX43GBrgknCfd9ONdoiL9jTAmnSFSjGWHbRm7+U=;
	h=To:Subject:From:Message-Id:Date; b=SLPmWo08svQ3O74rjJ1cA6eZ7uam5jYcjvQl+HtQT++Kz7LPRPUsKipASN9yHKEknDv8doM0+VF5AsaUUuQJejnkmolMEDb1IgQN4pqfVFbd4UGgn+w2yYzc1I98A+cqwrdGvIqTAXvNHQH4Fv7VhziWdKvAUMnJsp5utNnYdB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ay78Op5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ay78Op5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44E4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760262593;
	bh=2MDWMX43GBrgknCfd9ONdoiL9jTAmnSFSjGWHbRm7+U=;
	h=To:Subject:From:Date:From;
	b=Ay78Op5oBPv6umhzXzM8JRgXbGI1Cru7I2nXffiX2vK7khTDwKVnbEmrDZoGcSbZC
	 kXB9t9tyWvAP1LhOzYH2U2zdsZudybuuNH3UinSkKwUVgxjN2h5alajeleMJZR+tsp
	 lcdlwEqz7tVQoIFF9835v5bXTeILRlbUf4kiKYlxHzMg8w/qeBLgsqYXOp3cIO1GXS
	 dzktDtOMckWhnX3VZOj1Xq1q5BWwaHIXpw6TqXsGmvSTRgZM8QxaXgMlR5xemYZTKJ
	 opP3rs8Kxt4oxOVRZRsj2Iw9aJUYU8A6wQiMnV259btt75yVFT3Gr46ijSfqZPMIx9
	 6VdGPlIvh+5Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E86CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026259357.5290.7173454047888095487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4bf29684f8b1e4760fb488952e8040105641ccd335f33141365a3ecb668810
Date: Sun, 12 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760262593
