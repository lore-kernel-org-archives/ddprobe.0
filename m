Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF95262FFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767130434; cv=none; b=aENVtBTr/d08gEIYNKisMJk+smVnCEwai0a71G5zP/9UycZq4xOtq0McVGIH6bw6zzzhQoOjVS64dNOWEIJdm23twWB0uRWbXIP/M/FVHZe3suEzgtE1EjxpE4kYK+SObZXOPJ7xV72sowtPK0ShCH+Gzy6UWK6Eh4oY4GRgE30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767130434; c=relaxed/simple;
	bh=pc/P8iSwpIC7yOD7LBN1FQSnnIMCaQZVD/Eg9RlVZRk=;
	h=To:Subject:From:Message-Id:Date; b=kZf+M9qFRqTzeomgWak2wY6aHMIbz97z1Jl1SMxrg9jAMLBX+6jfKpc7xeETVEBMCZyFY0A9riPQgkwx/Xp2GgRzpAwCufTpko2ZSFvLqsSPCQXfHmh+Hm9+EeduQQvUvcnCztZsA2gWvB90Cvx+2t1FHXNFI+jPxgRBbKDBryg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/lLlGHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/lLlGHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5410C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767130433;
	bh=pc/P8iSwpIC7yOD7LBN1FQSnnIMCaQZVD/Eg9RlVZRk=;
	h=To:Subject:From:Date:From;
	b=E/lLlGHnxO36b91VOEiPekpQXM3ITVGo98jR8Lb1r3i0pHYtjbM7SY8m1aRyZ2SBi
	 YcZSbJXk5QE7HGht8UpqGPzFkCmjEHSM8nDgNa3qQlVFCh9HN2WTeZdTz8tlRnM2Qp
	 ZEoWEiRocOrKxB7XgChU5oLoXMR+TV026UVfBWC/Lqp5HF4Q+AlmqylHlMY7TS2qFx
	 pfeDphtB+m6aG1fLde7TrMOa4Tq+T7Va14IsZ9El2jBXc4BnfOBXhHW0j0LtnD+rLj
	 7kNRP8Pu0hMuEIEA/u/pU+1YGbUZPSC8MV1st0xNO8tJkzNhsPO/vfc2h54izNMQQL
	 rVdSDNHlEtgKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B3AEE01F6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713043357.17379.10915274292219471925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764f7ebb9bdce30943ec38990673d27c2c47630a2f94c2fbfcde1a1177895a30
Date: Tue, 30 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767130433
