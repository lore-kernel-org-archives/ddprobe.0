Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628882DEA8F
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792212634; cv=none; b=HTM7XQ+Y4Y7XpIVEBc4GP/gHs8YUVkhMoAPSHdW5nm0Bavj4BrokuMFVA+R4eUXYE0QqPPvQvjxz09Xh7LTVrx857h8TUJhVI4ovbs8C4q62iecCEI/A467FIGv6BYwxjNZBVF59du0KOiRp8kIu47HPiG5dfonjLlAaoBH9Ylk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792212634; c=relaxed/simple;
	bh=YNwt2g0m8kK0pO0WwyCXf46EZp5J1gC07KOOI3nO2sk=;
	h=To:Subject:From:Message-Id:Date; b=AkuDnc3w06MTrbdbVP+gcHG4OHieOvHmP4199XzcXcevwq5MbBZOsR0lHRP2QePdQ1lud8euVa7mujaqrwMWwFfY7QKSc13RINmYCUdtY7tPaVUqm0p6+TG0h/Ix+fGyxY4bBsiqtO1cZ868HUc1yeMZ5l7/Mh+BJJq1ZEjcCo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6fSdZKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6fSdZKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37C6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792212633;
	bh=YNwt2g0m8kK0pO0WwyCXf46EZp5J1gC07KOOI3nO2sk=;
	h=To:Subject:From:Date:From;
	b=m6fSdZKzNPGa1D4G0/2029rEJA/VePKAjXuLAI8LcZw2b5fsE9YnqWVeyOQ0mYbql
	 5KrNdKO0Ejakxl9C+4qT3/FYIpMeHjZBEOmOOM5ub16mXgTwy8cgC4F5/EcyJzoFrB
	 TkPrnqq769u6KkCw5rJR5cwfL0uzsv+QNz+vt0eNPQYNQZx8QsHa9BiDgNMpz2AA+h
	 FAA3Obfa1Kc9NKs8bV8GK1t2WDOvERmrmEtBY804xCgfYHlMDaNqwIy3+DoGKK5nZa
	 Z5X1dGx/+YEEwQ84co6M79zyduKoPRr5aDAzRuLULNd7Fb9ynNg744Jx0f7mTZuiZt
	 GNHn6PVdsm7mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD91CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221263368.26276.17783799517908535063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8a3deb88710f25bc81d462c3939f5477065e9eee06dad4a21f5327857029e3
Date: Sat, 17 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792212633
