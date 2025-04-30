Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AB11E8329
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746013194; cv=none; b=tnDZc00Dnq+1vVAG9KbdsYOPupuv8/e7pwvcsjeIxZhBHzMjKm0qJahwG3MWYqxDjSr2PoO/tu9ij7+Ji6jwzlFPK6cPPPCQ7rALQyEnOBJLmgKLTmfXYeicJ8bj1NQxKZ8H0Ij36Hldx8TRhFK++ZwzN5GQGs+hPFBr1aa2nsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746013194; c=relaxed/simple;
	bh=FgCfAutM2ftvB6QEstaMR0TLz4+lFFX/s9zHR0BNzKQ=;
	h=To:Subject:From:Message-Id:Date; b=NSROrX7m4ae9aHAb8ZxXRt8rEiECSjuhED5bBtQGp01i0fpM2XxdZjOXb/rhT0Np3nsKYlLaXQnjoFVsoMHz2dydzsSPqSBI6CIGSyRo6x1p1bhRXdqGLO2XV9xbcWU1oKA9Nm/T02uQ/4RLNzcHO6uax+5WjA3TU2h40jvPxHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJXvlMyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJXvlMyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A3C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746013193;
	bh=FgCfAutM2ftvB6QEstaMR0TLz4+lFFX/s9zHR0BNzKQ=;
	h=To:Subject:From:Date:From;
	b=bJXvlMyblEhIcVqt3eYI6hUhjgEB6+HCk7m6EuyXZf54Bh8UbDijFMATF955keHgD
	 W4OxkKhC8nnAjn0Jvden2r1VQVEeA0z3f2t/zsKa+SwfsY0Kxq96kCBdzUuoVEF0Ap
	 5TS1LOGHvMIi6tP4HjGslZRGbLedd4L2XWeDxBj1ZSSbZAoMrL34p09f5yCiY2SW/I
	 JVD/7M4dHrrOTWU4k7k1zwWuO9Z652Tqc+oBaKfcByQPB72/RoY6b5D7+FIcNBJp+q
	 O4PiG8d+fxM6PtBlujlpEzTcCgMkZzrpjctmzwBHC2gRJMoOQAsctWvalKOlTIZKEE
	 jRlSA1Fhhd6dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E522C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601319357.32128.4968450526187038588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca9ede1d26616c00684e6cdcf59d6be9718547461ac0254bf8df089e510830c
Date: Wed, 30 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746013193
