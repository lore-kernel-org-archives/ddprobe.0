Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C62B1DFE4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726515954; cv=none; b=WD66idJe1Y2l8CXAmG6MwvF5DqLkLbeZGzNtYXvBf0/m3nyc6YkPWkJt62DyX8YoVeuXluq9GM+NO9giisWiayaam4zEUeU+ffgwPwvAPUZLtb32EvZDhhDA8Aa5Q8j3crTkjP81rtBHBZksWfYzItyejyzeSqFWJeju++MFJoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726515954; c=relaxed/simple;
	bh=bN/na/+uYW4JRjXB7Q2UvrbOtS6z7WineEQ6bIZWx0E=;
	h=To:Subject:From:Message-Id:Date; b=du+ms7+/dUHgaWgrCdBezTOsYXBjI+fKGcyXGon/bNfW+iqAX+dc95L6iqxMyIMJ0SjMuJB8wKiNutt/uWbk28RCJKl+pD+S2WgwUYwFderw9qGM+XQ+uaeAoAHB73OtrVKGCpm5I78k+yc7+0ZhPIRNpTHXqWcB6y8U0KlcVb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=md1sUT1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="md1sUT1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8516C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726515953;
	bh=bN/na/+uYW4JRjXB7Q2UvrbOtS6z7WineEQ6bIZWx0E=;
	h=To:Subject:From:Date:From;
	b=md1sUT1baXYDqqXo44UHwahW9E74I+OyC8sBFFXq3QLHbYlXD1Kb0Hjl/zQ3dDrhg
	 lgR3hjiQVqXMjah5VwA5507nOIeGf0PS3VnOeirc6amYrUYzBUoWlgF4bJPTvnGao4
	 qYynBicQ4AWBk3M5rllXkqhBLlf6wnFgi693sGdQVDasWhXzouy5GSXUjUfd74YRXz
	 JB39Gz8P6j+55phDemftmR5aGgNBgjFme8WY5UJ24koM1tx5eUb3f65FiXnTrs+QgG
	 XPa3OFETJezKWVCEWDQXnQU9qiYJrLs2n6hzqLWUaXIvcP3TyA4r1OYIQxDG+59910
	 taI56RKC6Th5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94443C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172651595359.32677.3280287770318278323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ee66a7dd7e88e771f9060335f4287d4dac6818df29913647249d53e7aa0557
Date: Mon, 16 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726515953
