Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BDD1366
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723464354; cv=none; b=rYheGpZnD+tTNF3W7/S0Kl4zZIps+hn5LI+4oJSjtYfHiXJov3YgyWMP6i14fYsGhljDpsAMDwXmHxX/1VNAbAcuehNIrS++P88KbGY/X5WSSauAOTU3fhFpU8zRxiiJvWcHxlMhLetYF1BLeBX1WImiNwp7BXxv/K71P6GJsCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723464354; c=relaxed/simple;
	bh=Zfw9lOzofwrlkJXWZDDUdWsv7yTBvioL9MyDUrvD/aQ=;
	h=To:Subject:From:Message-Id:Date; b=ed8wtNlkSQxt2y1TTabMI0cWwe35TaTPdmW8TBkuC+f1zGCS0OneW1XC32fak9QWfXR0QvmoBmjhEAKlXVp1KPAkckbWSy8QBwZzPFR3jyoY2m9nKHoQeBJ/UCfCl8K1RcTH+L8uPauZHI0mP3zjhH9MqyVgNz3TEzHqHnjv13w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kG36OUbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kG36OUbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4867C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723464353;
	bh=Zfw9lOzofwrlkJXWZDDUdWsv7yTBvioL9MyDUrvD/aQ=;
	h=To:Subject:From:Date:From;
	b=kG36OUbbTxwKR+69VCipMZIumlPL3JmPdyzEsCt7/4SOTOraeDngtieLjKWx7Y0d+
	 au82pl0fG2RxRJ1aSR96i8m0SMSGbVK58aZXbd/aaTl3WjgSv2ZLIgNeigA8Hf1ABU
	 h742xTDMrBYJMIrfVoe5iXayCPeQsykv4PtRrYOD7whKh6gBIgf60PeQn9FEOsTcMq
	 afGw1UpRDq+2u5vglOCnU0nC7Dynj1s4Qk36DSMgg1xoKZ8P+Yf9/ypU8bGc6rcTxx
	 wtifml1UMiJJY+n9cW3MQLjDuG/pREc7S0CxroVclIigkyYKxn2G/HX6K4H5HM1LAP
	 uPvG9YE9+5wZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E506C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172346435360.12280.3216297617446252748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe80dc5db4caa14487ccb7232b193547f9e059fc9133206d82de0f8dd9fb30a1
Date: Mon, 12 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723464353
