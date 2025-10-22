Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37099350A2C
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761103194; cv=none; b=ScEvrnsHiefJqlN2bfGzUQZ9UY2AWochOAcKONkRkLL7FoEUVPthSpCZwtosDJT4+hVlxSqFHhw9zSavCoHfGPXJzkz2HgZP9f/LCNlp6YsXoxUbSYOb/64FZ0IRbJkyzLXAF7XBTKsClBqCCD2VDdfBv5u1ijasQwQlXfY6bQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761103194; c=relaxed/simple;
	bh=28wcgicYZ4DnD+zJr9QMvToJ8i2KwAm8Am8SCXUzkik=;
	h=To:Subject:From:Message-Id:Date; b=rZFQPvMOPENYd9NXNZurl8ZMQQDLT40yaddrzjg5qNJ3JIznfXn1IJyvfHI89nFfiSHJAUXkBzRu22dzY8LtbWcrU4NEPVP4t8fanH6kr3eq/9dIihl5iv4qm6KR0Jzttfx0w28DnKFS9RcsaWYiqNKyrY/ktaH3XEJhINsQ170=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYe+5uZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYe+5uZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A917BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761103193;
	bh=28wcgicYZ4DnD+zJr9QMvToJ8i2KwAm8Am8SCXUzkik=;
	h=To:Subject:From:Date:From;
	b=oYe+5uZzH0yZ1daYHdlSFnZ80dwMJXIhmuwbvjjc7jRoqdeJHilUShdg/z2U551im
	 CF+IptmSlxKb6B9+402Hpz9kQao1TGNkvwXdAF2objYXfUStKX6oCtAVuvqrfIUM56
	 /lMGg5vTzE1xe1W7ngrsY4lPmiE74GILjbY2KN+B3pSmDBod+QCj4JTvDDyyjImH3I
	 DCB07ziJATbN8ttD4Ur0txoOgKXitnUQMHFtVHwHBonmh0uzkgMbOJj0dSiZGlPXmc
	 JQsjuRn+han1tOn14wJpW3pQqlJpwwKEUDgcswqcDi2sjmvyNWUqt+38G80WBF2BQ+
	 zPphWy6nua3wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EACCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110319358.24468.6795909466033763612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37df972214d0d69f1a3d851a37f34bd2362fb2ffcfc935b89a14cb1e392f06c
Date: Wed, 22 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761103193
