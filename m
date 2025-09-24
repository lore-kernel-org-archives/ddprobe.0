Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2096742A82
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758690594; cv=none; b=YqWesgFPUKxNwivcQzys8h3MVOMAfy169Rt5yT8dCY4p82ZyGhPKhSWetV2bHzrEjoH/z4OarBTuryMcUgmLzHqlupI/SroY7vtPdT4qUIcPGpVOu0CAAqcORlNBXF+4o3XwibElS+qCrAGIdxfnw6iol/kCixmC2kFHJb0dPUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758690594; c=relaxed/simple;
	bh=rl5QAMQcqXydt+Vh8QsDVIXZqH4gbN/IsJGX6eX8qY0=;
	h=To:Subject:From:Message-Id:Date; b=M6lDqlRYZ6t/VOJUWBsHq0gbfFKCzIPEExLTChDQtHtxKtzBiwOz3OjsLnoXKd9U0d8oO8urpAIIf1eCQ8n3FcuoKNf+2do8i/vELD1vYV0jFBHBMYmeJLY0D7Twucc1VIpKP2lZ6SIaWr6Usxwm4uJ37EHW3ZQZ/IWwFhbGxWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHzu94xC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHzu94xC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7A1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758690593;
	bh=rl5QAMQcqXydt+Vh8QsDVIXZqH4gbN/IsJGX6eX8qY0=;
	h=To:Subject:From:Date:From;
	b=VHzu94xC3NwPr0yBIbLk+KTzCyNVK0C3zhOH/fvdvLHVkl0kp9YL/vjfMM/uJ5trD
	 YZcFFxS4ikADrZbUq2/q/O11T+SCSnRmDSP+tigGzyW2rbCQcyNQb+lsubzs/qZpcr
	 qd1rh/cusY+SDz+Sy3WqQ0Hrp2d0P178tzxAQg5pZcUOkeM4ihtcG8tIqjGO+tMeqh
	 ytbXbRjFiA+EX26lhrbS4ifZ+SWlA6NppyqnYYQQP40Z2WxRJoKySbUdOWH0t8RqnK
	 tEV7aP+PMWOFQLGf57cUFQSU9N2Y+2yqhDBn+htytzLiVbPnh3p1CjimXdUoNH0Ung
	 tSZNJrSJb6pbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936CBCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869059359.26425.10787236856428549112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce049100d108ba89b4b540e316245c1e9d94675c4a3ff69914f93e66f1f79921
Date: Wed, 24 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758690593
