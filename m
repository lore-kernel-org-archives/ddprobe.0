Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2CA142659
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730660154; cv=none; b=Zp2f4BvMQg6v9MCtd/WldIl4nGDfGlQwOLgKqoM9NGtcbzX0ozRg9bYZOuWlLczzsJKAULfUTDbtwdrtkpq8sCJ23GDx7QwVR+KAz0HCO2ALXpo+qNSqI0x//byZnaJ0TDo9yOcJjFnQOPOwwdg7/c8wQqn+K7GHGbOtSPbq/W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730660154; c=relaxed/simple;
	bh=ZXxDcuFeejVO1Ya9ctKo96zisvAHSzWcAg+s0aD3EU0=;
	h=To:Subject:From:Message-Id:Date; b=W/UvXXP/ikiYAV/X4JXbDx1B7BEK7aQl2Fq6HR7SfQGnnQQadqEN0ST8itRYILzjkuzWKkcSwOhcca6uveMPiHn572wXiGTUmlG3jlsY5x0gRiXUnUj974Wf7OtAuaVdJwSG/cgCPF2/I8SFvrQ05afVON8pn5r98gl04fwAiVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPY7c7F7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPY7c7F7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70D9C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730660153;
	bh=ZXxDcuFeejVO1Ya9ctKo96zisvAHSzWcAg+s0aD3EU0=;
	h=To:Subject:From:Date:From;
	b=dPY7c7F76rW2rAUcRFvSL2ickkNf66hE7Qd6Y4qU0xHFU0kLN84GqWDAucNQnVh2/
	 ES5ScYShi7ZV8GRtp+uLcB5hXXRAUTvj64eFtT8hlkRwmaDEALIyxEGUyGJc7UXHrB
	 Qk5FS3XvZ0B9wW2p8F48nDz0irCIbcDbX0ReUYR9xBzm/lEwZ1IvX/KhKP+0YANOxH
	 dZ0KSB1hx6LDuufKMkvXvm9mhWb/JgLKQhwPIkMzWDSof5JrEhS9RXQLxFGT6b2sgd
	 NTpHYyLoY7a71IkWvqVhSvu2o+dFcehFLGlWfG+dQgTZFj635tTohH5yp1XugbXSul
	 xxGR1BrfX1T+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98285D1118C
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173066015360.14987.7906496873626168786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b75cb5b12d98c3707246d8cf8b9c51bada23989c0331b1b15538baf3c2d17aa
Date: Sun, 03 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730660153
