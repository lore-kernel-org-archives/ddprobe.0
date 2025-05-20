Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E5D1C8605
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747699794; cv=none; b=VJypJbEm51mlTA4AiKvGpGzvTGN+eEwaOTsFqRZKgPXIAAwrfEYdj8AWh8BgmFWaSVDGlWjVZla9dsRa7DW7aMz0bYZmshoqxkJDQzCN/exNuKWFiXk8E0IX/dz7nd/ohQ/WWfRhZO+RpaPUU+TumcVPi5h+jjxl0Tk4ZBE8EMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747699794; c=relaxed/simple;
	bh=zdNPgytqa9L6fJmP1DW30L8YvfE0HhDv7Vm54L/G5CI=;
	h=To:Subject:From:Message-Id:Date; b=EhMh1VuYdy6whQzkr+UwTZ5fxBwQXmSODx8X7O5uj58jF5JYQLUZd3M8+4lkiTxUo6mFzkisxudYfwuUKvmX3PHVazBaKUBoBQiwJkdPIGHlFwbSoyiJ5zfloU+6XxAswffluC8NcQ/S7DU6eKK9O+5hII0cI0kAx20MgVY4x04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXX8kBeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXX8kBeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A454EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747699793;
	bh=zdNPgytqa9L6fJmP1DW30L8YvfE0HhDv7Vm54L/G5CI=;
	h=To:Subject:From:Date:From;
	b=VXX8kBeIQfI7J9MNhfryZTj+YIt0lbOJjAJ7bSwxxSSvx0qyXj7p8N43UGVMqXrnC
	 DQ4Qs2lJXVVDeW/KECq9stIKWV+KWifEYyAdoiDLlujxCd4XI/3TAg85pTwgc7xWyj
	 sChhdzq+sitlZfpquV6a2Lab3cnOeggzY1VHeQ8mF6HznMyqT0F3XE4IdM+EhoZGgy
	 BRaVpsLiWfHbluJ5Rp/4r4xCRUXlC9CAA4S69ZOa/gV1OC5z0lzEbLD/fSgxknROmO
	 f/at03nLlB76Kja3th1XtiYm63ruXN6MspX4b6/kfomTjJDp0CzgMfGoBaOkVUjXMB
	 3FMQQt94e55BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F591C2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769979358.2127.18135193432923615462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34de6744928601c5729b5245e812cea90540fbc2daeab3e6ce4c487604ff4b82
Date: Tue, 20 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747699793
