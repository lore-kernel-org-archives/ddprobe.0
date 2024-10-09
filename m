Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3161917E3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728471354; cv=none; b=JEAeS/c8+uUZ9zuUkqOg4Xp89gs5+e00XViQq9GpHvzfOCyLjRHrSSZyk4NoG3mFP3GGYSAUmQxEnRW2vyGZRnZOKkRDzKHPMRIR+IpeDm1ZgUe5Po+ntD2w2e/0urW89FlMrK4vNw2hCdEJHyaZN+FAY0RGXoysCotwXLFPqwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728471354; c=relaxed/simple;
	bh=Ad4CqSkHqnFJYDAVyLLy9iKJrlYJiM4I0BjAwkw+9CY=;
	h=To:Subject:From:Message-Id:Date; b=YigC4VO1GZiykkJk6cP6cgCZrF6Lza7dR5M+LqqW8/+CYsrvzDyY1iLeSiQ/Ow3p21WAAGlYm/lEd0/12TH9eefppFTOHd2CzjjIbTlA8asDOhPkAdo3PBdMh2xv35dap/mhY7gG21TVXYA1I1GGCnAA+fE4BFyFqtSI0dJcGcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMYYDZVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMYYDZVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C0BC4CEDE
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728471353;
	bh=Ad4CqSkHqnFJYDAVyLLy9iKJrlYJiM4I0BjAwkw+9CY=;
	h=To:Subject:From:Date:From;
	b=EMYYDZVXhCPA6ANXPs3sRseIDFQGU1u0C6mr8XM042IAIqgunLuKc9fcSto0Em6AT
	 OlIZyzgiDHUcPWVDIJbzmds+l+dWbjHl7SAdf/FOsGJnDLOJkVIs1QOJ9JULM1cO8c
	 kg7tSQ98KJ+3TReEckW9FjeFit15DNFw6HSC9X+FwbEzJ6OUDpbQfGgxDOunTVQjLm
	 U/XDo/0EWSXKW6igo1JNtgzHK1xVtNB5nNkC51PzkUG+3M4IcZpu5kL2vFdbizMu0D
	 DDKFTMLbOHpg9qdx/JOX905xP+Ko5jmeQBs98wAHXyYmOvrWuKrwNXrLQNEiiDTz4C
	 08w7yFf8KKIHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F75CF044A
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172847135358.11392.133509153810081901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e0d434590c272fba761b4071e3df3ca08a0ff53ef23af1086fca0b16007b8d
Date: Wed, 09 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728471353
