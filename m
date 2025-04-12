Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1BC1A254E
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744499994; cv=none; b=jCXJ0nniitetszuFO8pO/OYsSUwVlN5EA2vU2oLWo3n0gcnqGpJXLLf6fW53hRlyXH/83J/TbCfOYHILq7JK5ASLwPhcGnz++f2HmHQ2gtQirxEfsVxyFiFrdFgSi686m5+28degb0AfuGUEiolNAF6R2SRPwaIvWdsAdP1oS0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744499994; c=relaxed/simple;
	bh=ppL3uWgeVBxTSGUsQYBzSWq/PnbYKv5Cv2MGjSoY6ck=;
	h=To:Subject:From:Message-Id:Date; b=HZrVzSFSdspvoqhFyRKSmDMeZd/L3hNNCT3Gh/u1WZBcWntAraZWSqaV4rdNCaemdGKDw50oXDUuSEs8XDqLv84Z9q51wNSJGAp5FIYXhebTxuLzz9N0bvVGQ25YmomH405m3CYhTSDWDSrYLEVVP4sEPmh4jTPhJSqHDMd3IfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGQ6GLeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGQ6GLeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCC6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744499993;
	bh=ppL3uWgeVBxTSGUsQYBzSWq/PnbYKv5Cv2MGjSoY6ck=;
	h=To:Subject:From:Date:From;
	b=KGQ6GLeBgkUJC4QtU23l02T1/FfuQkOwBLzcID/IVr13ApGoiBdBA6cM3UxNg8uJi
	 JfrSy7MzzkNvlbPVEB1KEgWbhKHuq/9Y3TtwjuM56JseCHeo/Jgca/pms0eQagBxaQ
	 6/q6PRhCCmtNMl3aK8mhzEfQd42FTIKUQAQsX4JoxqEjgpDAxvVsoxN2RwfIWnEpbl
	 khOst2OcSgOsJTSfgS6QrtY8Ixct3LfBEbpcM2uocjIarrxqw1rjS+jZOCMQ+M9T4/
	 kM/7AgnrchRE+UwNgvKOK1ATjKTPv4b8UPND74PLTiTQCnWC4K6FNXIe6JIN+dWo0W
	 +fWs5m1e8/epw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99399C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449999361.7628.6040900332903777754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7320a028043cb2c56704542a04edd577fdd67db05f450ce900e4805ece9e359f
Date: Sat, 12 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744499993
