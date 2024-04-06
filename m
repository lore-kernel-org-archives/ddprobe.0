Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0766715EA2
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712374097; cv=none; b=XQyT8Uvqv7izArVhszcSF6gxqAfIecF0La0lvimVYSAJ8J7oMawwhckDWDVT78BSvZEWX/1rKxUbKJMcNGCTw2KZc7wYw8HHfbn+Q6XF1GxraWmRYssr8wyl5ukD/8iBc8SFK4NQiLV6BAH3CNz3GeY3AVvuZgeMSwtHK8w9Eoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712374097; c=relaxed/simple;
	bh=rBXK/iGF1C1XMNxTJyLAhrUHmwkwkZCtthZZE1nbGLg=;
	h=To:Subject:From:Message-Id:Date; b=AP/GuLbu7cZ5X5SUyuk8YwXY5mrMW3luaoeFUV7z2uAwmoQip40P0x9lqeg4q44/rHjb9pvsgCQUSU0LzvmDJC4x2bEjJxaXVyvrf/9fXEmuQXJHVnO8ITHowwtAsOb+tQe2UIQcdPxxcJvGsg0gDE/EAK5JXcY9SqpC7P22jYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdh9nBRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdh9nBRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7586BC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712374096;
	bh=rBXK/iGF1C1XMNxTJyLAhrUHmwkwkZCtthZZE1nbGLg=;
	h=To:Subject:From:Date:From;
	b=pdh9nBRZUsdsiUeCcEYRA9Cwn7hrZsFrH8wjR6ap7/UdY22Wu35xgQpee3Tvau77w
	 I0L/Lc6fySsF7MHQlDrt6oYwohCtwR8VYCzmCBN4+ttYh8tpBZE7QFu5BT2jzeWWRe
	 eDaRbLfwutgv+HlKLAsrtyKg7Y9KWv7gQ7ELAClUDWZmQKpdTvkYdXLKJaEFFLZiFM
	 Qun9fDjPL+aomud3AFsenlSgxdiCApGxOANLkkXj7YojTCnOpkzYGW+YgHB/Jvx0m9
	 93UiQH+pgKvxW0w1HzzfLZvVO35QCuiqblASTlvirS7mvM8yjrYOLPGAk4o2kN8KO5
	 ouoIEudA40uKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61309CD1292
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171237409637.16868.4897926552094897434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c76161ba511e2b5d3246dc8f94bf9d3cc89c8f9be176c81b49baa37f660a45
Date: Sat, 06 Apr 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712374096
