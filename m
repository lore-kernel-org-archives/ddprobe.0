Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C16F3F3277
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787651434; cv=none; b=FZepqkmiK9/XAGKZ3djxyjzti91MnHTWdn/moorQ4YMgniOoSiALN1tO3O4WX3u1VfOiLLXqCP6467L2X3Ak6ElKr2LvufHOBhX0bDVvomYP4OTSDoDAZJPxDC7pTd3X+yIEj6i01ohozaMWBRTLfYWcrRuzuZpLIeuFP6674D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787651434; c=relaxed/simple;
	bh=4ibQnRhrDBiFhGPE95tWCrotMUcaDl22EEYJ4Lyf5vU=;
	h=To:Subject:From:Message-Id:Date; b=PRjDlhMmQQG9/ZBP9wv/7wJZFVabjid9zFSmP9k1cZkeqmZt5/OyTBcU7me0YbyASccyiPjEGrEbSs7Qf/fLOperN00mo0XD+CT7b5efZX8tnyoxONHM5ZEbx0calR9ZasEgxj6xZYtkLQjzImQOXJCRnGrvnN0Qjw/RIwMqR68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O79REmO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O79REmO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D166EC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787651433;
	bh=4ibQnRhrDBiFhGPE95tWCrotMUcaDl22EEYJ4Lyf5vU=;
	h=To:Subject:From:Date:From;
	b=O79REmO3nB4vSKH6N4KT2O4i2ihBP2eltoAUZ0wj9HGzh/EL6cLspqNEtbkLZijbz
	 EJkYnZEt1BJoK76q1QgYAnzKMGghc+2XxxBc9pKxf+5v5+cEmwkIFcMZYp9n5jp/0S
	 BS+lHcue7uUXp62FpEPNkqGrUCcyMRYo9sYi20p+gV7JpQh+FdT+AAamdmjYiNFbom
	 nr69a1064zqGsM6Voy4xSQtl5QQ6qlv2lLF2JJDSnCXCQeyVOYBKx6Ff1796tFRzaX
	 bTSEJfOJg47cVmZOQHDVUOjRb7mxIBA+I6J25+zYvMOfgb9cGooeXABCEOtZGHcMOe
	 wC2VwW8XWVJWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE507C61CE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765143369.5631.7412204051748859787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d330c86b5eaca41ad9b27e8daec31ce5141c3f4397e89b9c0a467e9ce51f3e8d
Date: Tue, 25 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787651433
