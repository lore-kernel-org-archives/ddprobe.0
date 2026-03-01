Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F572E3AF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772366694; cv=none; b=EmkWVdMOPrUwW1J96goyVnitE/2uOJy/KV+YvoX0v1ZFVXeSx9fLt9F0aZGJDqgaBxCVDsWJ1wcU98PioBPHWe/eGZv8912W12vA3KOPPyINYd0Mqzd2I4PW1aX79aEDJTJ4kIE+O7nhrtbbXxYa1Dfj8A2eiAmeVvQNqGrFwFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772366694; c=relaxed/simple;
	bh=LvK73MVBIJW5zOBJj/139d0GGhaQgoeIYZkXD2hqBcU=;
	h=To:Subject:From:Message-Id:Date; b=T0VGgnnDjWqVTbLJDaCt4IlGJacqbS7LEayEJ2Cnzd7oEDNqI4iMEoE6ZjgmJxiG83xEk1oK3IszV++irJeRKEMiwUeWWIiutOGXS1gQl0lL93AEyhpjqdmSDdx/9a171B3543OgD9eoISlvIZIDvn90kcURMIolNzwfYURbA6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSURZKnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSURZKnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1325BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772366694;
	bh=LvK73MVBIJW5zOBJj/139d0GGhaQgoeIYZkXD2hqBcU=;
	h=To:Subject:From:Date:From;
	b=KSURZKnBR/8G5ARO+m8BEtw/SI58j412LmkmRyWL96lQ21qbxMAbmXbU3XJD6QH/p
	 9DKvbppTrVU6ACefT/knkHA2j2baigHvt/aGnyO9TCPafFE5abBQAmn5le/v5vWz9m
	 TxUKs9wLrzZEX4aSOQsJ7eQY+o+Wgs0s1xV+naND7iXB7LVFlD3RPg5uWH8TCAB/zs
	 h+VF884Wiq7G8EX8dQVp7ZPVBoywazdiFtS/F4AY4CFBjAGBuiDExzBvSvFoIdT2Cl
	 AirI6lRT5l9qZ3WgLLIgjsGUesPLshYnRg5sMlLoE7IY557pxoUzTG2ki9uzVKV9Yp
	 dLHpY/uGYn3NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB266FD0057
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236669388.30698.7753929285802389759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33cb3cbe16dc0ce36af00543f1c1a2e54a367f265553d9a5b2020f1df397bb4e
Date: Sun, 01 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772366693
