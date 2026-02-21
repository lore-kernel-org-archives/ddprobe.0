Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACA81632E7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771709094; cv=none; b=iWDqhmhyLy0QwKDMcLqz83qgfoHQyPSWvYSs+OqSX5s8ysITvL0uXC1gNoR9nTwXq3TXXXBYnYzIuQJQKjvfxqYsdHDdIrYRgCYJi1fmB8oyAm7kSK6T81fRVn5vnyAHGSloZxLGfPP7Tr1mAwgvLJma9ccQo9dwVI3hKZz1bjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771709094; c=relaxed/simple;
	bh=E8ZgqZcMFZSpAAnTzWw5RVm62ekDyg6PqZzfXFYNnz4=;
	h=To:Subject:From:Message-Id:Date; b=edyka4BqpDmG1D+oZ3EYJMA7omm76RyVU5grci4UMCabK2IB/72wF1tA62pvwrks6927xgfaQCrOfrQF9sJwxZjWuySFgZjuVHZZozy1fe4WHLdGagqXwhSsuNPydlRnmClQneFmcG42VgZ4V6oMxinFnypdcWrxl6Pl3D5vZqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiDZABui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiDZABui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BB9C19422
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771709093;
	bh=E8ZgqZcMFZSpAAnTzWw5RVm62ekDyg6PqZzfXFYNnz4=;
	h=To:Subject:From:Date:From;
	b=CiDZABuixcyyL3s1KWbM0DQ0AaebmEH71s2CttFK00sGqtVYfdVRPc9fP9VOSYgBU
	 r7U4q4COwbp1ZY1Rg8mzOFqD1FLSQbxHUU8QO1Tnkqz9RUI3CKxltYqdZblqFoj/eN
	 x8LxMSIOYXj9mUBt5jKvGJyQzhG5Mq2il/l/+w6Fv+BSGXn/HlbXCe2e6C2dgNpJqM
	 g6UJS9BLfBTiXLnuupzY9r+CMOhrzowp7IYmQU+U7Apg5G94GhqQSl+jjGd8OiFlMH
	 NoBIjFr0BQlfLhnT5T/AzwkxNTGlo3Hd02Oj0uQkodRnXJnPPSR2RgiPciZz+kjg39
	 7xVWqPd4nbU0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F9C61DEB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170909358.16781.9506389492944818454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1f28952423a7ef0a9c5390f5c28826bab2f98110e2ba88e9e2ded53d07b41c
Date: Sat, 21 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771709093
