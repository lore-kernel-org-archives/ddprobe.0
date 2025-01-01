Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4B28F58
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735727154; cv=none; b=KBZoZ5qdg7/8lsWqgGsl8aq89MGFOMZE75iyHvOn8k4j+8yWMK3s+rAbVhkegzuq02IxXT0EISSJ2tw7LoDsXO33iqtESYhITJRKlMq0K3ArtOmWU5V7aVK01LxpRKGPzf5xczJSDIAeU4W+VpomQTulcofKCppyJsJS4eoCnbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735727154; c=relaxed/simple;
	bh=QRwfuoYSNNjL6aB3MfTEiuIQFjh0HrqeRunjdI8Yx9s=;
	h=To:Subject:From:Message-Id:Date; b=OjIOpFsEdQqV2mNbT/9vLX9KetpJMIAkRFuetM3o9P9PHlmLKo0By3J0KTDiTPktlR79NmEnF2c84CLLb4h0z6ZDaW7T2+9v2kGb/QUZ69/gWnzGAbJQn0LG8MjpSV4h9wCh208ve+eQoW/5DZACHyNq+uo+yS2zDbrPT17h5Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJB1Y5ZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJB1Y5ZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B09C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735727153;
	bh=QRwfuoYSNNjL6aB3MfTEiuIQFjh0HrqeRunjdI8Yx9s=;
	h=To:Subject:From:Date:From;
	b=UJB1Y5ZS/JS/D4dbka7lPbg72WbnuYgtbY6xd4lbQmxmF16TlWf8qsTNBQkATh76x
	 46KPvb0Z9ms88GbO+9OJh53ZMg8gs8SM9YnAZfbhPz2v7tXVAz+gj2dy5z/kw+q43P
	 sEUfoUCc0s5WxhvcHn5uEunu/4ipEO30CiYmoVQZDE76w713lHAOayGb8eg7J4ADZf
	 qNvrFsu9jkKg5riBYuBtt1eOjL4EbSkhxgLDKp/6HH69GQu4dfWZRgJa+E7rERZTPA
	 SBV4aX3e3LyIs5oEV422Kq1vZjfzw2oAAUebXJZmWQZ/Zf0w+TSoE+NMQIJkF2iRmw
	 83p/tih4E6IWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A72E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572715363.25145.6443907702078761305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca6155a4a64f1f48390e4282467307b44c3537bd2bfe8800cfcb5a31ea9da4e
Date: Wed, 01 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735727153
