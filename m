Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A7C4D8CB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726553154; cv=none; b=MG4jHpWSGnCj1c88TniyEn9Te9RjfBaadzM6v223jPDj06h1+TPauigO+5rD9NRqjEZiV1q9JhUU3XWrPSCwPmGvvTWsm9N8kVl8Fh1KOqbmW3EUEYOYQrrkx7DmTOXMIHBP8MYSX+A176ed3JgWkFZthlL8yf6j4bJUHb9kU3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726553154; c=relaxed/simple;
	bh=2TQr4LGQS+L5dO9dDD08kKP8bMR5pdJOJ3o8JFjpufw=;
	h=To:Subject:From:Message-Id:Date; b=E5+qBE5zuExykjI8Gp+JINUY1rlvfG1vuaMnxxr9+iQDnP7xJ3oQxuEQjUfeWUUy80ZsCDb27lODhBlTDt/r9nJ/CJSAHbR0aCSsIxggJrOUtBbafQ1EY99EdHn2ucX4TbBHR5g6iRygCJxcoc0st4Je60veVCJUPF9Xk/71Dg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKnbmnLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKnbmnLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A2AC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726553153;
	bh=2TQr4LGQS+L5dO9dDD08kKP8bMR5pdJOJ3o8JFjpufw=;
	h=To:Subject:From:Date:From;
	b=CKnbmnLpxlzkbn8ETN4e8JFuqZtS0pymkrae7vXBwQlz4pMlXwA9qgJEdcdgOcfKF
	 vcQgU30kIeTJaabJhCjkuycetWGdNXp0TUZAjVAE4NtUCXJe0DxAfSI02W8jEDTCeR
	 RtcSkszj8BX8EYshDht6p4LI5gxAzh2MF+HNkVWNFd+HKpxTYEo2FLtDHONV5SEKwO
	 hqN7tzhSwgK8y44PCdRkf14YgjO+glScdU9agHt9so8xDxDyryjWfQa7Kd3bO83WIG
	 yTd2Dau2jOW5mLtE7YQreJGPuc4pzkXYJ5mOJdTw2Kh73jSf/MpuExI3rlUZsR9og+
	 MoNVGnaKMQkIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05B1C3ABDB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172655315364.10088.16040104912081812597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5438729481c6eda3a3995ef4fcbaa4ac906ec95f2da9963023bbed9ca5f8bb8d
Date: Tue, 17 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726553153
