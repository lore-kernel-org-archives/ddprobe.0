Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377742FE056
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782714514; cv=none; b=cbcAITSK2ziDjmkGYwhax9wyg1BQHcFKMFJq/UxzalIl2bw7LcoRAwy/ITB0s6iexjPME1akkNFjYxzx75zEotw9Wn48dHz3jrqvnjg4kCkhVAxi6fk1IH39QsNLpLTQMSlH6tUNfphMrtaytIy6mw/WYNWOl4q2BGNuIrkdwtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782714514; c=relaxed/simple;
	bh=m10WnGGSEwG6XJjN3jXUqOj+6Wd1OihTlQwEnn/0k9k=;
	h=To:Subject:From:Message-Id:Date; b=kS1HZ20qPwnfVdjKvlcyF5yeG40OagqaHa4WIONzlKvEMpMVOBpWmFGwgk3j4L20Rc1PzfF7d5Xe43Mva3YLoo8qFow6ggW0eu0FhdIiazCTGI077sFvxuPbxuRhQGO8K7wNkxhkRFDyYTsTlCTumonRUQ3fhJx24WjkA5IF188=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzLDbKC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzLDbKC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D6CC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782714513;
	bh=m10WnGGSEwG6XJjN3jXUqOj+6Wd1OihTlQwEnn/0k9k=;
	h=To:Subject:From:Date:From;
	b=uzLDbKC3WtzHkYfUHLPRx2e2m8VliQDWH4KvLHT6NAbqXXHPww8WnHM98VCOvJI5A
	 xIVtVzv0sTMd1SBkmLHIWEpUNrPaf6eilJJvH4KPdMI9oSU9EiBqNO89h37Ds0KEtI
	 Z5woE+5uAwG9oXECwaQj8QNzv6y0NFd0pg6OK88KCqWTD8XY7LyHWUSZOPa/jZLhGg
	 3+Xuge7xsEuzOy4lSkK6H8bP6cHhcJV/9/UwoAJrWwPwh4vO7++5gs26QAgOYltRu3
	 bR7vKcghlZ/a0b+uxlgh6sPvg9l3t9mUGslHcdrROp9HXy5Ifof+eYWkDxXYb+temD
	 Bb1cWBZmhOSOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC4C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271451368.23226.11808005997718751193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a2008630061eb1f0be1b7aaf275d22c814c7fd11888c52be575f058b912675
Date: Mon, 29 Jun 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782714513
