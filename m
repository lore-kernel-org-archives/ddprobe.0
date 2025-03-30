Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534152C187
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743311394; cv=none; b=u7h5fEGId7puWU/KlRhotxEgod0pruieU14wk/qfSk9+mZNa8J/0fSchomIZyDLRekMzTQ3gqp88f8QkJBbjJrxRGAaHdnraWeIjFE93kEe3NpmJ+Xcv6uD/JtCspS6IheZ+yyWvKEXxoV/tp4ZgP5D9LJFStf1CD8sixqeYD00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743311394; c=relaxed/simple;
	bh=5tTE+3N7Z8SP/sDRUpUoybcryZMZkOQvvTnrDuYB0DU=;
	h=To:Subject:From:Message-Id:Date; b=THceI3axLvd0ONg5tZr9aumcRlzl9+oYci51ddP+Ne2Y3Hnw3saQALY993e0Db4iP/SnNfF5vc37kBQl6iB/9ioQIXCsQlUnUMcWzhs9ndAHVbzjggIKtd1lX9e/A+57C3krjAu+025rf12UCN3r26NyAZdWZkGfYd24w2lBqaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDwpjtOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDwpjtOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA30FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743311393;
	bh=5tTE+3N7Z8SP/sDRUpUoybcryZMZkOQvvTnrDuYB0DU=;
	h=To:Subject:From:Date:From;
	b=BDwpjtOObNwoWZd/51bMqI0uyWXZf1i0xzWU4eAginzBxzJvbQ8Wn9Ppi+Mz1HkXP
	 Pkm+j2RqRvrfQteYfOMWfe2kagvnYenJJRkyK/dcTVoO0uXoSgXL5s+ogKNs54UCCZ
	 0FCrRRoC9MPhBntj4AOt/UgVw7bkoqHvfjar0UYRdq8zjbsTPdd+Ba741oTmO+xinY
	 B7QfwI8YuxebFKLVJQLJCo5fO9nN2C4SAt7HlFZcgE/K3DQHR70Ff+bALd+S2pZ4B9
	 MarNvMPFmLMrx0TageUOmvVsczGLJlGxgz8Hmy3PlnVHTKDh+mUmCI9/0WvYsF415b
	 pbwaxNx9sFYog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930FFC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174331139358.29767.785903283307926289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec580825605fbcac7febe457680be9975767a5449e1634a83377a631eded6c16
Date: Sun, 30 Mar 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743311393
