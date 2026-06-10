Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FAF27B353
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781093734; cv=none; b=ejuJ3RF1a65H2t/tmaUE3IPYtkx1lXMucgo8mG6G5dCEUUDyT9i4cpc/iCJDQ8U0h2C0k5uniF2bNWgNJDTD0XIQPYC48NSsZJqtXsiHXYo6wZ9ZOlXPpfAB9Et0Mb80tapfCMkRm+u//qHJWs+nOudXGNlCvGcRCVNF6hXXGoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781093734; c=relaxed/simple;
	bh=NcbumaKXIXZ/nKYbAbY/Ao98BQue2vQKndhyaeO8n0g=;
	h=To:Subject:From:Message-Id:Date; b=kJzCkQm7z6O1BKNyXNAOsbS2G7dk7mOrfWOmSFngHOAWzizj4dNsd8hJ6+EY4KDOkY1IjNhEVlAK8SJcO0hx9GRwInAjyGU69gzfXJYS/eOBfxT2reDLazcpmOvfwYY3NJgT2b69bvgXpwoBKUxcn92Hbjn896KZnb5hVc6/dqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHv4Bfv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHv4Bfv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CA0C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781093733;
	bh=NcbumaKXIXZ/nKYbAbY/Ao98BQue2vQKndhyaeO8n0g=;
	h=To:Subject:From:Date:From;
	b=rHv4Bfv6B7KiBCJAQ4wMItBKO9+D8wRme3x/1BRIgF+JlphoLlWFZBixCM3lPB/VB
	 mebsvUAQXcs/lvrykBDbLEwQTqFUAHDAzvEIobCSGILFhkw5X00R/W/ZcrG9tAMKJJ
	 ivPOY/AynCJ7eN3jrTS6OYdx8FvmND12xBvIqKVdK11Fq/pnSmuMTbDvSBfYwKGYnB
	 7gkYGZAAC+xntqrhqAb3MkEGsNC784zqy/zPZpeqn2vUL6rHw5jF6wTYQP2P3Ey5A+
	 qzvOGwrxOPoh7L09QOHBCmOrzPZHTq95qsWZ8W7Cteq5oZU6U7j5O+sPwLrwRMwI/t
	 vLOuJfSLFOCPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6D4CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109373369.14295.11803041153591805392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66bec6619c0c751d8d278704a17ecf6e8f97f3d74a222b92e79a12ed38137a2
Date: Wed, 10 Jun 2026 12:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781093733
