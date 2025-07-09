Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0544226B0A9
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752046794; cv=none; b=iZP44poWihNRP9Cryi1MS2PctHzufvOLttqfkXvtww8D+cp6OD8slBgBiD2FUQ8oA+88wtdZxO7UmbvKm7kYDH/f9Ybblh+W3Qw2nodPzKwnODC5M4S4xQs7d7hfDGInFocyMr8Rv2l0eUyZX08pOiwFPXpNnUTgCSpFxFfBkeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752046794; c=relaxed/simple;
	bh=M0DuryO7DvexhtIxClXqw7Sc6ikGvbM8YJcUBteH8lk=;
	h=To:Subject:From:Message-Id:Date; b=CK3fe+xeN9/i03MxM7eyjNBVWb2sr15juKVD5LARGipB78H93bCeO2zMLst/qJhwRqrxZoyCBr8Ze7urqcs6y+VkAEEl4nGDWnVtOpTLqOUr5La33j50JRuLU/RtYiBp0U44LmHCoAlzSA8TQd3OZgHHC7BtnYkKOd+WkWP0woU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNjZ0O0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNjZ0O0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6F8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752046793;
	bh=M0DuryO7DvexhtIxClXqw7Sc6ikGvbM8YJcUBteH8lk=;
	h=To:Subject:From:Date:From;
	b=tNjZ0O0stzjJcgK/lL7Fzw+Se6mSPs3jG6S+KWlIFlc2qKwRemz7shIrOk1USKh83
	 AbWXQhIP/R2h85tql7zIoaK50bSq+DDo6rNhrC6p43ePh7u/W19LMo/LuVCm+hPX5G
	 g6Tv00C3qBWa4w6vBuTSh0OwgyQo/9XQgnaig/eln7iKBH4rGkDuQ02PN2uyjbwWMC
	 PTBjbyQTn8BsXUDskNZyXW7hdzj85Ks85c8p1s1O7c+1J1oGMt5TeEFu28UEkCuSbE
	 Rmm87EEoODt7gsAycsRvPjR3lzgEPK+e/1bScR4hUuhkNQt/apjpo78UK8OljkMQGW
	 THjDUNfLn69NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF50C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204679357.30293.15846392883434610964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1281ce49eae3691f6bf50f8fba035f8f9ca910cbc99127e4fe0db88fc17b0df2
Date: Wed, 09 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752046793
