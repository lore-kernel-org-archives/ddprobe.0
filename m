Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18B16FB9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746131396; cv=none; b=roHG91ynTK9nEWWIGNSwZOW6PydLzcT5ac98LP4Q7pdcJINDHWn3M7Z4V28EWGICZVQ8UxhvqVdoVx4k6qktg1mcYwh+d42OwFesiD0JXFVc8mLP6TCCZWr/o82sELXs0+j+qj1uGPctlm+PW7osxi9A1LVKi0iFjS092eSVkUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746131396; c=relaxed/simple;
	bh=6gWBdstaMb1PtenpSqh2Z3n+r4r5e89/cGLl1e7zX+M=;
	h=To:Subject:From:Message-Id:Date; b=kkaeCJotSZXU6bddqtDbcl+ggcPO6kn6N8bJEl2CSNifIABDD21yinYLdgJnOB8jZIRwmKanj0phcioFGqZGu/0RXG1uvFWpHnzHaq6MfgY+LXCrtksmD3ch/3UhabdS8jb4nkfbP+tyibjVcSO24nQBNTaiXlXpE0yLJchK62g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCMg9Xa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCMg9Xa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746131393;
	bh=6gWBdstaMb1PtenpSqh2Z3n+r4r5e89/cGLl1e7zX+M=;
	h=To:Subject:From:Date:From;
	b=LCMg9Xa1PUOHqFCxwx8mwo+KK1/h93SOpBMASlIT/CssE22+5oLRTt7RgTEwvUYXR
	 GdK/+yG1cIJEFgYY8xgewF5edUnhM2BF/0vTxTYb86h9UiAVwhfcSHGdGozsu/FLxS
	 8ku6hYI/oTj3O30q4pkFiYpEj/CUdD7xo91mPwla/KbXXgxQ8X9KKZgCBCH2/c236O
	 3qzgnuH0WL5yQGRGIPr06tByTS9rXYmxADrl+ZV2F/l9/tim2Kge2wA960+yVeD2lZ
	 EeM2w4ThhiBMHAb2PFa9fMgVEjaz7MoJbD+7NisqvTIgQfNvZeo93iSPwCyKSu6SEr
	 nd1ikLoiAmDeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FC0C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613139357.2641.9216303631049784452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f99a9a2fcef660eed58efb2ed1c284c5b7d36dd061764901ecf289cb89db9c4
Date: Thu, 01 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746131393
