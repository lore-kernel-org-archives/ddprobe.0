Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF353D68
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735007154; cv=none; b=oZ0uvmPJQHVeylEVgGwN3oNu0XqNMJgq4a4q5oAIebnT/T2obv2+fSOldNc3kfpMqLw3muyN949T8bYqnn59AhVnlhqZwK45o6/Ng8DP0wCzpkhm6XxgZp29T0Nd46UxiEy8cUgC+udSlhlYbZLmtNIQt7DshDePTMlNX4H1rfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735007154; c=relaxed/simple;
	bh=FO/RaGtJ4CPdOqcjw5tjBqmvZIoVObktSr7AA7Z51EI=;
	h=To:Subject:From:Message-Id:Date; b=Kuujjcn90LKe3i6CdKyxIMMIeUVxo4vai4KgxquGzrjpTdqgeFOQaiWk69h1pjD8HjQY102qL5lnzMUCXuHiwDSpzZaAO19WbW+OWk+g4OgfBgSTGMs+WayRE9L9QJJLLyJCiz0w0P3YlQE6HipPX7y5Eqz0EhIdTSpvCdELQRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0Y1Z3ou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0Y1Z3ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1339C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735007153;
	bh=FO/RaGtJ4CPdOqcjw5tjBqmvZIoVObktSr7AA7Z51EI=;
	h=To:Subject:From:Date:From;
	b=b0Y1Z3ou5hSR1WgSdIhc8KBYuCJnL9QVgXJxFiNY08MfYzfLHukvucfghbjnOrqwv
	 uvB3BJR7JciVQ6RaWvkzN+6diz4hhiuzcqRzrsIytWE4bBQk4AXYvggGiP/8YZaoIV
	 l5Y07YdNWPJnIQVkvpgKItFAoml6oi/IdZK1E1TTeYdqFI0k5eXYxBX2frQQ99JAZv
	 41B4HTsYzCpL3xgNHrUdItA62Z1IR7cbiDCc1vaVctJwZPgxiYoxZWiZyvXPMqkOGw
	 4B9lIHfFN0qD58RpVsKA+jqz1Tw55FennBbRv3lykr8kBtOoz6ck1gTO4LO9RyGaPy
	 0fUrqkrXWtWJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97699E7718B
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173500715359.13394.6376272713888280507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7648a6322470b274e570482650ce4ce64de81ccaf711056844c6f7fcfe68f9b1
Date: Tue, 24 Dec 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735007153
