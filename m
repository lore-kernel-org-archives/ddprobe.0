Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21836332EDD
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768745034; cv=none; b=HGs79SfIpKvbIfFsQF7UZy6B8y7w654CvptBDlVFRC1HA0m4jksqeW7HJ4M+Vt906nPuJ7iasoCLJgKt4BA/BPz/gFeD/eoEEFp+jN9Uzbwsqc0JDkoVQjUzsip2ebdjteBBBA7PZUwUjGOikPoYaZnfhD9KPQ5TlwR3cJMwces=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768745034; c=relaxed/simple;
	bh=7Le9xUcyh66LPzZ/Xrh0aQy1/ZC73BBdZ9Lbb6YPO6k=;
	h=To:Subject:From:Message-Id:Date; b=PQu8iZTE8SNJs6/zEY7IpWw8sdsKte5b2XZCVENDChLVBavJ2reKItmmoBOA5OC8ig+J+KHCaOMSV202GVzoyo3bFGIYG8uY6+b+iOeJFgODTda9+glTk0uk5b/wAVFka1eXKPfHgLuvwMEprNQoy8H+8COZnK1+HA4fZuvHejw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjCAYPQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjCAYPQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2264C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768745033;
	bh=7Le9xUcyh66LPzZ/Xrh0aQy1/ZC73BBdZ9Lbb6YPO6k=;
	h=To:Subject:From:Date:From;
	b=XjCAYPQrn01ya1/OQhHwwZQ0U6hvakx9Y85pKVB6Uxb1MY07tz3LrRPsJvmLHHvph
	 CsQHpOrsLSUqoO279JiK2gpD4WfIkKUcb8uWayoy3ns0lqqzkm0A9zYpWl9lG38SW+
	 BgToFmUFwVYroJqrP+R/fAHh6yE2gAlFowr7d/XajQzv8JVvS60NxvzTHcmp4VggBY
	 jIfdJlI0vq2DkWNOQwspa5qdO6yqZ4plQnXpYmS9YK9zKwjaxhLz038XJinNXGxQ1X
	 PIcFTt8Hskl93X1OExWbUHQIOlCSeynVVuZBGpmGug+GBZilYnZ781GHVV65Lo1Dsg
	 787hJIoozqAGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F77D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874503358.20810.17558347065399073602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4c57a9325d4d7bcff303d395af40217519922db0be156b8c09ad8541a23c32
Date: Sun, 18 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768745033
