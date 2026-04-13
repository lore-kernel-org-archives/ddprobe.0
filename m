Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102033806B0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776075454; cv=none; b=X/g4lRtrdRhdZUela1BzpiyjZi1VkwEky7UI0WyOHaFAWNd581ZsXKcqB//nNrnOBENMfUawxqQVY9023vnwUaYjlfFjlDmjZJgmAzD1tsxDnApSGZO6sYwIHZzo9czPh3mE61qCIQT2whY8mZP6ZcvNxe2UZZZB5y6vWql/e64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776075454; c=relaxed/simple;
	bh=rOmwPUj5/zBnYoTQzOK/U+z/dGybP8W7oC5QERinDDY=;
	h=To:Subject:From:Message-Id:Date; b=s+Ls8YJNSosyJhoofJQoRmv5rp2Sh/syA2DP/WAGsk4N0m6K/Wpjto7UPyVsTJbdE2x29L5CXh8mToOFrE/OTUUY0jj8BIEf1vytPXZvXkzh6gQ1ctJmqat3APwnddeIQIWMidmPpLK2fFoFdZ4dWE8OaGzPJigkDsGBoYybGtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oyl3qjP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oyl3qjP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B740AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776075453;
	bh=rOmwPUj5/zBnYoTQzOK/U+z/dGybP8W7oC5QERinDDY=;
	h=To:Subject:From:Date:From;
	b=Oyl3qjP+KP6fvVX2ILIBgK1S7+K9dNRmBVquc2p/5W0K8eJZnszrpQLOK+DrFmCRY
	 dyRdsrm8x2C5wEJFSDKqZZaPbYOcuNoKcArBDNKMX4Bfdsbg0n5DM58pS0GZOZfVdb
	 iOY1mEf8eDNyXVggxGEwU2nq1GgNQ47bInfRoScBV65244G9x4HuiAfPP69iaTCA3q
	 vawgqODyLjAPvzuawr+252h0ZJKYqi/YD9voli4rfaBBzXHkB2uBR5lLBGkovGbhF0
	 SqQIzwSW7QD7jYZ4ApKZl/eYngaaRDDDm15RhkRwJJcAMgOhIoJlNA4h+wiBtibRrW
	 tmBBj5w+sBY6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F41EBFD26
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607545368.13973.14644390662237475329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c317571f8fa48dce6d333c656d939ba8ef0c01b66fbcb46d1dea8d75e8fce0b
Date: Mon, 13 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776075453
