Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FD5BE4A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746939594; cv=none; b=h2V1l2omiro+Vg1+Og/lbbGsMtfXbgcYydShyNtfSN/ExWqW86Oj29JpJDw3tj/q/nHm+vTkdyVL9KX+7eETVw8Bx15Rz9hKXoXk5zkRKWzDy3X3zEN6Tjg8wIPaJmw6lyqXsd6WJIBZ69Z54oVZk/6krjPDwAvIOkdh0QIoa5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746939594; c=relaxed/simple;
	bh=ZIN2U2M80wVzWUSovz2kEdrVuIgCmHhqZXDF02J5n8s=;
	h=To:Subject:From:Message-Id:Date; b=CY2sgAAFPil3iNVQ8BwYyDm5bw81mEq7eD81GTW+BgXebwcwkUEV0XdvW5DSR1Az3PxbMQ0ajbGtSwfHWv/oTelAx4/o1kAb2i8IewmVqmO9TK4BtdMZU9Gotn/x1G1iXpQEWABhyvSzQoJ6Z781cplDDAHFyZTVbbbXJrOycts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j77JtETN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j77JtETN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7596C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746939593;
	bh=ZIN2U2M80wVzWUSovz2kEdrVuIgCmHhqZXDF02J5n8s=;
	h=To:Subject:From:Date:From;
	b=j77JtETNC7Ct2SQYWJLrEoTHaHJ42d7KOePVBDR1sDuwDaZkfcPIU+JbJLBN5pHbc
	 IdK9MWhptDmOIrohQppa8S8/s0Ge+89p78JZsf10bLN8rtkEzd54l7lGtVhsCe3twb
	 S3rpZMubKWp4kZ3D4GY3Px/DwujuwaK+/ps96ArtKFO9MNgz4RE81j0RnWUchihB0c
	 45vBK8lnQEYUcEKnDexldSLGm2f6hyvzZpxdgkWMFFL633sTH9C/xJ+SX2TZ2HYrVY
	 vdVbpexDxEAFf9UVdNjsp80b9aMZFPSFUIcQG6/HNKgIASgvx0Porc0kK04Wn3GWdI
	 fghJOGMEH/QZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D98C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693959357.12353.359542592244394913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12cc89da2902ae8153331dd3434d71649cd3d61f5bcebe26619c9712c7d547f
Date: Sun, 11 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746939593
