Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6C03793D4
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774694694; cv=none; b=oYRFML5otWR/fikXvkroMDemPLDmcSnEKy4SwYJ5arnY8BGvd1UOtnY3QLiXzUcowzbwkR+foFps59p0Whqy3nMc36UwCXccdqBZvmo4WIDOuuPpE4ZAtTghIY3IAEKJMbPYeIZQ2xguMrWi1qnv6eqBKiQNIeiOH8dyNXdlOCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774694694; c=relaxed/simple;
	bh=SLr7vdC0Ciy8ATBJU3iDRqySfz4vn1DxEMg3JVKab9M=;
	h=To:Subject:From:Message-Id:Date; b=QWvDykGq1QXyxWIJh0zZinRKjX1JHl+B0DEWkE8UhIZq858qwfGORL3+qOOqNej9FB9y3VASElhy4qYawoIshk44T9wYhgOzG4SMCHiy9Xd81r8SexJuMJOo3dpYIc7pv6KMnjXvOBqKYG67gOkq0vi5WPlw1wLdDXoNYg6ASkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MflsQrRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MflsQrRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9864C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774694693;
	bh=SLr7vdC0Ciy8ATBJU3iDRqySfz4vn1DxEMg3JVKab9M=;
	h=To:Subject:From:Date:From;
	b=MflsQrRplY/Q9zQ95uX1rH0zor8HngXO1nO5x1RAkpF9SZYPw3cTrqJXmIyJiJI0v
	 G6e7A68bZsendbDZRasLnJIfwJBlSt8oi/FTalYXolvh7WaEaItsetEqk2MhBXpbGA
	 xltm7j4UZCqwtunAslcOVvOXMXf+VMyHEacqg6d5d7ITaGhLRlhmdqlo7SSV91DXYw
	 5f3PSnfwxD1coXtSAGKkjDr3T7235NiwYA+JyOzk4haUNU8lfe8j0APzpvUKm6B/UM
	 AhOP6LrneyQUXkGkAN+O6MMfbX5JrOGUJDUdrAma/GfKyDuC899fOT8Dw8rND8H2jb
	 63bjjqwELdjHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971E510F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469469358.31727.9686787851848035730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3918ea9e6db7fa5a3b805ea392faa199e6e9172a55a50b4b091609d8762e3a36
Date: Sat, 28 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774694693
