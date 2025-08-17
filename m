Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E031D88D7
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755443994; cv=none; b=ddtF9Z1FpL1jpVI0JogP/mm0jU7pggIVh7o9Bboo2cBzlcDAn5/vifHqc0nL0pn+FpQkzqBZLM7ck0plfpewf+MUUjhdLtq/sJshM8VQZlWi91gDj2df9+q6MywB3RkskHXi0788p1hgErMlDTUMgPwE84jfSTUfz/l7puBVHV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755443994; c=relaxed/simple;
	bh=hI6/m7zY+pGbmHmnDFjsT67YSrc2TW0q7a8P5Udz/m4=;
	h=To:Subject:From:Message-Id:Date; b=sJDeFdOPUnnspOhYr9f/zcAYPV70sHlgYtYkJCr/JT7RJi85jjiT57xOCwl4UY2ot0PbUT7iWhV8r3VZTrPisJlWjClRUUE/dXWrs6dYe2FAIN34Vyejtn9BwSJ5qVvOZ1YukpmdPosw3W5Nd/dRGnUec4+DhVFhSi5lUBQwEjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgEg7q4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgEg7q4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FEC116B1
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755443993;
	bh=hI6/m7zY+pGbmHmnDFjsT67YSrc2TW0q7a8P5Udz/m4=;
	h=To:Subject:From:Date:From;
	b=kgEg7q4WoJiwjOOadbr+hB8rZiWg5iXNznE4pACGTfzIrUyMDzDRtNKIzoMrq8K3N
	 9zfiy6lVNR33hE/NHfc5O0MC8N/JdHZCXvhE0np8Fl5kdyAMV906ynK3qSdjeoL8B9
	 KogL6dx2ywT6zC7a5Dh3/SKBUpeutAwB20oxX5FEnYOfYsY2OpmWLDA4Nb8anvznZX
	 r7qWZ7v70m61CWIBDAwPQVmg51yy3mOknlE/HMI4Rlit8+8A63Az8RmOkZiD6WKHyl
	 l/A731PYW6olra6cFi1bAQo3XmFr0ZiJkTuRuZ7UitkAxO1Wn+YBonaDpNUo4Mmpbe
	 5PfVN62nZI55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBBCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544399357.2164.17585600770284640602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a40b4d4b3eefc430e5bd62e64c4d6c4ebbbb8559b177469bb43b0c2c0ad0bd
Date: Sun, 17 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755443993
