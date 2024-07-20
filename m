Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282C226AF9
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721519154; cv=none; b=PM4cWH2ebYQ6taRS5jp8nK04Ukt36+W67tdtUVqYqnGBmDbItK0GsBtApVRKaWRN4OUloWsFI4wTePtHY1eKFjtJTuaUtAhm/gpStv3e2IybyEFGoupFTrej3ueQQLQPTpknktdAi8RVuU+am0NMeBm3j7HzCmHDU8FUVLyKuac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721519154; c=relaxed/simple;
	bh=Tg6XU5P0IOtnh2TWx/9AtIKdkk2kjwyZroZ8sdVcrHg=;
	h=To:Subject:From:Message-Id:Date; b=O5mBIRlXg9s9WiJjUVFHuISMUSBBqu3hPW+f1iXpue2ISfawCd2Ok8OuGIwBF6I6mCSbLKdEC3/Kg2h1cnQxtkKkmv9EcRiAHl6irAQRJgqgGsK4ZGTRwdR/H35HS2+doj4hOBkfQFNM0qNZU6LydH+xB02EV2TcX4ySK8KD6ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qirb1ru1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qirb1ru1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52FFC4AF0C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721519153;
	bh=Tg6XU5P0IOtnh2TWx/9AtIKdkk2kjwyZroZ8sdVcrHg=;
	h=To:Subject:From:Date:From;
	b=qirb1ru1HeK5fcHttUdltjv6sOn09WMzVJf1ih/ci5GlXPplts2gQIvoX03IOJKPQ
	 5B9TvQd/bfyVeO4G7llTLR1cXbAJp+UDO9SmaFSAaNgUdJaJfKsJ3ZpzibWL1oA56P
	 t4t03hCCsT83Gd6vUw4oM4WEsPyMgEkH6Yj/2i+XeG5DfJRSAZ6Y1QbpApbuhIQw+c
	 QH4CSCeTdfEhMtWPwjLlvZLGjCQBKitLl4NL3VzTPwOM3cX78EaM3NEagKqeaHCQJo
	 spIlW0XkboQLvl+ECfgfkLQ/97eUbKPFjvj3TyS3PUYpr4uPByEvX+pR6tkWZnrisN
	 4btCum+AA1Z+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999DDC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151915362.317.10947563257172284446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0bffda81dc9bbcb6cc463184a2a2469aec3f362f40a6d45a62e959384ad888
Date: Sat, 20 Jul 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721519153
