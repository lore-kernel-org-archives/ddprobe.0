Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483A83BD64D
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773114894; cv=none; b=cGZ+CqqDgYANFuUjDy2/pnFscRyQj70181P9wJI+NUnPVoojysNO1SOTz+nPKOoO7O3uYRghJrvlrhyHGVYchj6ocT4AYb5c9Gvg7mvYGLFxrx9D4JTv8I0UdRYie+h20aw1LSOILeIzJAjh1/isVTgLxK+eln5ymllOCvIJH4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773114894; c=relaxed/simple;
	bh=7qHItoBwid8kZ39KEAF22xYThTNxNnxvytJFqYS+jok=;
	h=To:Subject:From:Message-Id:Date; b=QOB8IqoEbo3XrGD7BDeBduAzH/0k5/NXUzaSZzcMONPL0hO67JwyEBv3VMAMijp7ithHP9jxIrljnh23lIG+OH5PvtvER40m43cm4IV3dSehhuHCVHXYOK9SBPa8PK7th49o24jHYI9d7yXXUs/gViXJvVvPRaTMBo/VTvDYtlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbI/e/TM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbI/e/TM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA100C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773114893;
	bh=7qHItoBwid8kZ39KEAF22xYThTNxNnxvytJFqYS+jok=;
	h=To:Subject:From:Date:From;
	b=XbI/e/TM+EAeLZKT01v80Wf+xausUzQ9KgfHyS2skGnhZHR07Rfjzmq5N4gGnjUBs
	 /OHjAKhGXuGuRO+HTSqwouiKCU6NFVQzcTDybtpqrs4qVsI9cPhIUZ8Wqh603MFfLW
	 TODJHBqz5VtzEF1VTU7qmojOzR/wzFQeXG34z86WWvgurE+EdSWlFWuV0IeJOVaOsV
	 ig8aB3k6627R0tFYnRTVEdm2X6xCbF5gFG4YZeADbWlIZoPdZmqrJgp625ZvcPmHsM
	 iRZbAn8YEdaV2GKFZ75+zyjKWzN6yG+RuMfPAbk/AQ1T/6Ek9DH+PsE1Wp0rphQndh
	 aGDjDzrDEoqTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E21FCC9AF
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311489360.31983.3592109721211364739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfe1da26cb2891e6fe57d7615d04d4b68e89e98e38c6a9df731c388246deaf8
Date: Tue, 10 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773114893
