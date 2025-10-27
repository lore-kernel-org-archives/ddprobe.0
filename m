Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135472040B6
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761533994; cv=none; b=B7UTlo0pQ89Ee30yGAiCw2vyYTvKp3y3b5hVHIAOPagga+Rtiv9vR1S/9OQOLdNpSdc+u3qC9argIeV/nWtnljcdnD/PCzQuSQ3uye7PtvvvhWINlPa+jjlliid5JpL8pNhg6g8gvc4Q5Lt362kXRf4hhyOplzmpd/crPk9nnrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761533994; c=relaxed/simple;
	bh=XaT0aFNLRrmPTUlt0scyZQ9usBZTGoZ3H9hEBi4AoZU=;
	h=To:Subject:From:Message-Id:Date; b=ErOcWrJi8GLdosQb3xsjKXDWOnbxBJLkuUeErlpjOaM/P1DSgBJKThs3wfF4PZeYnHrghfMCLZzbYucAJdYgzIXJJeUzNhSSD2N/wLlqLHgfEXOoiJaeumb9KyDUyzyYgirbjIiUSVN0qk1V0GVizq80NvjGoz36b/kPg94rk8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuhV7fBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuhV7fBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07AFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761533993;
	bh=XaT0aFNLRrmPTUlt0scyZQ9usBZTGoZ3H9hEBi4AoZU=;
	h=To:Subject:From:Date:From;
	b=QuhV7fBpOfzLER87BKjs5tzkOloDOTJI0oUAhpig1SzfffeyHUXqamtg6Y5JE2bTU
	 FyO4x9l7O7eTJZQcKxQLHoBxYAZtrwECHnwQIjUZhbih/orkY1hTJV2N1TKQCH9on6
	 z2ml2W4U0J5QpMlntxqvYxZHYBqCuKm2zYu1QygxUwyLE0J6lkA9Zo/17rTkSL2t4P
	 VxYcJyGEupP8kHHNTBpVSQUslY23l1KqvcZEnk7eTbge7QjqvnLKF5xfuvihWPvUKR
	 S9n1Kbi8TmIozcP8rnexgc0hNzndxqcjebenIPzil9MAkDvUrPVlm0NA5enP31z5vg
	 q/7c1ECrg7SRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E085CCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153399357.3530.4004516762830489659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f932552e239a29ce254b29670b7cec91e5d70133b9176394e0fa9c9e706c7a3
Date: Mon, 27 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761533993
