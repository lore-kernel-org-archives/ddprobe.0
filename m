Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012724EB46
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709056697; cv=none; b=gKnV3SP9wGHJihHXWlxozEOBtm5OqszjwxQ4xoHJA2a0GdV4hBHIJ6jYIkHweUeg8OVLIPiuRuXgkr6m8K1cS3Zy4BXSgy+cn4PoLIVHxI+/6TTQtrtstyRmIexi912WsUhg7hRKh+ST6VKZSrcKF6LSsvVgh7OIDi7RhwVutho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709056697; c=relaxed/simple;
	bh=nAHWwqTEs3q6xMmL4N89hYRhtYFytsHwNVkSlu3H92c=;
	h=To:Subject:From:Message-Id:Date; b=a/ZouRW6BJ2C4nOqU/LSdf1FNaNqy+qjQtpSBU7MNaityUaCY+vDttk2/8IFyEcPGb/KfN4ekwBY6+nsCGr4d2Q7FbZDeS5JrIwMhisRapIkQtPTL1Ueu4oC/m+I7JUO3zPHcqAeOglmJxRiR5Dw8UCqvYyGaCFkRucTg8yce6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jx/UvfZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jx/UvfZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB66C433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709056696;
	bh=nAHWwqTEs3q6xMmL4N89hYRhtYFytsHwNVkSlu3H92c=;
	h=To:Subject:From:Date:From;
	b=jx/UvfZvU9fk1fibrwRIatB+pwsvPJfEOw4MnBrYeTwAOVI4NyK5HK0RYXJbL9NMz
	 gqr6DBRhjilaeHs1irSVZMYuR23qi0pub9d7TwgLSvlik/kCYaX4dkKCFwBKdWUvCs
	 XB5EaYc3o4oauzi/0hHHxQOC/js7k5mhZRzkesfKTtaUpwbJqeWRzZq9DG1XpVzCX2
	 b4UFD7a6EaZCR7D/enbEzfRxPBQ6+U36cdInZTGEZ1LMnI+VbM4CQbHvlfodgWH42d
	 5A6AIT3lfRZRZXfVaXkRQWwQVaCWkrVxPRA1ts3RPZMthnH5JPVeJwtVYIgC56OIBO
	 CfFv8az4+HcUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B72C5478C
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170905669636.17538.3593291088155729658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47cc417c2d9face5aeb550ebcd879dd9139f1a27c079eadfa4fdf6a9abd9f02
Date: Tue, 27 Feb 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709056696
