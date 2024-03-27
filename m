Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FA61514E3
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711574897; cv=none; b=W3UhXAKY3dnRS0sgM/vAPmd3i+UMWM0rRbx6LAOJDpeMg9ZpAyQHYnIV934UsSrrBfa221fCi2FzZ7w/mJA9ye+YZ/duRrywaFeJ+Mjx6Be/h8tUdgU11eiEvL5fv2HDnshD2eJGJgyPHovxSeZlaXPuwWM5tiK1tzcp57C8TV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711574897; c=relaxed/simple;
	bh=JgN1q4fgFBp3xnvSoKM2dzTBZEEe30aEQItfIFQ5CX8=;
	h=To:Subject:From:Message-Id:Date; b=JrSVTgGkFN24tHDLAfKxxQb8kM7OuEFDDd/AHpuZi4dmADwq+aYoDW9PiZOxKF6qTHgQc6uyaF3i8qw1EGVgFMbsTYtFbxJ8tDR1iH9tHNHsUOFpy4Dm2Wph8aOq74hrvdZQTzMIQMnP9RqVb02cfEz4utc9yRBWN1HvIS0O/lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEoNU00E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEoNU00E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85191C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711574896;
	bh=JgN1q4fgFBp3xnvSoKM2dzTBZEEe30aEQItfIFQ5CX8=;
	h=To:Subject:From:Date:From;
	b=jEoNU00E37Nx8JVsWfCdz+LNuUe4J10MqrjmoqTaql5Ha+oKah+yFMkfMTLEcw5D9
	 DoVU4QLWVjEdL6WwXaV9uWU6pAksLbVHKSoBQCs1lf6lfXyphSo1D7GmTk+t0O8TW+
	 KJbHDJxsKLLR08SQYUafgZc8+Sdrx7XduL+FQtwoJSk4X6HeU4vnq8RCAv2S0TKB0p
	 +HFgYGgwRThV4gHv5X7fNiRAvOn58i/v8t60eAmEsu0Vj+fmfZWGdHVoWQg11lO/RB
	 QOCh1p+CGWlOA8+VgB5Lwx9oOVU0nnm31Yt+sVxoR9GEEQh5od/yE7AVqfxEiQjJkE
	 fe43+g8oZLzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7E9C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171157489641.22410.3374055889941832896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d136ac7a4b4c0c5d038ddb3546b50e5490f3356ac934fac97d424ade1a598548
Date: Wed, 27 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711574896
