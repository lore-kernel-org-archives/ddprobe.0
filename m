Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3541474B6
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718315903; cv=none; b=qFOwubTSNF2Hnc+UojYjEaQnR0lvj5cX3sZT1IXdrfQ/LTJsCfJxuffTErCncTJ/UbpGoprw0yJNNA8I9NmtH3UieYrUgGwpOrK/rV1kcnnz/33/Fz3wOcqkUzD9okzSctAflAku9iTwCoYLN2NDYA/y+GmXeUTOetSZhlGNDqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718315903; c=relaxed/simple;
	bh=yzA5+AJc+71Ht4kYKQF1GHnfbW5jYB9fXNVQnWDcvjc=;
	h=To:Subject:From:Message-Id:Date; b=c3tldhDRMakIWmYbS6SKEF/m1tZ+iIJO0uVb9GEUMZKi4qMxvdzCaytCrDNAHs8vHxIRtTxSomZBf5eM9QHJIyhNk/DxIKvoAmu7hkPfHLzIXNj2L4WcNaeZls0pM83XyM8YggcDA748Cg7CDum459sqhaCAGlVP43WNFVRJD1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izi8xu/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izi8xu/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E2BC32786
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718315902;
	bh=yzA5+AJc+71Ht4kYKQF1GHnfbW5jYB9fXNVQnWDcvjc=;
	h=To:Subject:From:Date:From;
	b=izi8xu/GU1ESsa2GWfmEcGQLYdS788lC6BKwcd2gKBxolj6JAqlZdmT9K279lGTQU
	 KdxRC8YhjCO4In5iJ/ozJchuCh0P8kR8HE0XxCC+IVL8Brer9mooKX2xFQ6O8aZS0C
	 tmdlc9Uep64unTUNGa4zF3uaVRDuLPZ6lzd3sjhlfkoFW+yBR+qVEoTt1zaNwQp1mV
	 YX2sMcUOGBtkguC1XnCQ25sASWlMWYJNDK+l+9uU+LLGEWRkz1vYuyZ3mJHbXNza11
	 yCmZ2qx7YEpJSc+Sz2S7U+r0P/Qa8IzSSDGigEwfHl1n1h9V4u0Gpzi75b1z+LM2+Z
	 8KhOWuX0xOKlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8712C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831590280.4736.6804906824180091021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4a208f64fe1fd62a4f7e7474a3f1834b8875d1b5da6f072ac8735b8f53d965
Date: Thu, 13 Jun 2024 21:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718315902
