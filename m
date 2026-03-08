Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E3C14F9FB
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773013494; cv=none; b=aDAc+Txw22tZd+F42C71O5DlwbfKBXbPWA8+7WnFv1LTOZ0SRnEwaqq+xMvuGkE2OCg2j0SA9bCCWj0dVth9gNun263kQDjCumm6homxOkEARPrgQ5dSVW7N+5HBwJ26Flu89FnEQHEqFkztgu1KrOonVK8B/o6L9xG6rIGz3Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773013494; c=relaxed/simple;
	bh=R5AINig8OyH6FrJmGrwBLjCZywjJZQxDYysCKbYosuI=;
	h=To:Subject:From:Message-Id:Date; b=kCTehXrG+ZRZk0jWS09l909s4hEiB2a0A3+xP+FdJMoZaUqMgaK+vXy8NwGpOcYtXLHVWuDfZA6ruddrNcJOAl3BErb87DLAqqwbzp6VCBA+Vlfxht8iTRUG9fW8YymmiJajr205uO+IDK71l5/usFVTzjcdAhZuvE4jFnQKVns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKH15gXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKH15gXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0864C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773013493;
	bh=R5AINig8OyH6FrJmGrwBLjCZywjJZQxDYysCKbYosuI=;
	h=To:Subject:From:Date:From;
	b=vKH15gXfoCOwwVJ5WVF/ZcqAoTHzB8W6dFjaI3tdZ/xW/IMsMNtBT843bUZ0rYmg0
	 g5fT+io1quqvaxkj0sZsoQvsAPb4eCk8Ho7daHStqTDcsZkdjj3qHkKW7se8ppOfkx
	 GQPrvhmqBEzDkN+gXAcEbrQU9uWMDdUGU2pwGC0O0zm8ZdOPjThpbNEWlQmEF3uNHX
	 Mg9GUvoMIMeoaHcBGzLN9uozrmOUsjOz6RPb0VmRjKyWgvuGtXeFX6tHz8bSAsgKoS
	 HcPb2sqQAfzjro9WcBbX5XCYmfpLJtYgN+2c7oYc6K9mPnY03ehm3ElWVz6vQiBuFE
	 DreMNBnx1DoTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F840EA852F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301349358.27758.13291949782737482975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f079cc323ddd74c7828b8ba9062a3a8b1d9ac6d901f350adacbcaabeaad93b9
Date: Sun, 08 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773013493
