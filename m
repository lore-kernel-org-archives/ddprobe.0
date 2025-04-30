Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43946157493
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746029994; cv=none; b=a4KIeiXz8fglFMETcMTx660No2YOXaKPR4BLpTe9TNsOoh3S0+nCUVBmO37AFmIRpLeSv+TCfHee6ZjrVMrL9cUURR/mHu5tIavE4Hyx8idVcG1XHuHsN5yq4Hzr+whUIQW9Ci1OqTH7T6TCrXE6xvMa4lADT449LA5kXDM+9sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746029994; c=relaxed/simple;
	bh=ZdQcEWY1zLX9tvzjbphtasM2vuYBRQTQ/+apoOKHUyg=;
	h=To:Subject:From:Message-Id:Date; b=oY+7PtuuG/8qt2hEDvtmUAcAE3bPhM/pbPOKGXlG1Hr9hDk2FcEzr2P/z+IbWxe9XARFeyqQxexc6VMDKL2q6leILL0brqaZShNDMsvwWIYW/Bzlv2WIlqaT1fC9NsNBh0t+p2m39MNt/h6JeqcN5NbR8sJdzrsvzJAXbFl84QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrkBBYWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrkBBYWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746029993;
	bh=ZdQcEWY1zLX9tvzjbphtasM2vuYBRQTQ/+apoOKHUyg=;
	h=To:Subject:From:Date:From;
	b=JrkBBYWS6kgXLXk9WBpND3+C1aXH4U+9VR0VDw1Lci3GTe+pc/gP9nyv/LmaD6FHC
	 gUo5/2PSin+DmPuU4NAepwdHmx9gcTeNihHquNwMuwmcgLuQbTPEp4p/M+g/HokTLG
	 jmFHYSh0v8pppiYjb9D/YoJKy6zgK79G60T/xuNngeEh/YjGf/3CIK0Y6oI0gCPguH
	 LNk7NZW6bUKcGfkTGRTUdIDfGx02yDYBW9psW6lnKMPB26SoVMFWicq82mn2uytKVu
	 +WGyoV+1HuG99LsrwjR3VvG7F7TFr9SjUQ0UMfO+W9C1bz4I44MLA7GZDnLTxz9uhd
	 7QY30rWOXQVsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9858CC3ABA9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602999361.15311.3145609884865853738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ef0fc6c2fe65cb0befac97c9fabaf162c726a2db7ad12d505b74dbc78805de
Date: Wed, 30 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746029993
