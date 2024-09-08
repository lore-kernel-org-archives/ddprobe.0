Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D381494B4
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725800154; cv=none; b=fiV2/S8dxPFpls5StKTBMlUhFRWITOwu0hTjM2kHz/lxwImaEc6hAazIAWT3FCiCbTvdetJHy7UdbKyvaKwataXfsjGs425t+Rm/5GxvoX8fE0wKRQv0wibnrjmhAzNfBBxP5gHpsK2URhW3W3aykXwLlakGC72AdvmCbYC/d94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725800154; c=relaxed/simple;
	bh=3IJ30KELGVgIWSFaYrrDCkmlO500fVbTtZOwB5Ak6W0=;
	h=To:Subject:From:Message-Id:Date; b=cHXA6vROtBdT6IvAIqK8Qa1NzmckVKkBzRVUYoukP/sP8Br1cGI2Q/Sdw41vr2xiVuKM9Dk8rJvKpJln9vM7xafMYpcaQDb2VvW3DuPD9dJZoqxMh/ggAg7ct8qfnKwck573cgb0BQd464maqWGopIeclpZJb8REom/rJHKAaag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDaPT+eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDaPT+eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E599C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725800153;
	bh=3IJ30KELGVgIWSFaYrrDCkmlO500fVbTtZOwB5Ak6W0=;
	h=To:Subject:From:Date:From;
	b=QDaPT+euyp7BFXA2N9GnZCSSo/y5o7BwZsUwD8wuvHvWN/Ma6OOuG63AVU86bM65R
	 QGAosdITdF1ERCYfuf4nrbevWJVRmkDjbtabv+o9ZbYBmoVR3wIq2O4aYI2RAWoWrn
	 pb7hOsR8cfJLrM3YlI7ryFvYVVHTtPEGA28C5oJyRKnum4chrBL4GgkpJlvL1yN87w
	 IIhaNoxRlWDl7UWdyWdQBq1Fjo/B3LlUWGEFoT/fYqdkDSUtwKetNwrZwjFilrNmtO
	 V6mkRiTOoZYSoPCjx+lh6yX2pBX+nxsNqg1I7bTeAwshwG2taPqS8I+RBW7ANoUTJD
	 LjTzugNJfjU8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92318CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172580015359.16465.11915895870666491765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60747efab7625b2bd024cac1d950ff71428d7d5d1d27c70835fd230da87654c0
Date: Sun, 08 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725800153
