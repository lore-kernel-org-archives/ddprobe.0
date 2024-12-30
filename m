Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4239333F6
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735521354; cv=none; b=dTo5/l0GaRM8GWbpvi2EVWZ3nYw5VyhhkFZQUfke3cwJwVbXfuXx21+wc8Ebj+1FT0qIeNE+Z2RPP1PJnpBpL65FUESmClMyS78qOIurzaZWJf54i1//lR6+BlGgVPEprOgLqe0f8hLfi5mEp4V7pATVaSgKe7nEbk9f7ZlMJhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735521354; c=relaxed/simple;
	bh=RrV8um9/mlK2LEo3Bs5lw/wjkalQ5Y5B4s8znDeud+k=;
	h=To:Subject:From:Message-Id:Date; b=L/vc7JfBQ1FB/UV4xfLmTt3JGM8Q0uyn9mEd1QEJoMz10GHRcEbw+wskdVcZUfWgy+/l/wBWzn2+bqTkjZDrrIalQRx9KW61bi0aujRJfDJQ342txgULiqQPmpD+HftkzJ2tBlDnyThbOARuGAquLz1w2ELjhhVcWuQ+09+2HGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/W+QTaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/W+QTaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03CFC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735521353;
	bh=RrV8um9/mlK2LEo3Bs5lw/wjkalQ5Y5B4s8znDeud+k=;
	h=To:Subject:From:Date:From;
	b=H/W+QTaQTES14LfZBNfrOUKtcKsFI0yeE9XoE4NhIgZftjhAwfJQHyYxzLodO/oCw
	 j3eErw8g1/l6l6HDm9qd0vBmVesbnFdbOXUl8o4RLwQbniuQD3MlZqnYcW/BcC5Zjq
	 dQFMzphLpMmrLMQbEVROc/aSNXCw0AgKFLAx5XEqpunf+gm/Nm2UszUJ6rkQJjmdz7
	 UoWhIiSjTgI4kYZCHQXsRxeqiXeuKvMfZUK8WG8KWPzDjL1F2BdEGjtKhPfPrvDBD3
	 mWtER64Id4FYOXMi9b7NHnTm1it34T7z/YBg8C8V45ebr3ez1nI81gW7BHiRmVowKh
	 YK+WzfO8rF1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D109E7718B
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173552135360.21553.8235829402029470283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf237e3b65f62f930d63bd77bdf86e1e42cd65acb68ed8c149c7193be8b1e26
Date: Mon, 30 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735521353
