Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF7F23DEBA
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733832354; cv=none; b=Ob5R+g4kJS0TWUhHfw7h8iusGkMf8FZQa94DKvEu4EXA/VuJcV+SY4YQH0nkhgzRym7iLfX8PT9XFeqKXcpaczGGanOvMwvFY+74j0dQCuwF+Pas3V4LCqrM+a5KOG2u55J0cieOo1z3cFxkE4bi7oPWApwM73ZqRSTY0ts/6gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733832354; c=relaxed/simple;
	bh=oy9hSv/a9KSKAWMLT9cPzrd2cckBh90md2dtGU3/dCI=;
	h=To:Subject:From:Message-Id:Date; b=qQby0GIo99eP8MgqEEop/RbcEZFH921A0jDE0IAydOI5K7q825tyUtUNjyhS/GYPD7tLoEOGJJbAr1yIs1/NeXHvOUb517AZOJjp/YFxvUyYzKN17hCmVjxWVWH5moP1vzcPBfpk8QV0yQXRDO1gKRXldUUiFQo5vaN8AEF27N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBZWguZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBZWguZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC5C4CEDE
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733832353;
	bh=oy9hSv/a9KSKAWMLT9cPzrd2cckBh90md2dtGU3/dCI=;
	h=To:Subject:From:Date:From;
	b=oBZWguZLVstOH5T9mkllbgseHa8NDxDL2adv9cY0TUGbpXLlFyFiz0OJh/dJ215f7
	 MxcgM5Amys30pyA+Ath8lep6ifwjMQCEPRRS8Aw5T9InB2zWkM+nlWx9xFFMHbDDHk
	 4wNw30uUpv3Rt6KpVYKCiGHbup3lxcF2TD3BZ9syTQyzcf3Fou9x+LljfVNqbdaeDp
	 ezHXVTC7tbPs4g8PP4SZWC5OZ1xLkcNluUsSmP9aD8Y/15QapZzTXhC9o++AiG27WK
	 rvxl97wTpiJwy2uUF6Ku6lCN4F/C120Nf+X989KvFOhSpGxIIp/ejE0uosLt4lbWyd
	 uJSXfWhwRz6qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986E5E77180
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173383235360.367.9474382815979990548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4cff029c293910f637717fde428b869960565af66b1b556020f0bb1ee3fd3f7
Date: Tue, 10 Dec 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733832353
