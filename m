Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C024746B80
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711115296; cv=none; b=hDe+AnDoePf1b8UGAEKGQ0Key4vGDpuAYeAsrW89ZQtm+9SFMwM76Vk7QzXsWYJUNllZ+mSu1H2Sc+pt0uSE4k7C28ilKLNkACb0dkYKfraP6XkmkdxXm3n9N6w4AC8ufgNvvASyrIEJ5jSvpPhrQ88v2ODuEYvfPc4xxCfOP0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711115296; c=relaxed/simple;
	bh=Es156cr1SWlqFL+EhIFhonwEqODfTWnLFshc4ofmVWc=;
	h=To:Subject:From:Message-Id:Date; b=U6OQcRQUt5edu6KjTMdVN6tAYKgv0yvGQtO4c7Vwtq+BMJzz1adyLuJZrCUuEUkYQI0u9qBOkGAtEeHSc5tj+OOzjhk+XHgYOJwAdVOTafRoqhXlbEcvE3mvrla+h8pmK4/hIShxVqnmtnzxKsjkBRVDVkBouhBYkIIZG1Rr4gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWicbyaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWicbyaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9ACC433F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711115296;
	bh=Es156cr1SWlqFL+EhIFhonwEqODfTWnLFshc4ofmVWc=;
	h=To:Subject:From:Date:From;
	b=mWicbyaPdVXUowyWsG2qi5D96Eo0ydxGAZ/27jX4MZXqp+tAzim8YspgjkuQW/cQY
	 hd8C+YIUxdVSJ7DNnXlkl+yyyqQC4QtJcz7tjr3cSWkG69XliCPP9oVq7++RAEp2hy
	 muiJkC1HLgnlhz0yoweutuTJ8lv+ZNPkxGzB9/npkaLiVUwasOZMoc4WwjaQxpntJx
	 NX70AWedpDTnMlCpjwdwEuVzv5J6K7APL7p4ZXnNlVybTWUadU1gTU7eW9xzPIReXz
	 CXnmx13/1IfDnHb50IkDow951la3MvG2UH9X1qzMWezxORpg5VXzIggw1zQ+CLKjAS
	 MGaktmTAZp6SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60830C54E71
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171111529638.2307.4172511971574569457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25abade5459200c903903d303c94bb892c8dbfaa5a348b0fbd6475c36827ac1f
Date: Fri, 22 Mar 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711115296
