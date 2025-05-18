Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AD133C9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747560594; cv=none; b=XrjsZ7bPrbzn4IUyISz/gvnJqwu6qYY60O8Imi3Dz4g/NBQDF9WO91iXvFw5vVpXYdpNyGD+eEsNpvRvT3ZtVn2IrvoaM2qxQhjTJZSvcZtFZxlrelbXXHLAKFVa2jd0JPNYPvMRUomLignUONepIuPN3OdCVvvBrgiX7TjUETE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747560594; c=relaxed/simple;
	bh=42aW1V6lYPI/wJRDaL56FkPYyDLM3VQgkd4I3m/4jkM=;
	h=To:Subject:From:Message-Id:Date; b=ANFqFTy9jHZi251lrkztkJH4K9+vOUoZGh+M2cbTZ2eJ1hKYycVg4lXqZhGPyQtL4hOreyXe+POKozw5tBoSDMK1CU2uyLzW1QIZAJeGNr0tkueg7iVRU7QF19li7UA9oyGH/prxDobJd+f4EaTc0fx6jRHNpLck0wvdOHvEHyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAkkzlxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAkkzlxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3034C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747560593;
	bh=42aW1V6lYPI/wJRDaL56FkPYyDLM3VQgkd4I3m/4jkM=;
	h=To:Subject:From:Date:From;
	b=HAkkzlxmNhkXInt99oY7WnZ5qsrcBW00V7XCyJnN01WCyIugjbjcKDS5MimkO89nH
	 Oi3ugmcopcXQOcaMk5EfBjxVs6s4U7Bw/rsHT1vVRC5UbL2QONFhVElTcd1O2tZFgG
	 TTxG2SUlFt7WvX6hc20vzMVrXAcG3hmbYxlj2oGTcxLpvV1G4PNObISHG/tZalR+tZ
	 wjf99ixsZtQQtKM0w7OZumPqKa08v29lm+dp17ZhEwZhEOKPDFlG45G3rhzmeVS4Vi
	 T/QNKEldHC21L9Sn7EyU9GJcYuFy6MYEZIMN5Hd1qVf4uFWu8LRNhOdtOOtM9DQew3
	 hGxqptPkvhuUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064FC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756059358.18590.13716923586984461219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea220ececea20704d15f26eba2e0b0192e2cb1e3b1196575fe993ae1e1a3a25
Date: Sun, 18 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747560593
