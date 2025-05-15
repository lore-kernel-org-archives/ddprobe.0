Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB5D199FAB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747308594; cv=none; b=NW7HESCMDFgTYW0Ra0MErQh0WHy1ddnDRWjLpg4XvRNVS1AJ8y8sg48ha9BqZr0fiI3q0B0IWGdjOzu6GwNl6kjEWlmkFOtIUGTUyIjQ3iSpSe0lIwM9YScp/uGwHt9XKQycyRa2vAblua1O+Svi3Bu4nKndSX/UB+Qi6xkbdPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747308594; c=relaxed/simple;
	bh=h7u9MDHIf/i/cgPIqqgE6n18vKjpDklYrF1kAadZwqg=;
	h=To:Subject:From:Message-Id:Date; b=DDhCRbFlJYrmdZzeLK1j8vxvqEyC+oW0H100IMLL4yFu2YaTheh6IzwkssnQBRHZTAjBs+XS1BVohL1thXQN844AuW2OEJWlxR4sTJDBw+gjAOv34FksHCSsJV5bdZdhH5k/0zRg6frolf/DdULRRAo2qtaPKJT2e3Xuu7fDkiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gftvfO4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gftvfO4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E2BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747308593;
	bh=h7u9MDHIf/i/cgPIqqgE6n18vKjpDklYrF1kAadZwqg=;
	h=To:Subject:From:Date:From;
	b=gftvfO4+cX1ZOUMnfKmO3tobhEYMZj4hueUqnlJFnNww5NQcQcSxWy3eF2Q3ax1b2
	 2I22KSGQ2OgZCaK0Xp5GNen0SwtqjVIFSyR+cgPkZUGygo+scw85hRpX68WDnIpS5O
	 LdFzq9klDDucwHdKOnMeRyFdPKe0JxMcdHAYikIPf1dQPYWvh9JSPzsAu6sjBedkBU
	 JvTrh7Tk6j1QPaMXy+ejaJnrSzLEMLALlL6pHQIztmiGvOrWpgdBvdgS1AsoascO0U
	 i3pJFjQ8gwDfab/7lbeyZrcQ0fBkEuVYw8g5wE9/QnC+IW50S6urXypz7XDWswCFiI
	 v8O9HB2pB5zcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F83DC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730859357.4787.12839898644741791409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872c11ce0b2fc670807e37adf703447d089fdf41cd8eac09c00233bfbed3e92a
Date: Thu, 15 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747308593
