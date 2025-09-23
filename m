Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1952AF00
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758636595; cv=none; b=puzCkKiCvmuzu257kyEkS+nxeBm21j7THM6S7kQaFS3B0fnRNv74dtOJfmmG1yLhMLXQs5z5xI0Hp7nx/NfzmacTLRie085Es8Q+Wvd39YuZGn4wbJ3px1PLXnp53hEi7Bs/flW++ShSFqLXpFbo4GVjDDWA+KypVi6a0Wbf8u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758636595; c=relaxed/simple;
	bh=kCQ/DLNaJZ3a2sIL6RLYWPUqTqIYW1NjUhRWCA2ilJg=;
	h=To:Subject:From:Message-Id:Date; b=Lfx96Bc+3whfwvboO4aWsGN5MF5IKFS5epQu60EvZtkrEsetDBtzF9uLes5+Cv9r7GHTP6W8m4WOd3hoOb8xpSRRgwo0jzrKv1FrnspsTaUa62cPqlIyUHqjZFda5sWNewMq+vCudnT9/PoSx99ddChHphcUPxsJd4CaZgvvwWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbdkzKTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbdkzKTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F6C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758636593;
	bh=kCQ/DLNaJZ3a2sIL6RLYWPUqTqIYW1NjUhRWCA2ilJg=;
	h=To:Subject:From:Date:From;
	b=qbdkzKTPdyZ0zmNPzlJKfKjhXzoVlBwdrFY2mmsD4dHy3ZE15LDlA8CBYxlGfoGx8
	 tvCwsPmszJnu28LV+iPMSmQhPZQQskDHSJjMCxO+BHT9FOGPrr47RUDhqaPcdE1323
	 yeOGbdDfx7hB6X/p+r06LKJTpevRZ5pdzNiWDZFiBjTnVFc+ByK0GYFfLCiy9+y8+0
	 oTGHZqBZAYxpvjPU45ITZU6eL2Mc6reoz4+QoAthmoyu65YjRAn4EntvWCT+3VumMU
	 SPnkl9JGH6y0YdD/75jdkIcuYtDxWz1as1ZghgZincweL01/RNe3hqwZebCo1he0jx
	 bA9A7hyo7eRvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91514CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863659358.11249.1402568517426211000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3946899baa3ce330cd73cb83ab3249939a459fb5eb65cd969b52ca7935be529b
Date: Tue, 23 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758636593
