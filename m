Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9373633B97B
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787814634; cv=none; b=o3Njo4K8a3YwJFoYSK0Lpuv2IPRwA6AbW51UMAVJMbwH6+ujdS/KXyo7geNtCPZ3l8YfxgGKFp65PVQXo9hYCQLF6abShnZIXDkWySFFDdWsN/4eMtG3iy+Nzl+pFcm01ZNIqZpXYN7uJc5qd3mDbLbVWSeB1riU6VdhTO7aLsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787814634; c=relaxed/simple;
	bh=1UP1a5J7qNfsG8FlEIQLDoxRx8g7WgOO02JHoILSxY8=;
	h=To:Subject:From:Message-Id:Date; b=MTYq72XshNS1kMLr+IE2DJ2Hk98IFwHTQedWa37cH5UxPQYd4FsHY1nqW8S0JBRA27RIut4J7OTu9+QaMJMi1kehAp6yf3lwnuk+4/MVDyTTxsVN85UKYfXwcaX2hUvOqNMX4ctQUwEwldG98IzlCPL5aq7Sw7o3XflJ4GgHLk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dK8VMOKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dK8VMOKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB46C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787814633;
	bh=1UP1a5J7qNfsG8FlEIQLDoxRx8g7WgOO02JHoILSxY8=;
	h=To:Subject:From:Date:From;
	b=dK8VMOKWNuepGy0bh2e7WkJ8Y7zu80NBDiwhjFmAB9nhc/slwCxTphmi8pUBAi9g0
	 2zC38WLgUooccLn/65rijdiwnospf/MTSoz8xLWE8A+iEvZNfPwSXruKrwMl3gIV/9
	 ojqjs7xgqhds/JzMa7gm11KGn76cMmhEI9URMcHQH/uG0oZeGyCaNfvRXubZYb9YDR
	 Lfl/zRga6YVD+P2R+cywn41pxTfkL3YZ1kWeaNelGpQAm7gKaaK7JfT1jXSgVeVuSw
	 yok0bdp8ERa9sI/JeThRzejcTn9dEpFdbaXsWAuYJHTHG96PEbCy3e7p/9+NPM/3f4
	 PePvvYMc8UEpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C9DC5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781463368.9955.2601273539174807602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f76d78fac6b4ce3c9bc395745243b8ecf84c7a405f7865f59407798daf8b620
Date: Thu, 27 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787814633
