Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572FB17BB6
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718457503; cv=none; b=kPSkzWXQnnFPNSWA9xpvr5qrZilk2CVTqVghPWrPqSbr6+EhslPswu8BqKL0HkBPK09lApO0dsUkGdYjOD1lY5gFyosRchAuMwWAvicYL1aXPHRp7/JeDLxtpQHU1pc2HnvjUMhP1GVNqB7FcY1JHAFHfGe/etO0y7l34GMR+nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718457503; c=relaxed/simple;
	bh=ZF9efp4U1nUhJC7GhPmKdFRCoSRqJoK4ybPG257qoBQ=;
	h=To:Subject:From:Message-Id:Date; b=e+ymd4ZwImWYmw4ZZsRaaXIoE6cM0qjf+PhV/d+MDUknIHeQyVJWkyYNig9ZukVjS5lUxHLXd+Cu/e3AH4wRKuhyJntPorTK44zlZbbwjPjIuw3KwRV+9BzFFrN9YMuwfGwdHh9J/y0KpVYrZiDWnOMn7DG1iZcuzYyRZQs500w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/jz9TK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/jz9TK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD008C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718457502;
	bh=ZF9efp4U1nUhJC7GhPmKdFRCoSRqJoK4ybPG257qoBQ=;
	h=To:Subject:From:Date:From;
	b=U/jz9TK+dpG2iKelUi8hlb3FXy1I9E33EO+0d59Ef2593kwRPdY12PJbrB9OdBYld
	 MOC6/+s0wb980zgpPfwT5PJkh0E8w76gRV2sbnYP70ZW4S3IGQs3EvHaz/m3tkMhqz
	 XUA35fU+2nLgiiMeHVCUwT0WhrzqNmyHAgvTaZKnNnb2I+0jax2RufikfUA45pUhBZ
	 QDhxuJEw43JCozW9LuOt5JtnydHmEr5ryhgHQG/RptzWDGF4zQVgAb1tGhEQTsTjXJ
	 UqAfW4xjZN0JKr7NOan+mXtIUWfcxhvEBjlSzjJO6t4j5Uv8KXFftXFvypVMmYIGS0
	 U79AwnRZlE0WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B3AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845750279.32305.10767961373408000166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a735de0ba7723667a6506e1725991f5933f5233aa88690e19106d6ff0e4681
Date: Sat, 15 Jun 2024 13:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718457502
