Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187691F869E
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751234995; cv=none; b=L8m+15H5urQpH3wbYV0ceU2a603WYLv5JmocQoWEi6uh2TJK3N/habmTjQpJiY5TwzlfABW403bzWLMHp0GGhHmMK5D0BDns4PuasN8YLuOO4lQuRDK8RhUybzpVNF+LMRuplqXJTu/6BYVk+TyOZz4ba5V9WnjYC6goMmwbTBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751234995; c=relaxed/simple;
	bh=h9nYxyn8GT9KI+9pgTdy9OCMMHhZ/n9ea8cRPqMQBpM=;
	h=To:Subject:From:Message-Id:Date; b=BNEgCaqRUhLgLsrUDA5anGcqhJuGUB9uJ8vA0LcRyRJjibnUacRx1+exWxYAHkTY2vOZxinsg5XBvUQkE/dCLBYCe1n7bwUosT/DJ8kEjYJHkdrOlCnBShM1ulyKHzaEUkllF81ErqNHaY2Cm/BagbkP17EHtg0d/5VdvSa9VVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWSfKSSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWSfKSSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A205CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751234993;
	bh=h9nYxyn8GT9KI+9pgTdy9OCMMHhZ/n9ea8cRPqMQBpM=;
	h=To:Subject:From:Date:From;
	b=aWSfKSSYpfBmFxeDzR7NvvG3W0xkF2UG22VJ3jXn1lWApRHHU5JNvrEUEKhKpVNa9
	 DW1ZdZXg4J3YAHtXf/H2HHnZwBIyRx9zwtwsuEoU1Y+4xTa1U1Mw328eIl6rojQbC/
	 exAKoIeyuLAjimNc3SkXP3Ms34zEA8aiND/4OHLxHmnrb0ApsmbCRHNi7iZZZRcYri
	 v9l0TndMkl0ZdF/dYTuM8lfo8WNvz2bzX8C0v5X7bCbygqDoc5vadL0L5ofv6JftgO
	 HByVzW/L3AEN2EtT0MgoBDt8jDexNtfvww0dGP61lqZjht+39g5gcBDq2NHw32gXWG
	 N2AdiJ1IPY7RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B96C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123499358.32145.11987648131249822658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00596ad2971ce23d1c9df0c947766eaf7180173351fa9fe5c501d39a2f6ac6f
Date: Sun, 29 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751234993
