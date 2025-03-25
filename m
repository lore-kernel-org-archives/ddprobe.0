Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588AE1EE7B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742939394; cv=none; b=N02h9kl58zFWMrg9E+wRiRSUY8ngs/IFoAsC5mlIqCkRgNyjg4/ewHe2eKmKOdQIyxTCZO1MA7ocrmNR9UCSoV/Kb9OM1ZeS+WxXFfCCH+kOYvrAvNzsJjSb5jw9AllqgKnqaMy+YEtrghjyM8YMMbF2Mlf5LwmqBXlJvLMT+Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742939394; c=relaxed/simple;
	bh=XeLCOkhkjJqUhCpKcH7HOZUOPXGI1Ub6cftEbenxOYQ=;
	h=To:Subject:From:Message-Id:Date; b=g12OCMrXrnL0ToSStBHL9vdgwNpUe3Fe0MckU/sJvetWDj5wyGpOA6HzDCBYJFtufU/ajZCSb3VJDENph/2O0KGqQCOOFhSEBq30bGvaOyFDipS8GSRtGNpeOostL5eJyzfDrj5/8jzyog5Tqe0hMbLGcR6UQLNY/NlXriA8xyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKjQCYRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKjQCYRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A18C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742939393;
	bh=XeLCOkhkjJqUhCpKcH7HOZUOPXGI1Ub6cftEbenxOYQ=;
	h=To:Subject:From:Date:From;
	b=XKjQCYRIK1dOJyD+OaWPYiBhf9fOXz/tlz4RCUg3H1xZZWB7YCUZlhkHrWV8bRyRP
	 yrM4hPT5B/AJciktx9rHWkTdLO24h5H9vN/3wxaHNCxOLTZJeYgRGEF1M5P+O0gZqC
	 Q29FVlY+AYW8S3RwuDY000OvjFDiB17fbHFRfYfxVE4VG+SOKepK0qY6hiYUma2M8M
	 WVReokiD+DwXpY65TGTD+6KxnDNKZ2KAvR8M0IovDZtb47nc5vTLvMJ+I1U3hzVhMX
	 nUEkz5IxwVilsYTo3o69yv6wV1jKjEiPvFCZMynPfx31iBds8fhONqo2+3TZ8BTAqk
	 u7G0NgaOdMclA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA0EC36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293939368.1478.5646827317261154744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5c869a0489d4b8595458653e9fc25153486be0b18b8cbee7aa3826641eadf8
Date: Tue, 25 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742939393
