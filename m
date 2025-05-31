Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2821096F
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748659194; cv=none; b=Dv1JOpqddU/8aFHf2HFi1HQ84hI7KKch1SvVK+IPN309J9t0xFPqlIEMxCsE2KDPHPNqeofJzaF9FljpruGsECVhw7c6nAnO/cUYJfi5E879ZdPoecJYuqQxKUCJUsKcvhrks7kNaio3y3S5mlbgKrEllkma652XkXmRXdPwtY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748659194; c=relaxed/simple;
	bh=/Low+MvcXlzbEdRCpexceD8DO1RMJYnEcZgY+fqVTBk=;
	h=To:Subject:From:Message-Id:Date; b=Avs+IuFLv5qwV2UpBT7S/EvZSeCCejoqzESPGkZhvSHyeZApmRp6aWIvNMlsIdWN+BCi2XWV7e9xLUYmCYSHbE8xhF4TUWOqa4gPNE4e/pXfQOrO5XPRigHDnxpl7XiiFOVK+ShXSlt6BAUBT+F4LZ2Byagxeq3aX8cJXqbWwok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMsRQ1gm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMsRQ1gm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73EFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748659193;
	bh=/Low+MvcXlzbEdRCpexceD8DO1RMJYnEcZgY+fqVTBk=;
	h=To:Subject:From:Date:From;
	b=ZMsRQ1gmDnHSKHTWyPQwz66Bo8fI2pc83pbOs0CbukteMoZMjwN6ZsEDjhLyLcTO8
	 iNOIFst7jTt+sKQVUbundQVxEZZ74GfaTNk2SHT8Qshgjl9ofi0xMLTZEV+ZTtX3JN
	 yGUoUkqOo9+NTiRTds6l3I3xZ6uRRdekcrFEl3qFXSlFGA2Mqhx3mginsVT5gOkq1B
	 DKEdVcX+Wr/agXVTnh5DW2NKu/64V+60cAaqoZ5gSVNcs/IOXIYsRshbBf/Kvmr87a
	 wr8aH37UqNMzH0z1toX4cJcMs1ck1TQmtjzFOubCFVrX4fAKQLJpbxTDMtEUib5AS0
	 L1uQ5/6nzXmJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9468BC5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865919357.23044.10638736200525825200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d317a3a9916959d0457fc99ebeeded5d4249d8b5f47775981fbbc6724a5c8381
Date: Sat, 31 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748659193
