Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8098D175A68
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791594634; cv=none; b=K+//7OjYJHKD2a0YvnHWX8RNQEATvwUqbgCJHmiJecfroyOaKOInLwpgAulNc3Nkx3M7YWA9S4+S7L5WKeIWviEZOay6gzfKgjZkfZnJjBn1s4M3H6Tgw6egL+M04LxohMaqNNWk4RfN8w3owW+1bwHIWbWzCTditmTVrnvITHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791594634; c=relaxed/simple;
	bh=PR4TdEdWq+6PMWvPWgqH9gQX6H6uql5ynTTKiRoYEY0=;
	h=To:Subject:From:Message-Id:Date; b=DdMNPLRbC9l68bU1BJGe3L4O8A7MX612JJxRJsojBfnLATlxwj6X5ad1dQixz6RCvLsrgdK6NqG9598GfwLlqzHZpYFnUCAERTXF3bLfqX7r3CvfDV92EFcqC4fdjBpLqmpAff/UwbXHJafBgRuR7Zp1hTSsxrehmAfuWfXfwIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFUSXx0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFUSXx0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E020AC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791594633;
	bh=PR4TdEdWq+6PMWvPWgqH9gQX6H6uql5ynTTKiRoYEY0=;
	h=To:Subject:From:Date:From;
	b=JFUSXx0fUvxU+e/FOn+9IxfFUxdj/45KhhfgAeXg01g0kjBh0eDahs+ZSGg7+rb89
	 N062zYcKunMbXfvR1o87Kw/Flkn/lSqx3mxLsBrwNaY2IDuEK5R+ZJkwVvz7WAn2Fh
	 xJxJ0F0GHGJrSJXozn1V1X9NtrrcMyMnuA2AOpI9vFrhvf76pWECAys9/AAVtU0oXp
	 4J/4xXMQoChdvcMUewLnpK26U8pAyQEmwCrZMQ15zbYuBkCQqHYgHlO+bZzDGQQtWl
	 4+yjxeiqE9CnC0KZxASBKwZsKZ8BozgM0Qj49dNU+pYoD3f4qlf+/m0264qk4t1iVv
	 88FhLlefwIK4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF6BCA601E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159463368.23248.15654103293390797465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8d3f76b00e4d51f9f1e83164f1119a7e1244548b5aed9c9241ab4e29a7d2a5
Date: Sat, 10 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791594633
