Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC7274040
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752673194; cv=none; b=dkZjInBuab3znZTRJfgpyZ1RzkJA9B2OXa7zELFkKM0T5GjPR6uaz06px0w4JgrzKTtckk2vToG0VOgvy27qrTYqCh/sUo/KtT0USDk7oPb5GfZPDbE8wsngqcgRdhk8G36g6HWZHaZJx7O2QqzBMouJblgXT7uAq/ulO1QyVzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752673194; c=relaxed/simple;
	bh=F7GW1gUjnW7yzV629AXL9BrNLLw0g6Xesia6r3CfJ+w=;
	h=To:Subject:From:Message-Id:Date; b=fT5oDtfZxN5ppuYlwMtlx4TduAgd73IDXlRFQTJ/l3xBozPrg7quMZSC9fcQ3m2tZk5nf5u9QP/btBJA99hB9b8z/P1QM4bCAw+ZPNBsQheu/XmQaA4x0Um6SpqZXnuK2+G87tLgX658L7ML6rXOg68AfUMEVttb4I4/LUz92wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqF1IaJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqF1IaJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30DCC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752673193;
	bh=F7GW1gUjnW7yzV629AXL9BrNLLw0g6Xesia6r3CfJ+w=;
	h=To:Subject:From:Date:From;
	b=GqF1IaJXOuJFn8ZA8vUaUec64gk5FuaD1UqpeG69oVWY791Zy2hyq23mdazDU00WM
	 ICb7QpBYTpL6A0vjL+Bz6wsc5B7drc05i8bIFWbX6FnqT63UR8YgChcyU0KE0Y1bFy
	 EuifX9NI1fLtrR/cw0fj2a8RNMlC6NDWpdEq2NEvYH8e4bojUIVATi6udK3+AwyH0M
	 H34zXv8J20uJOmCLo9xF4tdlTP0/Exw7d74NcvnyZcObPrYW5Ql8mAwRmeOQ6O1Gma
	 BDj4I0+b0c1UHKti4e1Ve6kWXDpyjwIvtspAuqourgMR3mvuvU+q9EBfkso20OQKRu
	 PA1jPNQ8Pb/JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6CC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267319358.1748.14830935295585652946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f495e20b118bea5b9ff990921bc9afd0be592a1289679bab51c346bdda545640
Date: Wed, 16 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752673193
