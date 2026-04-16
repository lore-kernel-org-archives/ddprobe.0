Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6617E30EF9B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776326254; cv=none; b=fZHKD9U1VuEjfN6G7+OtxRCh9/k9MRzQiX6Ti6nONsJQjDnyTvrHkeUtdY4IVhScUccXViL3uJQriidAXHLxduaFoPtpjPfMt6iKylCMq9ib7LiXhghN4tIxqPSS03p1DH1KdIHDSGQJ1Tx8CMSrfVnaIpmOJtvwr6I557y9xvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776326254; c=relaxed/simple;
	bh=RuO0NimS3Pgg4GYkCmQq1BdAOA7rgpNDzE/IsNftcaI=;
	h=To:Subject:From:Message-Id:Date; b=J5jxmKAguhoqPlIxuGZ+c09CK8+9i4SjK6+BuDWdARckMUIF1+MacC023RB1tyJ2Cs5OqUmTfzLS0Q3CCRI9m8xUoicf9G5jtDGuQjEGGzZrztdsCvLvf42oArigPGBX20zsrQMeCgsOSOT6faA90oQjyhGQn25OG83VnwkGZ48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nohaB7M7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nohaB7M7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B872DC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776326253;
	bh=RuO0NimS3Pgg4GYkCmQq1BdAOA7rgpNDzE/IsNftcaI=;
	h=To:Subject:From:Date:From;
	b=nohaB7M7Ga/9Q7rWpxZmqHPofKRbqJI2YDS2Vrkq0OEC644t6GP3kxxTtINR8LyY6
	 SPON2tO8eeBIISupXCi9KxV9TvmKc7lTgv5tUIPrFOOSlZ49ooG5+Bn6dV1Y1dEeC5
	 KD8RBOozzbARbuW5gJBGLbo4LpX0+7W3Y0ThIGnRdJJe9QFX6C3iWc1lrbpT1lUYh3
	 M7ksxtiBjY4yGHfmh4g1ypi1zWn0G6BL1PTux1DtoorZoqIGFlWl7++m91N8pgUYfQ
	 bdsXXElnXdHkj5uvxE97Q0gRywMLxhzOu3hoHd0lgkOkeGpKr/FbOSC3QBN4piyCnY
	 pJuj/Mw5IlmWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA565F8A141
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632625368.3053.8617471688879213442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620212f043c1f3664fd22c815dff865da331ee23733dd813545fdf969bd17c50
Date: Thu, 16 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776326253
