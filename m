Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575D5A59
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789917634; cv=none; b=buqNPwTQ8K1yQrnu3uAVNxi3aVKgHcKvBsRUhTp5vU/EcrOLXKGvoDWlQcjDokeIQ2rIdin326tVh1bY0N9bV9JEKtPJ0faH0Wl0zkUuVK32iAtyM+PauhzkSSwd0jGfvUvBD8kgx96Ich7tu62pRPi6UMak8UYn30JSS9eMkGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789917634; c=relaxed/simple;
	bh=oran+v0LFm5msOGwnf2dhQAobSfRJHSKCNPk+35cCvY=;
	h=To:Subject:From:Message-Id:Date; b=PVCcMuW53XQQGYIG+a5LWT7XzWoIRm33FZLQeOSi/7vlX6rq6coz4WYYACSmauXGIn7DYK0RQxnbCENC9C4Gg+/0ohW3m8i+s2mxtRvnaSDIOwxB8yEHL8BoA8oIybq904WkBNOaTNDq5iey9LGtv1FHAJlWZ6eSDm5Hg0yjP48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEmZtCik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEmZtCik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1707C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789917633;
	bh=oran+v0LFm5msOGwnf2dhQAobSfRJHSKCNPk+35cCvY=;
	h=To:Subject:From:Date:From;
	b=QEmZtCikqtnR1qnVjfyAto7B4nio6b1895eKi4e8+IkE/oLfV9ifJO+Z7uhWH8IDq
	 dItD5XMmITpwA9j/0kPdffWHA2cweHyUHo6jaMDgFhGpdfyrHB8IvwW7Rx/2HubszY
	 +JVgXeVyrZ7AQw9OO0yhCrdGGRa8Uotd6lmCq/2ZzYJhsP4I4JO4WqCvLotqB5yCRn
	 6uydqy7b0aY2plLcX7+IYqsX1bgfEcAC2LUlhYClDuNcFfNL11ydhgoiS426z9g1Oe
	 UtbJZWc4H69Vn5Q0QImuCDXQrAZirZkmQ0YTp7rOagI3bGo7Apqyupekgxxq6F6nw4
	 9FjmwXsGIVOgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC955C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991763368.6811.11602527574646121658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed01731164476285ea905f136e93051d85822c491d74f2fc3491b2ef3d044f07
Date: Sun, 20 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789917633
