Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3818B42049
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760116194; cv=none; b=AwyACDXNIMYefnxPACOabIbbp/PTgXO7ITcGUcdAR1DechOiamIr6fHaDK+mm677D/jIFRu+0lh8Qp6XS6Wh93Y8Gcms4qBhF8yDEp9UdM6SmSdtd31pLBgqzNjM4nrguGBbXAiHE8EAcSKF1n0Jf7By87++WD4erhKXToLnFUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760116194; c=relaxed/simple;
	bh=nCE+04ZQGgY1Xx2q2FR089hjwYVIuzH3mb/8awmQa60=;
	h=To:Subject:From:Message-Id:Date; b=XQ22S36l803H4GcNu562HNRZdJ+pfunWbjj2AX/pNigZbqZkRNV6Z4HpkBwv9Zy6jWvDm9ttYL7NRjnotcRAnqp/uWj/YUlZ2L7YyCuN9s2EMcoZtuCSSNXbGTDitV2XBp6u0OjbtR7jMxGPVw6avpGXFGZhYnXCoJ8t1tiO60w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuDzYNnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuDzYNnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3598C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760116193;
	bh=nCE+04ZQGgY1Xx2q2FR089hjwYVIuzH3mb/8awmQa60=;
	h=To:Subject:From:Date:From;
	b=RuDzYNnVRuBxXh2EcvR1IIbNeZN6kkBqwYo3Ene/+lPl1BTtF6UiQ2z74QpICiBO5
	 OmHfPHeIc8FKAM5l+WPiPUg9EWoYqRKbl93QEE6dD1NIVrd1MbLEWeH5CAEht1DVX6
	 /tMJ0NqQ6UAVbNj7ucNEdhyM4gFI4oPPG1UJwNc8SQYBHhB1m4sZk+TOVQCgJm2F1O
	 NBVzq09K0c7Jd0fQSRYM8G9PLlTRSqe3O4l8WsYhpJZLdUhEPca/QLE0q6FhYfsoQ5
	 znw+gYoarOoCoUjHOPD+wZkNKYrK2Ob36IaDu6AyOhVKe3AR2B3vzVQG8PK7iN6H2D
	 +y9o8th2DBo8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91999CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011619358.4919.5789267660234483820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62144b5068b32a366e3bc2cfde9d510237f8d1d9843c240a560789c6ec4b675
Date: Fri, 10 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760116193
