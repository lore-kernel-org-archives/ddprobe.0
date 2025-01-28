Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486F729CF0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738050954; cv=none; b=krywcr3W/Q4CIK42DUW9TaZWX7bMekOv1TL3jlhPXmZXPPMrR/hez5ChmKmO6wpPSKFRwoCzp7X7jEljlYkOCteopw5UhhSyQZfchrjFTz2hgFHEej28+qFCtSTArkQye2dGvIYgx1K2ywwUnak1xQyTXJPd7COat5nUCFp5g8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738050954; c=relaxed/simple;
	bh=0K0wu9cT/4Yfo6Iza983VEGA8agd92On/Wq2pEPyQ2c=;
	h=To:Subject:From:Message-Id:Date; b=Qix5JBQjLLWIMGxhPQAa5uhWLrZk2Vsd+lfB3HLqIUDdr/VyDKZetC4SVgFps6bwUvnxPe3ihtO2jmfYK59WaTuMrqNI2V3S5FFweGQJ8My50vGsjqL78k4RE6J1YTr7jlX9OzILl9k+/2W7PDvzydzYcGi9xZF44JFxwpSVRUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Euauk8D0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Euauk8D0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF73AC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738050953;
	bh=0K0wu9cT/4Yfo6Iza983VEGA8agd92On/Wq2pEPyQ2c=;
	h=To:Subject:From:Date:From;
	b=Euauk8D0WszeEfrSSCcMGQ2oBLVJ0AUUEz67W+pNEjDC7/S+mx7ETSadD0IlaMO0a
	 FY9jXfdLRoOlfUnZQf5hvWfLCHQQmhiM4rhwQ4VSolP3/jnYFNd9VyM4CPtP4YZnSv
	 gNORlM6DTCJQoLPRhNtkUcjq06bmwVyFKWbVM9RO55E4d0gsgqk+yOlt9K507Om7qG
	 swsUH4nWvQbcnU2TNu0HrjltlqL1w34TlRloRwIpqVCoAE2TUdiVAfuPpSD7mOZUJW
	 CjhZQ2Q5kTGNQ0iL59XkcNyuSHgjNfgJjuXerzWDgYMQfbUZx/ENAefXrDZEEDwH3Z
	 vxVpod1d8TNAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927DFC02192
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805095358.5896.15272558501927114637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479c859131876159d018b8ed0414c073307091901f421000c379b2f3a0be53c6
Date: Tue, 28 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738050953
