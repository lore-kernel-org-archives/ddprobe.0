Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC0E28469F
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770410034; cv=none; b=ay9zQP8rLzaEtGE36q0GY+Nzo3l6vGBULKyYIEGEjxqAETZ0oKo2XmWMXEGjS3Xzhcfrfnq0VpMkTw2U4wAKaNy8Z+BuUUJjwFGnNMe8hJnFNfW2p4uNYlZ9GG432+brKvMLkXP2k6OrJF2tia0/FNt6nEfOU54t7vktsGfj7q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770410034; c=relaxed/simple;
	bh=avPH0zLAZyCyrWfUYcoLdD+B95wPTJytOq7yylyci/A=;
	h=To:Subject:From:Message-Id:Date; b=CPEq03mg43Fie8WdE1Q9ETCSqlQI7glzov3n52+ky/MDfQWYiBA5hHruHezpMV+aee1B88VGoQgc4HP4i9gqYmPX8X0pFouyKnt70LdB2zjEG8IyTvEpo7PxVd9ntDresRGuLeNGen2PPYnWkwE2Jc5RkxYO/lc6g8t/lrWmy28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbfW1+gj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbfW1+gj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B626FC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770410033;
	bh=avPH0zLAZyCyrWfUYcoLdD+B95wPTJytOq7yylyci/A=;
	h=To:Subject:From:Date:From;
	b=YbfW1+gj78EIrXp4tMlCebr7oysj4644aqEotemRAnCCxlE6iQXc0bjaCPLM2Gl5e
	 iu8tvnrZjVsnWwaQUKUfZFfILdstq7AB6rI/mPONTM0UIDOFLAJGqOpS/yUBXMbsdI
	 tdDQYOhFrBIAITcCRq+ih6o/05Br15k7dI7eVYDQrGde3I13iNkXQ3t1ohY9A7OZ2O
	 XGhcljKHgQKmehuIB8dLY8mf9RX155HTglPtBmqWqNCsB0NhZLsXnTz2YhNcFsEf1c
	 yKPlotzr8uGxBRLB3SyYhm9+C1dUZh1ydZTR742e6FY7h6lWXwcRKigdlKarL1sWCD
	 hFEkRY+ik6hbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AC4EE6B59
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041003364.20123.4396280607747839207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859d7cbcda4533c8f0cb860eccb0c1c421045d7bfcdc64aefd04a704bdd804e4
Date: Fri, 06 Feb 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770410033
