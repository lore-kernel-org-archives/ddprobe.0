Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7563B2931DC
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788105634; cv=none; b=aqpuD7/JmVOf/4Y8w92DE4MortKvTMJLhSbn/T+jrndVEu7v0jq2rNqjBblHSkDHcbwuZbl6yfqGz2kA9UT7jYt00Ym1G6U2TPiJiRtPr1c3JmCmHBnF8S3zICicYfzAr+Xa8n8RwgYFKe+tNldnYBztTak8T2kiD7qu8ps8iB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788105634; c=relaxed/simple;
	bh=8SbLWIwegKaazj6iM6UvpE4PEVnCsiMxsnKZ33z5O3M=;
	h=To:Subject:From:Message-Id:Date; b=SL4GpP2INnpTe5IwHUGph7jqWo5OPkpJz3KJETgZmt9wNJQTRusxDZmvhDTjssFWlcfMTsJ57RkEEfmV5xpXZqlUP7XeIPCaG1ytyQJ0Es3rbtPrhp+7nOWsSWL3KWyJv3xshZvSUIBZWZY30tcAgSOpiBTnDY+MUvzL0jNAmOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzQq3Dyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzQq3Dyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A30C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788105633;
	bh=8SbLWIwegKaazj6iM6UvpE4PEVnCsiMxsnKZ33z5O3M=;
	h=To:Subject:From:Date:From;
	b=SzQq3DydZOJy0xJFjQQSE97cdp89wNvsShstyI24AW1jchMRz3Ja3VusF1qCPP7T2
	 Dv12DUch6JiOpg2wfob6fexqfZuEPPz2EMZHqUWlrLgMBg0fYffZNuZOqn6wW1umBy
	 OKZOzX32NIhD3vZuuxJQxdFX7FuLuYsSog4vuxlP/PuC50U8mtjWtPt8J+5EvmXewf
	 mMh3dVhlOAi9sCE199q4yeTApAOPB9FMIv5NtHpaPp7wE5v/a0lrEhTfBKXsgAb0tG
	 OM/WCNLduSY7uP8Im4tKAgDenTT9vj+7dFtvBUU0neE6/tunVEK+HuU4XYTYeJFdjV
	 +3IsRTa1ikoBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09FEC61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810563368.26041.11959225023697741298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0071b49db8fb53d2c6560c0e86df8c53690fdfaf495870d4788bf501cfc3934e
Date: Sun, 30 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788105633
