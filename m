Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139EC366DC0
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773817494; cv=none; b=Qitq7q04CTU3FBh/z+uJuDzOTDVX8bMvg+DiPtLbugxV01M1ZxZsambH18n2TEiFtq5ZZmfW7Gr29IPhN6gRPQGhH1sRPBVcCzjycys42h09ldXqf/jGC0/dNtwVc7izYVzxiYhk70WpLSgKyxsSr+eTspQ0T9ajxIh+cKbVEe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773817494; c=relaxed/simple;
	bh=5dyHQuEC+igfhpobfKioCsZfWjKffHaVlHW9i3EKTxY=;
	h=To:Subject:From:Message-Id:Date; b=R0JIrwbZBc9MZFgVUTqV2NuuB9j2uGClZIyjTeykygXztLbLs7P9NipVQwjVaP9AMiUj0oV7j8PFvME8iE4VDJsly9+5EXf8dA5LHS+za69Cwx8zKIckOaDtusSdRukwfBnAqQBikTWfwEL3Ynsj/BtSOAeQdPYtmm1k//y7YLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXgkYxgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXgkYxgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F36FC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773817493;
	bh=5dyHQuEC+igfhpobfKioCsZfWjKffHaVlHW9i3EKTxY=;
	h=To:Subject:From:Date:From;
	b=IXgkYxguc013sTVE0W+LrCtzukttvkkX5ULnBXgv70GIsfdPxHFcfX/0TuW/azkFi
	 +2uhr9MdbYGW381nZ5dfK0m6oWdCKj1MYTuwafWeawcme/flzO8noxPr0op+ZbHVC8
	 cNVdVjK+QzVcGVF9rpLFR5T7brg6quukqxowSCXiNdPo+9G7CoHikGGZzQ2gsUKYiR
	 tatPD/HjxGyza+nRyXxLJ2HkiUaW2jiuR5we2YWnZdNdpPn5ODgFo0ieUxnXFVYXvD
	 48Cw3BKwbDKipNuZkGX9sJzYvGEb6s8NaQXNUKBRAGsZE2Df/8MmoUO9jEIX2vw5YZ
	 igZfzMSMZbDvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4AFCD0BE
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381749358.749.17901260286884277291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b88decfe54c98eb3a92d085b754fb885adb17f982e4caab0751e203d80d728
Date: Wed, 18 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773817493
