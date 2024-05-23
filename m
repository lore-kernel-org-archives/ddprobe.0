Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DB583CC9
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716494603; cv=none; b=CgFA55AtRfl5wyyWANGz2ji6oTBsGNnJcCk64Gpek+0NYduzlwKh3WoU8273Bv0ZXXbvXld4WaPu7GJRZ7rGQidzMAGi8v3eQ942PJytytOJkgm8cwz5yrebiuDIEPZ5cAtlpx78yXkBAQTclxWNPn8aOM6H3gDewMd6iPiaT7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716494603; c=relaxed/simple;
	bh=+T0GvHzcq8FIrGhwzX+CZUGk0FLyluoafssWZv1ACno=;
	h=To:Subject:From:Message-Id:Date; b=aB7ZRQPaVV78vnngBEl8x0kuyXV4ILiZud8CrGWFNXz5MbnMA1Y9JdM83pxgj3KF5qhPQVppkIk3Wrvig1Lj2tUv5mvzS3a6vep7aXPYsvMh/PFJQYEw0h0z8Lg3vYkIP4p0qNx8mV6Mi73+X3FQ/I0eqhgGXGqjjS9mzen9qrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3BY3P8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3BY3P8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CFFC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716494602;
	bh=+T0GvHzcq8FIrGhwzX+CZUGk0FLyluoafssWZv1ACno=;
	h=To:Subject:From:Date:From;
	b=W3BY3P8KSD7HzQcamh/lMybKlWuCnpHxH8tgKLP4MWK8M2XhcRO8i8ujyK958beDm
	 OnMbI6pqCCRglI+670zwm28IovBMGa5IpSo3rOWBDkDmSTDU3h1S5+RxAJUl7EWLUi
	 yHVTI2N6b2OdJwjueqq4BJr06oG4W7Pl59+ls+EnSKJe0Ezwqx/d8bMA/hXUkkOKnw
	 OZTzx9va5AxqqOh9JnKwB8cTp0pxskYLwuvh+Ddd9afYX1OiLT/0jEBmwfr3oZEHEy
	 YdDj7w+OEZI/hjjV0e/t2OZptq9a2HBPiyPHZX1k17i1V5MMT6k4gzpYqDa0KBJGd6
	 DhzL6mlZLHcRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43FBC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171649460279.7674.12907861260038582285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc8ceaca7ab006e083f232cfa152c5674674651e3ef477105888ec284c1a164
Date: Thu, 23 May 2024 20:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716494602
