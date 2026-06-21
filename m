Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8E2274B2A
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782069394; cv=none; b=lMxr6h+BqXkD/Wu0qrTayB0bCWTzMN9eVP+PLyNMiLRTg8qRvfwlj/bLohpm5C3saaL1UXxtUD+Ol+NWB0OsyFaG9TTypwJkG7so+RX1lewpgTt2hk2WPoLIx+yTax3Sr64Vu9HOJftAfjtNWmfSBHykx5s9ogZbW/s7VL4D5Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782069394; c=relaxed/simple;
	bh=rccz4PHzjCKx0A4E484TnUvoNSUEa1oPCrrt7vm0MLU=;
	h=To:Subject:From:Message-Id:Date; b=FeiO95Bx9cHQ5tgbke3/vDEBDzVWRsi9KszUp8G+36jXzKRg/us2OKMCjhdTA96GNL4SjiDisrNOQIJOBREnJXBsu/Sc8saSR3HXGbV6w7+9M0qL+RvzwfQeOBai5xDQKh4c0P+aXUVrEoBGnyxLVYBmL6kSSi6uNchybsm/1jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoLMD/6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoLMD/6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DF0C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782069393;
	bh=rccz4PHzjCKx0A4E484TnUvoNSUEa1oPCrrt7vm0MLU=;
	h=To:Subject:From:Date:From;
	b=UoLMD/6IdWG6NuzoyA4fC45Y+tBMcAA8fk96YGMWO51xi3jP1nXWtlTMfx6vzJCLC
	 65etYqZX6y5zFtZRryB/GOZfLjOKy+smcH8Ob0/npdlsOGagJXudqRPFmX/Q9CO/j8
	 OfQo6BDYOE/2A1qA7j/j3O0Z0C23/SGVv7Xyd7zh+JzKpntQvMvJAfVvNtAIw/vw1d
	 wXh9NSPl7YTaA3JgtMugwvmb8JC+za9T+ZTbdgg23nDXToG+DTPpZt90vI9kA6POWD
	 6i/2ou0qXtHmtTYo6sYrVikbzdprpgZDGLQyKmb+8buQBUSAA7T1FZR2MKAEFjm1YB
	 mbrgnPyWn+qaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65EFCD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206939370.17106.6383795147571218073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6df5efef218c46431dea8de14546d466387cbad6ecbc391ddc3d929ea46c6f
Date: Sun, 21 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782069393
