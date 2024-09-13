Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F10C7580A
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726253154; cv=none; b=mr61X0d819kunZee4HQW6PWGEJ1Vqm0PdX72lyQrN+egrDza8XDEwt+4oauXp02ZyQ5pRxmgruhU6W/PZZ8lFB6iUIW/WE7/MZeFtlBJxsFZ7hkMlDA/wI7wKZXKQxCd3+bKYkPCVcxUzroyF7fg9PAkTDWxClW4cOUZDMutYhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726253154; c=relaxed/simple;
	bh=TeNEVdNsH1ttSygvGd+ALvHsMK/3Vwj5Z0K+KT3RnU8=;
	h=To:Subject:From:Message-Id:Date; b=Te0hWdnvZr38V6V68nCQeI/xiYbGY3UlLaJx91B+e2CqlDK171A4cAVOWuI4T0IE/AB3vpgLJRvOqN0mkv4xdSTomI6K/QxlTij5u3XP1w3Ll2o4mWUlaIZBhvLZoIUMVMYZmtajvsW1jp2CLdb3Kx118qpbNx6dKYBrIjzwGdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfXF3mG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfXF3mG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3CCC4CECC
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726253153;
	bh=TeNEVdNsH1ttSygvGd+ALvHsMK/3Vwj5Z0K+KT3RnU8=;
	h=To:Subject:From:Date:From;
	b=MfXF3mG+NoQVM4YymBXUzoQhioyLj4hV6yaV/GPIgckkZMH0dTNZFDwE8I5rEGY/b
	 rxT4SsQ0GFGXBRjVaNdtTBGcy7IZo9kZl/GdlodZxfkfnLXib/yi1dtd8WjSfUeQnR
	 wIE8qf6A+u6ltQ7DiB88+jzrx+bxJonEq5KT87iHMz20yqDUbKUjISb1ckt/g2h9zU
	 javVOWfWxwKf24Zx/W3cvj09IBeyixAbWZuOYYUA58MNTPsf2yyRIKHw1SNBtvQe/T
	 McFZgyfkRhuVSmBQmSJslS8kpOKowWV3YP4cXz0/jY3XjtRthBM5EoVidsOWOruHwL
	 sGjRclgdFM8YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9716BFC6172
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172625315358.4344.14229427548040928768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78eb46bbf988d075b338e13433c03facf63d1eb2eb0edea6b5d5703d5730bbc
Date: Fri, 13 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726253153
