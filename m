Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288441A08AF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776388654; cv=none; b=RILNM7fEAe5+t8WIC0dR7Zd8A1M7e0cByTZ/PjFbIMW/L0oj76772FzUGCPqwMS1WbArocwRxdqyvLdBrpekA6CcFSQhTISXyExnJ3YaMlTVB9S7BMqYK70fFF19I8CcYYSMmYkL0SwY4MDk4ZNRsaI8TgFxK/T9xwomuhlt0D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776388654; c=relaxed/simple;
	bh=sSY8Sij3H+oGa+yBCkG4RIJe4aI9dVSMO+i15HbZDnc=;
	h=To:Subject:From:Message-Id:Date; b=gOC01N+Dgl1VklCtivuCzTL1Eb+6dhD2zZjcIJ4MUP9Og6r+hZTFaJZAxIPlAk5Ibzt3GOb7oynRRks/1COe7XQaGK5HhXYU23ZBE07Nnhm2UMDedl99df5WQMSRBomBlcdhV4dpZWmZ1t/ImP3TyOzy9fhbG/t1+VLkJNZQYaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tN4N7Ghb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tN4N7Ghb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA614C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776388653;
	bh=sSY8Sij3H+oGa+yBCkG4RIJe4aI9dVSMO+i15HbZDnc=;
	h=To:Subject:From:Date:From;
	b=tN4N7Ghb0mfhSpKDbPat44K+vKOnqHZY0oVaC9sciPOksGYIRr47hQeiD1hSPnGhO
	 gGpxhuikjXmT9B2SDxPc5bbU8058g43e9RJINHHTIJr5m21m61x3XIWyP4l5oEiegd
	 abv53lQvPczw6fFtCAS19cQimzCdrPowEj+skDw2nJwU7xE6mqjuoYdQw92XZNgMjE
	 YSkxrrRFI+udS1QLiXcs/QvOmM7f7N9LhcGuOOZKm5IhCMugpeNqbnuESDE1YWBY3w
	 rce/0ZHsfmRqat8EYCtxELJjKfowFfMbOnvIK+6zQeeDsDPMKpc5Gue333vWcrnN1o
	 m/ielqft16GPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9595F8E49B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638865368.9938.8838145171070725513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a666e4425287ed8b2df29fada90b6358484fb4dc0d160b79ff77fe63adec63f
Date: Fri, 17 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776388653
