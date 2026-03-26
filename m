Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADF0327BFB
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774502694; cv=none; b=jnHiutiAtu2cwqnWwh63mfV0mTeMCqbNmlK7CHDAV9Q18oFnb0GQziRmXhdTYbRNtYOOxuQig2b+daqKv/qrA9ubVaW6f481kv/p1DYrTURrmZ9xke8Z4tfkZriei6X3O2oypYcWAfHxVjjL8PjhWlZEhWrlGCJaZBDQ3lMuo8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774502694; c=relaxed/simple;
	bh=YybgsG8UgZNnf33uMr3M2OKdWko7BO9vKfoelsxUXBs=;
	h=To:Subject:From:Message-Id:Date; b=Q7Nzdz1oaiZqbpOZW0eZuEvgq0txmGwiBStJ5TUHk4boM/C29pTHOQJkJthd05bAmQoprZs/6Kf1QufmC+kOi6GbJtJSDbQMTCxri00O155mC4bYQwFi/JL8rVv8ZNNEIaVHTV+W5tR3uLA1ppkrnKZNVPCQVWZm9tSyr4S9pFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlTy2OMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlTy2OMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9F4C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774502693;
	bh=YybgsG8UgZNnf33uMr3M2OKdWko7BO9vKfoelsxUXBs=;
	h=To:Subject:From:Date:From;
	b=jlTy2OMzohY1OzC77VA8sK8s+WUUP+snopljmJDdsf3TG0jZNIa2PTbrpdqokUtye
	 7WvAOF8eXKBl5LBS9l0kve4MMZ6xMbuTxkniNPMqZ8uqbkW3fJTIGsqwQB9WpvXheB
	 yinta9UgNL5V/pk38BArmifQuOaxhVWb5fEpLdTi1xGRmMQUeYRIyK6YWBtFRy0hHx
	 pTt1ZuNn5zUadzSIvbOdBeBTyNvlmVvQ8zE1GOdeeOOl8HRDY+awbPPUShPf4e6aUu
	 dmTKJf79HUURfi2zZv74uOUOPiiElAdgGBkYOnGJdAQPo5fS8UN7cRAYcsszD/fcYY
	 OAa/YwT61zeIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7346109E54B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450269364.22369.13646707083393473705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a841cfe7b26f9114701a573a6a2fa59b49699e0ef7e7787ef995fb22662add2
Date: Thu, 26 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774502693
