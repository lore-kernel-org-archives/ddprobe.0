Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225F121773F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765791174; cv=none; b=bo38oNBQa8y6J41hH9RmP+sBSPoAPi0/QceZZGEDRdMcJ91DUpUZgHIEt5wlO8RpqJByT3yxkwy2v115/FCgySo6zzbW2OFxe7bH8fbkISbhGrJjDJBX2EO13AWIaeop3be8w04hoXzEEBXmQc8cfJ89xeJPhDFuUpwRUozEUmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765791174; c=relaxed/simple;
	bh=5McDdkbupGmRPu3bksTUWA7BlKSnsTzNSbvXvK6WJOU=;
	h=To:Subject:From:Message-Id:Date; b=gBKZIQgeKMN0fgyoLtBGQHFHpphluDrxLgtoz/BCsewzqi9YZmF1bcO7a8KHwaF/jEfwBUlTBFChabJsjUE80TGynV6pm7iJHpNCgJwiIjXH2ViJ5i7oMf3NOlk/MnRPJNDFrXrt9ju4Zf/DkSa2ITzlolfUhkwTICwhnwxZoOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZQtuc9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZQtuc9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24C3C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765791173;
	bh=5McDdkbupGmRPu3bksTUWA7BlKSnsTzNSbvXvK6WJOU=;
	h=To:Subject:From:Date:From;
	b=ZZQtuc9x+be3NW5T9QKrsfkkfHzT87aZCxKHvE886a1nZs82+hXD4hiQJF4Lu6Jm+
	 UfDgg5ptA8oQM4Fw74zZRpxS9CmemPyWtCISbkUHpKiq+xDv3cW/j8mVPENSgDrwhd
	 3L/FG7jVl4PAKt+FKPgSG5pAmyD39ZCHXHdrIrOQ5IK3PBN0yvAq9s6pYW3iyZv70j
	 1uOIbxpuB/Or1Il8R41BGLsDbvWOSDpsVU0JMIcZo1S17VH8C9Qe1lL7f5Bbg18vmA
	 d11KBpG2vNkuj5HU1MLI+l8TCu6CTTC6WEVUqrX2ziyq/P2CnrcJnW8iP0yLXR6kI+
	 +5MHnsHSizVBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF2FD59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579117363.12244.17138529970040451747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b947491ff45839cb3f6e1c160b5623f9b18cee3becfbc0aba4a27f8fd5dbcd7
Date: Mon, 15 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765791173
