Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56BA21420B
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764625973; cv=none; b=Vjsvc7kFh5B7+cdWDbPI8TtTvOAAykrA90jMvGq+npiTvHJvC7XV8wmq/k2uTEFPHLh/z3e5DmenYq/7NOfIZu2Qf0ffIbxM5LpgoCdHcfVXKPXI6xpD6aCLTCyVao/0N+7toHYw7n/PSy0OQM5kTIKJ9J1FbSgY9PzcJI3uYkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764625973; c=relaxed/simple;
	bh=W5MOyByxYkiTL5Jq0fckYBx3mraYrWFVleJjnTES2p0=;
	h=To:Subject:From:Message-Id:Date; b=ZSZk6IwmkEXGfZkz04bJ0DvAg4NISOeMv/aEVQaovAJGL7nnGTz9bBiO+GRrmfLBgL78ibGbIVE95iYJJfQltfYU9W9NwfBk+jHpmhsAIaklg5aDRIrohpOjHq/4lofTEh3m0157csryxy56wVjqxsTrd7WnkfzRnOkoeIt0O0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J23H2HvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J23H2HvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4622C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764625973;
	bh=W5MOyByxYkiTL5Jq0fckYBx3mraYrWFVleJjnTES2p0=;
	h=To:Subject:From:Date:From;
	b=J23H2HvWGSsnxu3naNlrfED430J3luVI2/ug9c/CRboC38BT7uvE2M+GmA+rdW5XV
	 WkEp50dZaAKioEy29qE38/CKvcw8LXUqJx4bQucZMWppeyyrXuAuja/ru0qG31A+/F
	 qYW7wg4woWsCmvk1W3ZXEr3wYUn2Liys8pzGyXn5Pxn/uuGh4iuDccvxjy31mVsG4m
	 Kad9N+HLq/6ZUugrUSapnhOIjIpu6QAfN4ylotVms4j2+Y+Urp5itMyz4g99EEXx/o
	 xxBQOC5TZ7UQWGyuouQ2i3wm3quvlgbQDWHFn74NhrRP5hX8V3BQkRVGn0OteAGx+r
	 bWO0e6pYyRk/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F0ED116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462597360.19537.8324107322078257662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1bc40b7ed7e86d376b8084d045430b0e0bfc2b164f1660aa69d91cca5b0e69f
Date: Mon, 01 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764625973
