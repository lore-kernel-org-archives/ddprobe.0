Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0621B043A
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747301994; cv=none; b=RvwBb0wZg85GDezPTJVdrwVlnUGQXClSr2aULCyQQerOt1JoHRPGCUZaKeAvEsb95CvbywnEahDx8W0OWGyMJSo5DGaCLcIVJCItGI++NeYK9wP1Ee6odJKSq48XrEzGbpaPz1QcMN3G3O4pehXaVlqSCMFN5vJO6OUAG7LiRqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747301994; c=relaxed/simple;
	bh=KT0Kxg7ivFDiJh8B2oyzSuLGH8c4iq4HdI7CX/bAmBg=;
	h=To:Subject:From:Message-Id:Date; b=WBvZdp3LLi04PKONujeVQEastdEiuu71k/2P+P7zVpjvnPyiFPhoi751cIPC9nmXEZWXCu1tUXZgNVrVU1tiuSmx5z3asNEKcuz0DEGU29r3SLZr7ElpASbuQ4Rb4PFMIA3KxgT1mEr056aLztyJLM3h6olaGGz21TYArnni+Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYWmbpl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYWmbpl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1226C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747301993;
	bh=KT0Kxg7ivFDiJh8B2oyzSuLGH8c4iq4HdI7CX/bAmBg=;
	h=To:Subject:From:Date:From;
	b=aYWmbpl/NwKijB0dJdd7w0ZqWOCAGbRQYI5YZQ27dK/oisn81n+83uU/eM6ijGpcp
	 SPUuKJkUodo6y0ihV4BOCY+5bl9pKe2eLogLADKy88q1TV4Ig3rQwFuNqTnQ6LJNPA
	 k3hJORh5oi1aqnu9waBdLRs/LjasRoIOXfSTDusOouHom/wekU2niSzsfgM7jTB8Ue
	 MP+hScRCnd4C814E5mg2mwO4iuyXkEUBG7OQl1FjSdukgF/0g5tkDR+4AXKc9i9x11
	 3Ov8ddEd7z2t5c4H492/DAqH3dlSAq+irZxL7hOKjc+TewmU3s68q5d+a0YWARISRK
	 Rpqtzo63TAQ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC16C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730199358.32032.16218973758498684475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48d86874bf2ce32706ce66ee216be2ee7b4db905c53b11db0288d2050094afd
Date: Thu, 15 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747301993
