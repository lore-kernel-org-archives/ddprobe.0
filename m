Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D5E184
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779680554; cv=none; b=TKw1DK5TnmlZjc0PgizCIJd/lL5aOJbFX9oNH0a0ras0BkjATBaJOFGVqj9+q4bQBdWUaaDGVflqea2cH0M8a7Yp2flj17o3gsOURth2CJeE6O1eVgkwEkG9YK8dhSRJKoQYoFuH44Fvg474AFIK19ezZoPQagK8hVNfqaYELe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779680554; c=relaxed/simple;
	bh=Pf5Fn3fcejAi53FWScI2GlHkik/N4WpGiQmiIDlEa0g=;
	h=To:Subject:From:Message-Id:Date; b=AEu2p1XQ2w2lumcNcY7nyGGmW2nF6cWHgyzypyWXiqG1CWdkD/VGqEd3a9v/bJ/caTvgyQjfi/4OJQ3lDeO5rzlfZTVZHK/wIy0o12vJVz/2XpVsPwvgofFz47EKs6g9zfxWYltvQeQF1B6tqXyYKZJCcJvEkCPPUsUFatd4Kjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBj4wJjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBj4wJjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74EBC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779680553;
	bh=Pf5Fn3fcejAi53FWScI2GlHkik/N4WpGiQmiIDlEa0g=;
	h=To:Subject:From:Date:From;
	b=aBj4wJjhPokA9WlQmZ/2XUvfbUsr3qnoC1aPlWKIPemxaxaVF+1qd9Aq+luNLPz0z
	 r4QDiyxbSnp5uruc456IHUVBLlp9f36My3f61echrMiqeM4Gg/qa0vdpN1Lak/ZKx0
	 ivhrWq+FVDRhnQEcrCyOCBu6/TVF/1UsZfA4NyFGFahzgAUHUfumGhlUH5t8T/U8SC
	 v2xKQLAYdofWcO5ksnoDFKDy1VA/ORPXixEGaPJIbwJm59oYULXFuJKy9BdKYqgsmA
	 0sDP+gwtXbHgFu9W5SNQqfFYKYD2liaMCawqwW29h5e513vescZxeqJVY7B0xrmTY0
	 r0k6QQgfIJ15Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0813CD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968055369.30600.14407868355385325016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e616111216ff97ede18b428729076f3f3044b3115ddf7751d3d04132f99fdc
Date: Mon, 25 May 2026 03:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779680553
