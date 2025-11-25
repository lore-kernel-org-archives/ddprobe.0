Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DB019F464
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764040974; cv=none; b=ClJAorknf2oWaM1ayC/6NWG4F6+TKOKGMJo7n1VAXi/Our1J+pVSNXh+cne8V2BNmKC3xf/Zht3r+U1YN3NnsIsovPAflFv/J8Vry2KKK5AHEc525L9aJZagQg//RuuuGd2VXAoUWGVjUbpwI61F9/3H/ydQhdAQ5P3ecmAeLII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764040974; c=relaxed/simple;
	bh=uqgMoPVq97PmvQdzKwMeJZSWb1T+CIy4czm3rGVbrxo=;
	h=To:Subject:From:Message-Id:Date; b=U2PG4Mo02U8VT3e+Vsox3zOdvrIDiCX0FV84mso3AATdIfQfv4woHs03CPzMjqEe7lLzT3+PXkbFMdL2VsWlChiZoNJO5/I6dD9YbOIvgAMqK1wojc0fELSzf+rNcEkyQv74WQUA0VwUX3WlNf1bX+00QbyZt7EkBcEP6TLuZLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnWFkHmu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnWFkHmu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5079C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764040973;
	bh=uqgMoPVq97PmvQdzKwMeJZSWb1T+CIy4czm3rGVbrxo=;
	h=To:Subject:From:Date:From;
	b=nnWFkHmuvAbafTPRE4ctGIxkWtRXibF3gFNZtOHSJa+54eoBHeRqbOBvQ2EBW8vQo
	 DYcECKj6RYsUMnPXgE3myg4iOhrNh96TDJCzMCVTXPnta7zSWNZNSq8KdukP0ysRPj
	 U4nzeN5csnW3aUu0vs80Q4eVbQBqpIS2pVw+JWdvtbrVyn3AhJsazLwZ76fCpyLfyo
	 kttYPKE9o8mtGng2RUsVESIygmskMNz8cnBHM5i6S1hUK3wtuQF6et2pS8hSY8ye1S
	 /Cff9UXGICRyN6M2z4J/VjyQ4nMWVZkKzISyptbI7REKV5IyRnPmYx6BZ5WgfiLdhV
	 +q94EZGwNGYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A4CFD373
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404097358.13051.3444070239014611257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9a1ef9ef88e22a8944e59f1caef09e46f1de86afc4fb716958a3011490afcb
Date: Tue, 25 Nov 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764040973
