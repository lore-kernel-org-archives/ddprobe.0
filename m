Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147063D38E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718127503; cv=none; b=cH71czke7htQAe/XKq+f5Ej+f5/vjO5mrLXiPsv1TzRW3btn2ze+sgJ8GUeGT+qxKLvWpZDUHurj9knfNRaUfL2dOCLRFYMZMVBdt+uuyr81gePjYBr10/SxOxah1c9cCdtc5jTFGUMjqQfg3UYPErAdNqEuec1+LahvzUOebwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718127503; c=relaxed/simple;
	bh=tW5YHiYsrP6ctPXRx/pB+Hddu4vvmcpwbQiaVfklowI=;
	h=To:Subject:From:Message-Id:Date; b=jMOJIS+/fw4D/ybMUan+wKEh9u3FhO3X+mIbhJvjrP66sAG6RKw0Jd99uJZ65B/oadilmBoPfFD7uvE3LsQ2JSsMFG4XSPN7PkO8ilXBqfd/lsXLDr6JFW0Wp31FStuEDPrcW8LCfnhgtmoGvE8b9C+uCjvq9x3cnX2wyewBpcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIYChpVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIYChpVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B39C32789
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718127502;
	bh=tW5YHiYsrP6ctPXRx/pB+Hddu4vvmcpwbQiaVfklowI=;
	h=To:Subject:From:Date:From;
	b=sIYChpVrlsebdVxkCP6UwzH8tV0oW07X9G9BEd26XsoapDqPSmo2qWOXmvAUxAQSA
	 73RpsTw7aIIk2OFlqM8WnYqJ/T6tIBa95m6981qzeaCOGgKXf3ofLuWjdC8iMn3ret
	 FqZfiHzp64FEvtlZNCKbvqbdJfcHLxeO8H+pF1XogwUys3DC7xUKXQgWxNrmRIsU+7
	 1TC/ABrmvkh33q6HjTo33maRAWMCyHIgYiQhxGTPOGhft6+AHksDbX2Tmtqvp4SmRu
	 ib0xSd456VXPJaLr7o4//4lGVHIVScCse8YL4Z8FZJUkVfCfEb0NJdIVeVarF8J9jQ
	 zYL2To4oiQitQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE241C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812750277.21504.16641319387078996590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd86a0014d9b5e5e2f3ad99e46a66acfd7f40f931d8c4a952c78b47c64674e6
Date: Tue, 11 Jun 2024 17:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718127502
