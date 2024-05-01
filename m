Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498A7130A4E
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714606343; cv=none; b=StgkPOb5+TZe8U5aQymwxEF64qN5kXBxMbs/Aes8mKyVi+7Ge22kIVZgc6accdtXx12wvkKuCxA3RsYgGBKlNyDRnurWem9QE3IunS3CbtE2RNH2n3AOzu0PtgGmtseUGR1ZyPZmLu7LRj6Qqcc+ncFdRVBEL7Z2JL9ETxCo5l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714606343; c=relaxed/simple;
	bh=TnwlVqh5NGBVLwp1ucGcKVN6f3tGqt4WNNj96ihHFXI=;
	h=To:Subject:From:Message-Id:Date; b=XM7yfsKkW065XZYODxjmUO6lQKyK5TAWWrSUvNYDowDOrXwVNb6DThYdR3ZQaSJwqLlyW2lK/7AtTHPoyGztVOvhTE1dcMwcE6ySA5yNMZqN05qJY7TJdUcmhbuZ58UIInGFhpTfzK6XNz8OPKXsQFvfTPUjRu2/krxZFw3/oDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quI+cdzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quI+cdzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E742AC072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714606342;
	bh=TnwlVqh5NGBVLwp1ucGcKVN6f3tGqt4WNNj96ihHFXI=;
	h=To:Subject:From:Date:From;
	b=quI+cdzW6ndgb7Ltvkb7xJtWTgVjePoyHpoOvehaG3Em4MDg4i5dp9S/ZbPbYnGc7
	 vKqGRRuwRZPNL7TpykIQ5lAWrO1rbo7Wvr2E3VtCYGiKco0NWBCgDfAPnvRZyGgtmO
	 UXpeThEitF5tTqdvZrG/3hmWbH6SOUEY5O6fl45H26/8UCatIATafP059eGI+GThlU
	 bDMLdCaFwRd9oDE3ndfgn29eBH/oQGa2mJogbMH/J33aiyOKJKr3SWGvUZ6hIDJYfV
	 VIpBoTADD/kGb0kozW9+whfVx8XmEbgeXCUlkGTNd63g5CuXzocFH8mKgPX2Ybm23Q
	 HaIIEPanq/NnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2047C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460634280.17410.13772518800966728573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69db49c184631ef197b4b633f0df8892a912720082ab35efc67ec00b5754acfa
Date: Wed, 01 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714606342
