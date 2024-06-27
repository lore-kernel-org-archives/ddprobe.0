Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BADD14D6EB
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719520463; cv=none; b=F1/D42bfYAw51Fh9eA1sjRb2RmV8E06/i3pscke3TvNS3xE9BpN5VMWzYCAR4GqoJvK2PMFu4ZGU5O/TikAczRcafyQ6o+vZmq+XFm2dwpOjJHQkX/6aNCCAh/yJwA6Bu+F3qJt7nRhzCpM8sbVsCmULp2uEXsJqjX3QjtEQcCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719520463; c=relaxed/simple;
	bh=VzTquHkjtKzl3BVb4qHnVBfemMLYaOdgtWwHb1Io1Lc=;
	h=To:Subject:From:Message-Id:Date; b=OMVtfsZIlvqLgk18T9/N/VDwrUYjAU4dN0eBnj1tbpuKtOdqH+kfywlkjp1n9kZl6CCKuPZQqyx/41HtktDtdvCAtkQs2uS/D8gkL8EVW44NYtwZAo0h/J8eUqsuRQZTTjczutEUYuzTiZyeD8/9kafpcRln2bXdgILDQz1CIMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Og476Ets; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Og476Ets"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF521C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719520462;
	bh=VzTquHkjtKzl3BVb4qHnVBfemMLYaOdgtWwHb1Io1Lc=;
	h=To:Subject:From:Date:From;
	b=Og476EtsWAysheUCFGHCjrLISTfxRyOpY4LmgIoT4K0TNaQdCH1/lFLFL3YgsFy++
	 HI12z/5xqjJMHKPETfh2smji3mr/7GVxcbYmDesSHRhkysZsyZ3eR1jsBe7Ll96Jbv
	 aheaUACLgyZcgl1Z1lnxNnTEO363dmzmnIJAAOCSFJCsOY+6li+h9h2IPiY/F5EK/U
	 6IvZ5CVBvlyCw7pmVZUS9E6KjSXBFwhawclv/oDOiZ1mOYBzgvu6q5B2rUgQVt6lu0
	 FuxoxQ5oh7PxmdZ60ePRdUJkEnUuyV0Diiq5ch2Air8SqI349lqqdB7aRbklt5CQzh
	 9iZ5+B6VqT5SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD39FC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952046276.17435.3607092494673893732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683395e42ba4794f4208978de418b2cd8fe0fe1ae3eb3eabd25329dbc4167839
Date: Thu, 27 Jun 2024 20:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719520462
