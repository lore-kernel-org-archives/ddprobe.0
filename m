Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637853CAA51
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780401274; cv=none; b=PT+xFu1KsvAqoaDgvb560BuzBrfDhhn/2ot8BrCIoa9Lazzw/58D6cHeUINJSjE9abekp2ekAEgvBi/qGsiqgFksJWq9funXFq6UOEqXc4m/12fruxX1n4ndT2j95R8gyrSFJRFNUT74+jhOXFxeZrbvmCyhW71QLGKU8S5IC5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780401274; c=relaxed/simple;
	bh=CxMHuPckGNiinKa7yDo2FTjzqG/RDL4sgVUMp6RTtLQ=;
	h=To:Subject:From:Message-Id:Date; b=tq4rdM6RHPOyFIDh9x4IWOIGqy8JUKcKF2bo/8N0knqQ8A+KLMvUV+3Os62V76KZAn/Cmigf4iOSsaWTOji0Ql+MeZ7m9+gRLXqLAKIEMtjtYP5av/PZ6fI57b6OXwfHdohfqHEFElRfBFQyERNbuY9PgAllKsSyBm+iH8Jn5jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sutQNNVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sutQNNVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA223C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780401273;
	bh=CxMHuPckGNiinKa7yDo2FTjzqG/RDL4sgVUMp6RTtLQ=;
	h=To:Subject:From:Date:From;
	b=sutQNNVFPCYhYTp5kIck/WgiVsKhMwtYpny5R+EJwKbdDO6yi9/YUxWRTruI7Meqx
	 UHvUO1jdYhB28zMa7hX0l8pJn9eM5T6DyBwW6Rte2o0aa5xTdAHm1qAqb7KzMM6coQ
	 7Jn/M61DAnoM6oUhMvCxLG9D9nbFIviKzJbJe/Z7m6G3OjmPXpadtGHIAkYTZPlnsu
	 8XIKCN3z1KwpJPJut8GxaWKJPGvUUTS904c0EsG+6i4VhH6smENpsAY8mr6TnJaare
	 dsNH2iSGTeVW7Qv85vuBdR5+MQlMHJ2DmWET7rhFLrjv2Id9xQsX1n+rXDuPzkAZsN
	 LezeN/376WVYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16B7CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040127369.5748.7303544361201130042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973a08de6ac2271d14ba2f3731ed2e4504f372bea8252ab448fabc204cce0833
Date: Tue, 02 Jun 2026 11:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780401273
