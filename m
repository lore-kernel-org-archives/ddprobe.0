Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD3D345EAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792405234; cv=none; b=GypNYHiJBlUcDwMhJcUPAbF/bV5ay07iq7XtYuH0pNL0Rg7CeiFWOI9ANAlIASCEJ/gTWmn7QW0w7xYYFxr6ztyo1UV8TPS1JCBeYpTIvfMP55llN+d0QVv0xnLvDn151iUlbY/BOGzsjn2/xCmdxAhkAonbqnRMkgqQmsCqCM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792405234; c=relaxed/simple;
	bh=dVaNw2776IWE6u7cjN0D+jx3A2nzdhQRuE/ep9nEH0I=;
	h=To:Subject:From:Message-Id:Date; b=oWqDXn4iMHASqCauIUf3JKFSnJfs+lz9X+i0CWvuDksHPxB7+jE7dbLOb8W+GMQ7oHaZhBVxOqDQ/WlVAw83t61fpzKUICzn/F8YmTN+tQUDxqdZF5JlF3wU4emoC26FDKubFjtqu3RjcqnVbpCOIkoTOFjXIRancLECLdOduzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKXhJTKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKXhJTKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9758C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792405233;
	bh=dVaNw2776IWE6u7cjN0D+jx3A2nzdhQRuE/ep9nEH0I=;
	h=To:Subject:From:Date:From;
	b=TKXhJTKbYaYHqEk5trUxzhI4gCzxTj5uyjm8FfRyQotpI6N/vfy/Cbzx24zinJuKv
	 RymqY+2Dwu1T1P49R3Voo721tKFVADOPBaV0WpyO7c5hYMUoXHArWim+l3Gz+Cod9t
	 2tKzqIx7DSs9QyZm073vDdKrzmPBhFbpFGyMlxgbngAQ7rV8ufDDqEY1zV8CSqXzIi
	 G95+5Kp332Gj8yI2oaYmHJaIwY0TdC0Ehmqz9NdMIKkPpGNGeSOzvekc4VmbgnfYOW
	 EuL2nWsVV9E9+k3HThCat9tT7HcD3VXSQJduB21MYu9t2Q5AtA+vpPSsvWOU2JTFgs
	 I/h9wKpIGRIBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C208CCCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240523377.22601.11809577569793657539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5467525495dfbad1c8b996b37a1f6b20994ad7a5ea3d8cf4e1a8b2b16e2c3442
Date: Mon, 19 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792405233
