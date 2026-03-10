Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA4CB381AF8
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773143093; cv=none; b=Lb7nm/YhjWVCP3V3XJp2xC4QN5CNwUQwIKR/vaL9JXOTilJGES75/mie+Fq9tb2g/DuOZYIGbwMZ9/hnjP+AfPvBBQtyp3FZhO7h+6DwdMV9BFpJ3lLNlqe/CxC/k+BfhBJml0IVwDOXsNHJYnuMlfrWwdSoiTOWl+jEIwR/jHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773143093; c=relaxed/simple;
	bh=9+v8Kar7r5Oa53E5Jqn3ZoVWqwdSXMb0/8DUIbPh1Js=;
	h=To:Subject:From:Message-Id:Date; b=uYBLJUSm4ChV8bcbqIJBqW4Rrs6YZfr7SiGyrWnHO8Q3zbPElaliWAqBSryxFbys6Uffd0Py0iiSwYwpX9h1pIxFdhgUIdB6rdl592GSIaWkHxSUCdk6vxvVaOhCgK7iL40c6OcX11ELKFRqZWEJyrAtn9kEEoloxk8SHjjTg7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6lLiZWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6lLiZWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D697C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773143093;
	bh=9+v8Kar7r5Oa53E5Jqn3ZoVWqwdSXMb0/8DUIbPh1Js=;
	h=To:Subject:From:Date:From;
	b=Y6lLiZWf1xRjEW/OHJ25rsnqjIwZM0wJAPAPywt1D1Qmw8MCnyN1kvT/spMWFXbJy
	 NAvzQyFAsH78BX3G9VYcf37GNAAc5oQpWcdFEj0YLP9xObSSUVDzjSFrFXwKj0p58a
	 zR25woW8sqdJlvV0DEVRHJBwl9UO1ovbiNHfJ4avwHJ2BEdVfNgiRM+JYaNWpqIvLg
	 BHLfUFGdiC+I5x4QQzUVcC3f7OfQX+tpsH9v0cJEUiZ+Mr7wbzvMEILHzDtw+xbOO8
	 bdwT1CaDTLtT5NJaz1GbrzupDdWiOQx3E8ZVXzjX0+9D4CmU4zCGbdQAh9XbUEmgkL
	 9FQWVQ8JQb5rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF4EB104F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314309358.15654.10774015271161279448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef71abfb45e2b85cdd5a818abab79ee9a0dc5cf1ef2d1824813d38089d6255d
Date: Tue, 10 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773143093
