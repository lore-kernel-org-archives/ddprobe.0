Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E9020B80B
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785560434; cv=none; b=BE5KE6HH5D27UW7acvX5WJdAAtE9vmO4C5SuShvvQE41qCFFCJ2zNg9VHgSekR79OioEJpzWzKwGpIX5eD0zlWfwTSMB4f37d/Hq5LHbvlg191UnGFG/e9RopmCCNfwdmTASY6FvlKTbUJImkMR8IZk9z1yQr7wzKQsm+pMutHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785560434; c=relaxed/simple;
	bh=IxiqlLMW+tke8CMlaB94WD9J8kBnZloopdneNJ7q+5I=;
	h=To:Subject:From:Message-Id:Date; b=XEFT4Q6VwXxcmKhf/JdF0u45w8DQG33nYKjp0Esp4c8jXne9PdYY9iJSzjnNqWVKv0d+lTeOBgu7jpNi64q4rhZOIJHufIzDQc9m8TH7URn/tFBgoMZ7ZpDOlyOuQ14Y5EOw3sXFYoR5XF/CBUEiJG6KEI9g5DSlno1/c3p1hdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iP/sR4cy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iP/sR4cy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25E7C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785560433;
	bh=IxiqlLMW+tke8CMlaB94WD9J8kBnZloopdneNJ7q+5I=;
	h=To:Subject:From:Date:From;
	b=iP/sR4cy1hldXXNcXmptCPv4toV2y34ccdg/AAN6Mi2qsldH5fhXygOeA2yTDFfD1
	 5CTN+AtMOnkkVXRpQr4eg1RCwldWqObyL+DT/vGoIHQP+f+Oocx9rGQeeYF1FHsBr1
	 hC7l/8fUTiKLKfou7NumIhyvObUtkhKy6zYwZy965wKQi4MQ+8w6YvYCqnY+NlD2O6
	 vRMatQE7FAT3xXilt4LcHTCwriUEGxLkDjBx7rGLe6cQnLN/vmCHaug/YXX8i4KiyX
	 tKSTyhqj21BZL7zqQHLw/FwQxv1uTwSLY+znXcDoIGPukuciniqBfKf+xtkVIfpXtU
	 1FBBQx0cHPukw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB333C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556043368.20916.126445633045082325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e214092d14d39f682f3480067d44aeccb424096b7047e48cf48265d3406724
Date: Sat, 01 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785560433
