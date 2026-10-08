Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C3F23507B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791422434; cv=none; b=OxplTSdL5R6VoyHIODYUpqp+YYYLPMGZVLFk5eCFaaT0RI92aQvte0SDhEtEkPfub9LAfgvYKVa7nhEn4DxuTzVcdG4DFxmqreyLV2dGfvrHtlr4dx3QgAkswv57znFr9O2LO0E0s35Ab44ICN2ZSG+JqagQr7cZ+c10W94YySs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791422434; c=relaxed/simple;
	bh=F8MthvAcrQ6v4syBsUcdDTIkHsStvrAZ7uimGxV0cck=;
	h=To:Subject:From:Message-Id:Date; b=OBbtYAbZv8VbsIcvYuc/uAsswBAQAGcAqjrsJ1s9cLeQlkzXqgXnTxg/pwY28YEMw8BAQSsFKbceCi4oQzPwCbSuVJYOcp1X5IPeWq1U35f1I88gGCBKlNc3Ax1e1PGv9vorItMRP67liMH+dKs8kVLNBXH6aDgMTNo8+CTxcFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoDcAeGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoDcAeGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4806C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791422433;
	bh=F8MthvAcrQ6v4syBsUcdDTIkHsStvrAZ7uimGxV0cck=;
	h=To:Subject:From:Date:From;
	b=OoDcAeGewZVaDrgS7AQiddacUNJl/x3ndqCef67o4tlCjKyGV+GFNnyPYDRKfEKIZ
	 ugQ9zHlHh1ER60L5SH2apVKPGHQTXxiNs8O1je4pf4M4gskbLD9Q1Bal+vZpgk4AOK
	 wssWZyYN9Cbt2+NjMfGZQq+2vO58N9D6JOIBfWrtIlzjM/LHwf6JGuieJQl7KoGL6J
	 CgTCanmW+V5+rT19u4pf3bb+AcTU+YjeXyy4VHTM60bE5BMAHuJpOEGfsgRTcSggJc
	 0Wh+gyg9P6Iyt4wVJK0I5R9EO83Kdqs5bHDcNIKYq0ccVx7yheVaa+47Zvth0PtcPb
	 8A5MbA/LdqohQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD65CCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142243368.13550.12311268529858466950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c9422b817b865e96fe80e814fbb687efd1427cd4516e489552d70c3f3fa508
Date: Thu, 08 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791422433
