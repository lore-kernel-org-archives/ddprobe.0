Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302961B3923
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765075974; cv=none; b=PTMWgQ5IKurVuMEEFratu5U5ZJDlY/0iUKGh4DwrrQlqk4kHdgt9buUpCqwPreSC2FMzxLA+AuMpQXtsR3d7PKDWK2IJr02F1f+59DeFuL/c33O17UJtWkFtaKABGUMHiOEe8XOsPkz3hAiwFdO/Jv3OAw0FytszV+XqGkbmyfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765075974; c=relaxed/simple;
	bh=Z/8Rqon0oGubn4Y3gH159CmVg/BmQDK7nUd46pkeGHQ=;
	h=To:Subject:From:Message-Id:Date; b=YcrizlXISXyrwVSmCql4PS/cl/ne0YoGJHqNnCLcwFvuISvxC3upn2yobZ0szlEBqZ0zyR4Sku/SpGXxDOdqeOQFbASw48yAPiQ4Oq5PVax45JFVZJzUQejTk4LuCCGsUMFN4fZRTOeeXpN2HOZFTR6HAXdSZZPL/8d9Jh11ERs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzJlWTpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzJlWTpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7397C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765075973;
	bh=Z/8Rqon0oGubn4Y3gH159CmVg/BmQDK7nUd46pkeGHQ=;
	h=To:Subject:From:Date:From;
	b=pzJlWTpvV7/iqjfIoUNy04CeQoJyA7bo4AQ6uPVdJJM9SOT+mIN7UwsaSbI1Ax0LF
	 8/II3vipB8p9gF0p1eCAO9NGkeF21XM+IF0rt3yE2m2Jnce3DSfOYUbkCIX3n37UPo
	 8hHdXyhW8nZnCR8V9Gl/GSVZrMuaML+z1+6qzdJku6lWxfX18YTpkGocrN44HEwyIy
	 tSWnkVAPN3wxZuB8adqLlSkbfcx9wSIFwJ1EMTdIY7+tA45AgSJ3dqmCKQHm0x1RoV
	 lJ5GRf8+sYO3xlG90rrNM3hOqRKeQbFF4Fujnq9bikFN5+wm2/nfo+eCjJKTZ4+YHn
	 Xf0/57FLuYaMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E9FD3B7E1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507597359.27220.5873366793566405476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f452ada0847e48513f58b137f7e24f053abdcd3f41ad0ca3a3662e3c60d6c863
Date: Sun, 07 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765075973
