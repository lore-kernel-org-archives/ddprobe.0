Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FC731A06A
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758825594; cv=none; b=HhWNMsdkHS+/brigIdM+qG5efgm+s4dH82QzuL2avGqYIuJuWQF0DU3PhodhMeJjYFasdbJfPLhj19qFKG+Y9UEKGFpKlZZ2ORBD7ES9lahNmix781lfvX6bjkJSXvnf9q05EjSCjqFaRwyq1sEGSNdRs4DFjr/Uv/afvCRAvkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758825594; c=relaxed/simple;
	bh=ELnJdcArz87JHVcyXKqUV8vBq5GqH8W+V+goeHFxPWc=;
	h=To:Subject:From:Message-Id:Date; b=rLMgb0jBscy0Rm2LtYIfuAr7qOlzIuBMNrTZ/5kqHzWgrlY9b9cMr7XroGblqcweWL24dmAuFm1u7csMOQHhDLjVhh2UQwsZzLLD5aYZdhi2wWrE/iBA9kwu3KWSutGtbS9zD0xTtuXEjb3O9dfeZNNTLI/sIbpAbHy5YassgMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TATUVsnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TATUVsnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC266C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758825593;
	bh=ELnJdcArz87JHVcyXKqUV8vBq5GqH8W+V+goeHFxPWc=;
	h=To:Subject:From:Date:From;
	b=TATUVsnUq149r8hcLSZSKVyAXiUHgnVvHFXdvj1wHQwW+l2A56ciz+m2opAAs+9MI
	 8LJjap0e5tVkub1XiAxuvZx/o8paERk2PVO/ApBQSyVuIh9XIAY/JPYd5cHIbCXKs0
	 UeWqBA8oR46XPCQg2jrXfk86daz5V6sYriKgc3mVldl5BNpcVncoguyrhYX6Wy20u3
	 n8h8WwxBK5B11wvuoW/7hKgKbs71h5oTv0aQoBxVYA+uLv6QP54jZ4IzBifZ7jWTRN
	 bpDLM8lDkrOFzoEom9aTGSLj/bcaahh+rgKaD7/gU2dNIAeIziu480/5A61YNeHjSz
	 qzHxPwctUvVFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9871ECAC5BA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882559358.30927.6977079498796984502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d4a53f9108b751929ee280731f63d52550df32c3acbe7f804d41931b7f8dde
Date: Thu, 25 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758825593
