Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED8628E5
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762067394; cv=none; b=AXbpadzth7q3WFwOx/xcn6i9Y1/SPiZVjVJXiGtTBJQQ3qwyEK50mmNzCC+o8L5tqGKH2O2CI1WC2GWFMmzNMDbuNz2DTUhQoIhgeKjPTbKH3Wq3+tzU0yStTEmMfgtapxtyknbImo9Wdr5fxYcYaKdT4TD8FB6j32e0dqAfG54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762067394; c=relaxed/simple;
	bh=n+4GUT8KtANcWuwNoy1/1gI7DgwWZr+lwemrK9vGIFE=;
	h=To:Subject:From:Message-Id:Date; b=oZsKNQ2xK1uaMYxxlafXB2ny598X/n6wz4RMEqmo8UmKqZPLgi/tiWENO7n5w5QpPQU3HwHh4rvgO5AgZVo14+vujmQ7iyPWt5uBilVu//9oFw8p1V4OoVVyH9BXLaBup5S97KNahonjEnAGDE33ZmsBAfQutxG0KA6RUid+vYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqmVel0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqmVel0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2A7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762067393;
	bh=n+4GUT8KtANcWuwNoy1/1gI7DgwWZr+lwemrK9vGIFE=;
	h=To:Subject:From:Date:From;
	b=AqmVel0UQhf+b9QNQM8zRQWwum9cxvdvd7nWU0wsNdXgAQae4aq9FPN8undaaeMJj
	 20yi2CLrmvAEIt71D0jdwezMFtUkpRzB66bzJe5MSvMVs7pYpdQC+go0AnnmUxL0yc
	 WlF0E18N7G3AG3rgTt9s6J181cmY6yfbQ7+3Zwq8ML5r/8rZFH/3Ubjjm9Hici7MmK
	 YAclXcWQIQOxkJVwAGnhEe9ldXQB51oPrw3ODokKW5Xk8MQ6aHUjzYBwEsw8wjxaCi
	 Oy9Rtg/WC88wli66xDD01o90mj9DoHsNlVu0vgWW2uKfbUGsaeoYQ3mDPb+sZJ3eJe
	 BnSXy/Ne+NkJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99443CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206739361.27249.16015602015050207049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aaa758a2560d917f5183d12444b95a393b3d3b727e360d45c4dd79249600fdc
Date: Sun, 02 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762067393
