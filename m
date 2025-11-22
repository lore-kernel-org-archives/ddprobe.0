Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4300B231842
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763841714; cv=none; b=pfgJqAPvUzjy8BLy8jSlFE9lAebIjEbaEDUfi6bfQ7jIf6wSb1QRY8h72I+sUaj/2Eu8IuQBD5lOzx+tP1KZXwRnvAbnyM3/l67ewAb53kviok6G3looiTO13ki0jF0JVcvMZROvlogcFwSibtAVJ8R/SFbplxT0bNeQrelJJXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763841714; c=relaxed/simple;
	bh=CVnLQXkvs5ZbA+610YQUlsl7sbgA/XJ8t9y4WjcergM=;
	h=To:Subject:From:Message-Id:Date; b=HFZrnZAx3Cd5NWVIsd9ytJB5KrHeX5G+xwiuHlp2HCZ8hgYO5HzhSYauqWrQnS2hPtaivT/QHiQmiqzQAtnvNGS52Ps2GTYkbPDQ33boo7HReXGGId2RH5y2M7Z8kDFVdSPCjWy8vRroQxWLr4UupeZ3jVEYWr0dx6lBuOXfJJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChM+hIPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChM+hIPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E66C116C6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763841713;
	bh=CVnLQXkvs5ZbA+610YQUlsl7sbgA/XJ8t9y4WjcergM=;
	h=To:Subject:From:Date:From;
	b=ChM+hIPfBGTEAXcLvabAwOFb5p/RPB1baEpkFJ0hC0xYRGFTbU29QynEcQbZWZdo/
	 cKybpHWrMxmd/tvksncWjdMJtNhKT4q+CjqR/818ra117pecrKsqWgdeZkscg9w2h4
	 o9c4zNxiwuD+Su+paSMJRkuj0M4ks9fzPlODwNDduErcebHHwZt5l1YH7VejbMIqEU
	 BLpxguZb2Gnzp2VivDzZjb9l9fK83a3xFLqTz/diag67u4JayElw6QDddo0+ByETPA
	 6ymZBz15/c9l+G4Goysbpv87g80+ot5+5a7q9Guiwc0MkVeWjaLqcj4uncwopBhDH9
	 ArBKTchHRD1Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94597CFD2F2
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384171358.24207.10721446650312360677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a18fa8ed31d7f310b14a2b285f915af2ed6dd409df27993fd9cbc892cd7fbcf
Date: Sat, 22 Nov 2025 20:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763841713
