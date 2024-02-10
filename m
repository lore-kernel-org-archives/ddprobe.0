Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DD631A8F
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707567497; cv=none; b=pK0Z7wMpUKUbNZvcQ/22VnXtRzNfsD8E80K8XmDLbU/NnLFkQft0sh/tRGYXlnJC6lnKA/0WUPzSoTjPLFf5pssz5DGp5mlhCfctotR1kTBh8NzW17o3nvtt182IWiJNB/rXtOAHtHraAD1qArUD4B256NTlYzczLgSkLVnNjg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707567497; c=relaxed/simple;
	bh=haXdOlW4q6H9TL4mRb5wbOf0xUPK8fZ1qzmC74By0NU=;
	h=To:Subject:From:Message-Id:Date; b=lFhg7NEtPxDKHamgkorr9UlkRq6anfSS+NGNCbKczdLMhsgEyBvEJi3vmBCpNtrdhY5576EvofbwJDltOfBA9pst8KKFsrI5sr2J3qI6zgPyXgeGwoTAC0qAqY4aCAk1p8IBfEoqBgfwZf93Y4ne7aqB2icM75b63xebzY3Dn5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diUGWNXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diUGWNXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8EBC433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707567496;
	bh=haXdOlW4q6H9TL4mRb5wbOf0xUPK8fZ1qzmC74By0NU=;
	h=To:Subject:From:Date:From;
	b=diUGWNXJmAs1AMf/8KCLLQvYTqPMfB8XF+U5JsLq9wP3pUv8Dd3RA2YxHWQ4wVq+D
	 IqZUG3//CJvlxWqFGyj5rPoewL3XW69w7k3Kiza/xIoVIcwcJbRBro0G+1hDS7r0RQ
	 qtpUqf8r7loZe3GeUA9EOCGn/d+nX+e7Qb3I6RLoDgNtk5GwLEy5Kz6hfXTcW1HdoC
	 J+gGlc+hY7fZhH5E4COPBCg0SvltLZ/g4DenAiWqDphTWUFam1xupJYHGQRL9bizi2
	 nVS3hvxM/K246emM/1mqK1f3jzTObZG7RRJI0fM4lrJkLBJZk5o2i0kPXPfIny+3e3
	 ELghw0tRPbHkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DED3C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170756749636.27799.4419806670801513864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464d9a0ba40e6742aedee7ab435ae8c3beaff9b7ddbf1ab0cc5ea8fe0fe00a88
Date: Sat, 10 Feb 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707567496
