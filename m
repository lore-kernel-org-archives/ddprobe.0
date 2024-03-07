Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDFF1EB41
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709831897; cv=none; b=d+qxo9ZdBT3vv0Dua8v3+J6H1ZPpZv/qDNIE2nW5v0kkhELVReKPORwKymCS3h/Drom95bE9RbKkAinzPZRELw92anqXiKwyG9Gc3XfA6KyTkH27igvWRkd644I2QbyZsaqFnPkjDLpiWSTdFvQfyJ+j5QidwqxYzRI2/tOCtEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709831897; c=relaxed/simple;
	bh=qLgkzQZMFP9AB97hyksPN++Uxw3hiAmLIGYB2jYDtxc=;
	h=To:Subject:From:Message-Id:Date; b=gk/kJmm38xVEqrfz1RStvsKLKqyjEbS5TFczI+gRyCoF51bZdMktaPLIVhNP9bPzvTJ1iKSZIEfvKWzO4PWi7YMF4VyVjaeyra+GiyV1eAvDQ3bt9PnKwYhUwUslW+wZdE67MnCTkoQJJEKim/2ZbzlfkgYr3iTl+OioXsCJrh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzmD05cI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzmD05cI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89504C433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709831896;
	bh=qLgkzQZMFP9AB97hyksPN++Uxw3hiAmLIGYB2jYDtxc=;
	h=To:Subject:From:Date:From;
	b=HzmD05cItO7t4hH/QHeFC49Cup//EwgrXIfebXNJcCe9D3wm1lKhu+foTQIrWGAPX
	 LKVfT123SWTz7riUkrzcUUmkpT+ExADljCtcATGJPyODRTIN6rWxsH5n2G1Jb8y/38
	 BMlHOuILFGVn4d14KmqVGtTue/6nDOIy6xD0LqfmgnIHWbeYhfjBZkODnksKTNU8Mt
	 wSlQH/oNYkyHIywv3lXYviV0lhiUfw7v/TadCRsFTOtePUEXyGyZymTQTzsn28oCww
	 U1kc2NWhaLd7toXm2HBqnT5B8GnL8P1P+vv+yZVbbgZa2eQ3kLu7Yh5rTaFIo4DOnr
	 BBCQJm+c1Y3wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E33C54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170983189638.4449.11589242066022136919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907ec0fa99c7771203946f0d1e215db79bc268d296368a7c64e7897c223b5bfa
Date: Thu, 07 Mar 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709831896
