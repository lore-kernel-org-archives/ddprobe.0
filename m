Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2F42E657
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 11:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713092963; cv=none; b=K7cSjgbfySKYeGWtv3+0MQbSBXw1VPH8vMfSM8b/y8zZaR6PeMixepR88NLdfNMaRG4NRdqGbZMdvwy7+ZTGmBT+OMxc6onZQNiyUS8oHACMGbusSAH0qp+TCCvNsy5IFeZnZbFgkCubQim/C8ChSJ4XYmdHX7ZB7NwVuQwdFSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713092963; c=relaxed/simple;
	bh=oM9yukGrdJI4hijm3qO5CLxL58xz5DKnQLiaqLvd704=;
	h=To:Subject:From:Message-Id:Date; b=Ox+Gmmo9VHSY1uAVD7tK42AHqACQk54p99wI6hWhyk6izv4hAJIMdXdZWlc101TUl/eyAezvyLkBhJL9IrXK2ll40iI3R0ZjG7IKIrJuTzzTQ/f9MpjJ28MeWjX014jQhgeHl+cGBIhnAKTWH3FURNK91lXzFWvm+Xhf3N4av7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvMLhIrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvMLhIrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7156C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 11:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713092962;
	bh=oM9yukGrdJI4hijm3qO5CLxL58xz5DKnQLiaqLvd704=;
	h=To:Subject:From:Date:From;
	b=NvMLhIrQLCn+sLRkwS4a9+UwZJcI8+AKXPJYW4cfu5+Mc36ig0s7D+6uJXQytO5AJ
	 STNU0d8tZlJcIret/W4kxM3j0PViICmW+xQaFfOy+mxqwNc17fgtwEdPVb8gLSmtMP
	 N6HzPH/k++bMeG0dMHSrWK6zszTF7vZWOtI/B/wMmARScjHUJ2VC6YDjKDYytnsKcC
	 Db8R07vQ9j+7PUp3hPzZ2OC9RJcLfTEaQ6YEhauivyFLLmiW+P9PjViK9mvSpyMnj+
	 LXO8yWI+ryjEAeKTBeh0rhSgjmzrHWeDgjZz5NGBgmyyTuW6Bcumhd0eoKzedyRpEJ
	 lBwsRC+1MLBfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C342FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 11:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171309296276.25184.12660535045232917681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53a9404c93aa514d4aa0e84f4ee1ee1a8c59c6c27da03a7970f540d28298af3
Date: Sun, 14 Apr 2024 11:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713092962
