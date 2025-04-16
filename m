Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412A71FC7D2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744765194; cv=none; b=mjcIBIxTPQ0DXY10cr1cDIzojIhT3YoGmA26SOi4V9JIIszMN/1eUmEnacWDvvDZ3MHbqsXrt4hQkA2QKbyzY/LJlFkqqGFzMOiK9vVLngu68JsHTDU0k53AbrF9+swg9Un6K+PJ7zIfPgPWnRzMTGWtYFEiJU3WLbmSPHjMUT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744765194; c=relaxed/simple;
	bh=E6YxOm6K9Ym9UA9oAVXuT9R0piFUBtW4FGLJOCcPtP4=;
	h=To:Subject:From:Message-Id:Date; b=HFDx5p0KWtJuP4oa13+pdRUO9npuFk1wrxs3JzGUEyjXXz0stB4qwOw8qsAyYoXnorHdBKDRfCkBI3qgpzj9ANO4sR1IVw4yw5MMg8Kxodj/c4qM4GAfwhqmZFqXrMZkUPT4ItZ7I6USpbeag0raWns2iWKghsHo05oqegq61Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ze5hnnhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ze5hnnhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2338C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744765193;
	bh=E6YxOm6K9Ym9UA9oAVXuT9R0piFUBtW4FGLJOCcPtP4=;
	h=To:Subject:From:Date:From;
	b=Ze5hnnhuMLT9qsrFvwXjmigpwg2jKeCRY0xZ/mSSB9pz4WNB+6V6LXiCtsMQa/68w
	 rU4R8vtNXGqJ9lWMMIBdXb1dkUciEA16NLxF98+fn66RGsFQem7o6Q9XAEG0TH7+b7
	 alAoDBhHnjvaqKlWkem9qVG1SlwqRBeRRMtFspvSvXTzzTZVDHjl+Uh7oVCWUlKsLU
	 7BqrXGBF7CP+LuBsqDluYrfSSgqFx9CCq26mOw8z1xrIdikL23LSDlL5M3XWTKq5Hw
	 0R3ZjT0KatNyPF1uHaMvcsyfoTmiUAtMlVRL33xpxEjnwL8gr84GkKponF6NYqpZ1l
	 BAFAXeX/1w7/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A85EC369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476519362.17928.2693025803914582279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed0286b264a22c143b140e99848cfc22d2835810b4248c66b9649e329732520
Date: Wed, 16 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744765193
