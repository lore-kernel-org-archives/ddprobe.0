Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0448632
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765587773; cv=none; b=AqjAi62GdCtEU7FpPuD8q/l3SdBTtI/mPguGMO95KipI9UrylEY0pbmSD2ypGxlIiXoO9MQ+TM2axYkeAsUgHvo5kh8LUhxwLzxtlNg8sY1HDmlN+kEMg1m4+dNav66bHpjgI50okM9QgKoCPyHdRCP3GgOuDy3Ay0o6PKBam8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765587773; c=relaxed/simple;
	bh=vcGlQcjFQTtOzXt9TWVBzfHRIWfVe+YHoWHft1zIUoE=;
	h=To:Subject:From:Message-Id:Date; b=M6yJNb12JKfXIIRgisICWUZzS31qgoopwhT8pPMjahTFTjwUyOsR91HxKO50JC/5iHXrktQ7grWf35AEUpqAaai9mSz003dOuJ3Icwf4HM9ESbKKkq96CaHPQVwkIatYchi4ZQPTVBc/v8v6uQ6Nkb+pfpZ6g5xyAqEkEJIPvS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KL4eleVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KL4eleVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50BCC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765587773;
	bh=vcGlQcjFQTtOzXt9TWVBzfHRIWfVe+YHoWHft1zIUoE=;
	h=To:Subject:From:Date:From;
	b=KL4eleVUB7duVhvBVL1jf3BkoiVkP3M15xGuPU+l1BJsG9B2HlnRDtMd6xFV83/dY
	 9DMKOjdzgbZ8rBZDK2XFigOOmUqM5eMj7cDIPT/84lLsplGJB0OVKnw+esOARuYJqr
	 gdSGyeoZKOOEAMZxpCt96ri/0KVvjZMAPARZnasn6V9EEEHXibnrk39RE+jTpc5zTo
	 S5gonZTy5JlZka6rXVvg07TY586Vg8Fd1viTSd75bLWqj8WQ764nDZ7FZS+tWdwUtH
	 tC8xHQIV2FV2OkRirPXKmASuJNihEIUWDGyUF9ZTSxGTYn15Y4AoEy5yrX3QJp20xU
	 Jkke4PcIpP7IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97923D59F5F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558777358.22034.2210024261043293849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c107849834edd05f5318937560c3869a9fb3581ab0f2bf766b538c246284edc
Date: Sat, 13 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765587773
