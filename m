Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403984B1E59
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747272594; cv=none; b=FiyVLUgbnKk58untnFfVrB127W3NgUp+YdIAEZhrtXTuYOnskZcDa0WZmz14GvR30o2mcIIKw8usBAjH/M98kuCX2xAY9ZtTwnvhlAJsHgqPAZY4PkbXUfkhwy456MFPm8vmIIk2O3ZO9s3K3UdjgVUUvIJEGw0kBkfuhIAN8w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747272594; c=relaxed/simple;
	bh=9OETDutYdvcyInTJPs5NgsMps+TqgIPdCxZCNWfeR0U=;
	h=To:Subject:From:Message-Id:Date; b=i8gtwWbJ7C8nJikf8j2ile/9zBeBl7lrsL9ICLFnBIziIHyCNkazrfWq9Mw8FuBHoco1oxiyTzJixzNHINk93J+w+alb6JIUA9RQN136gwaSjNNQ5hAqTVZp1RkbSJ0GVn6YLtQPl79ej3P0OJqtpFOpzxzkrfV/GQ6e16WFC3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ2aMoeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ2aMoeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C02C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747272593;
	bh=9OETDutYdvcyInTJPs5NgsMps+TqgIPdCxZCNWfeR0U=;
	h=To:Subject:From:Date:From;
	b=hQ2aMoegJrpJgotFeGydVj07PzTwDb/3egRbLSr9l0h5lmvdmiS//q1pRM29aKln7
	 6In4QkRCzOWyOXLqjS0ebbW52RyQvGW3VXIE6nKKzP5HGYwOclpP9Jiso472/jb7uh
	 Qiv++rr33ikwlR+jSQQGxS0u2xac6I5PsxteR2AEbZO4iotTOP/oC+Amzymk1SA6j8
	 i2IwZc6Jr7WcbFrtTTu4bG34jiBak74XJyWRJwYagQSbDfctpYVhwLHVOxCmSLlOSV
	 KR4f8O78MeUgaZ8FkHmrUBIvPnwjLiMaTl6RCLNyNALT4JkEBVf+dp6f5sVR7UdKdC
	 ejnxFVWSe4JGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA9CC3ABD8
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727259357.9733.12730858200948052829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984ff7a9b590c790fb837e2d310a7cd62af442382cf60c89044fa3e39be5d697
Date: Thu, 15 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747272593
