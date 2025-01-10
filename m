Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8AA205E17
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736511354; cv=none; b=KtqjCOUghw5rg7JAnku2rnVtvKcQlEjiZKiZsUfhYV5WtUe6xpSr3Nkaypg4OftnjLO33cnpyVWO32lGbLcloPU8NG3mwSplqn7W1YJCW1ZK4XQItA+Aa/99jiYq5gJLk3m5zqyhZeMKgZuMMxrWkVxpGUxapXoyx6HtdmujWeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736511354; c=relaxed/simple;
	bh=wqK5qRII6wvXhyklIwGwKnRysLoJ+TPUxMB5JPMNAIk=;
	h=To:Subject:From:Message-Id:Date; b=ncuK6vtqQgUjdO+B/Te4Oc7H3vhB5m27RskhxFD0V+8LJ8oVJ8d4XdOV+JnhUz8umSWvW3jsSxkOTVnubEvTxv7+RoUbgQXmd8tVIF/+G4G4EfwqqUfy4GXynKekBVjh8WPDU1duCUe/3tuvlobmCZBrUxOMIHS47S8bje5O/ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WalcDiyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WalcDiyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F63C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736511353;
	bh=wqK5qRII6wvXhyklIwGwKnRysLoJ+TPUxMB5JPMNAIk=;
	h=To:Subject:From:Date:From;
	b=WalcDiyOR+0b7wV5B9N+tsqSxmPKE8BomyFahz5RHyrBAa+7WvDITmQe7Flz9ZxQn
	 clUMseX6W7ZYq9V8Gv1Xvh6kll+JpYiOK+O5s5BBwjBhoO3lvAKFH+09BcGhwyv3+b
	 CUUo99Jd3YCX0PB7q7Bu6xYb1tKiVRyw751eh9A6ZF8gu9+j805RiOu6vBCM8juMMn
	 OrnamuIu8U4zCAnCo4ELeBitgKEaGYPh2+EZpV4mbM+S703XnpYmWzxovSOscxXTbN
	 QA8i16ux05AJ7ZI8EyuUTxmSnAEcfZru8WZ6VjLn6NimPk7suW9iPT+Hd0eKOHwikY
	 hUMmAuKi0BIfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BB5E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651135361.11449.907003465088645152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8c3df7099964c76005d78c596f71846a8e62e98b582a3e4672bbf74309d3db
Date: Fri, 10 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736511353
