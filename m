Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393911A9F88
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763884914; cv=none; b=pH1m2Fxrm3wO/0KhXGNAT8qEW92yA7txsHeuS/qZlg5kMHHquxus2tbKRSeqjt8Zvw5I3PkXvyBuXVxENyH5+He39G4B+TRmkljn2R84xFcXRegqY4/7AVpjIaEMSNU672veTf3qlmZN6Cyw3+hNfhnwQsWWjpRNaPe9c//j5G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763884914; c=relaxed/simple;
	bh=bMwaDGuXYyXjoXl6LXaQuerlWoWbKtt6eU8Q27+AMOE=;
	h=To:Subject:From:Message-Id:Date; b=Nx6/ylS+/UwVxMPw46mbLPHbajdE30y6BHI+Q0ljcW3EhQUqcs+Gh46bRmDo9Cot1uyXgwXEtGZBwXEEf2gOI02u0WNjCScSr6h/PPpY7RWioIsTRbw4a4Xb+zDLmAHuhBm+vGjpQSfpMthafpFKHxpUnKHh2kZjrzBmhsEmhJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rO03Wqxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rO03Wqxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A933DC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763884913;
	bh=bMwaDGuXYyXjoXl6LXaQuerlWoWbKtt6eU8Q27+AMOE=;
	h=To:Subject:From:Date:From;
	b=rO03Wqxz+Xi4VRY5ccnlPfQaSdepB/qNaDH9JcumHLKB+x7joNASzZzX+x1J5k8lk
	 zaEBf5jGcWT7Bs13KXvNZo/KwAMa9mfMr3ZdtEPKpAYIpjSd5BcpQHL4tsJ8OY2bSX
	 VDDD9if5kBtqpyo/tK5QDyhewJVANWcQ9soBJm0DywpiENMzL8+PMHeZWcnuWRbsk0
	 6lbHqZCzpYi1zL72xydzlnzmezLEUIEt0bCHWeVTILXE4f5zQ7t8qIclK7QEkp1cUq
	 l1U2clVA6azs1tmUIEUuhG8MX7LN5WDe/4gqqWveYAD6oOvmPex4p5CrJuc6TuINSh
	 MrPwWSmQwueSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97166CFC26D
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388491358.22530.13472176408131172390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f41a53bd3ad1a12da8f367a5bab18ea687a86321c1a1cd7e13e5bbb83d4cb2
Date: Sun, 23 Nov 2025 08:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763884913
