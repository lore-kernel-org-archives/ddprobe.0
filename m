Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559461581F4
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 12:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717157663; cv=none; b=IvkXodFh89Zf9ck33Ukgkn2oJMmJq0DTUwmupz3W8pQL2ntHP4qZiQE8X+Lyis0B4OF5mXCnPZw8Ac4i7g9wn+rj2b7O2cxQ31fqqz5JkxYOi2cxQodDwws+OSEo+Q9GM36ze7LY8dwz5mRvbEC4Quo61/t/UjQywJGt56XHX0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717157663; c=relaxed/simple;
	bh=Fva60fh+UVXTLoZilx9BX8INTzScORKw0ftLSKIvvlo=;
	h=To:Subject:From:Message-Id:Date; b=X7f1AxHz141RIsg7sbN6YwB7FifMiS77dFhhxdUNHiIye6NSFhERQImIEHOGJCJT6SFyTuZLzEUydisy3o8uZ+iPPUDMm8660/k4ZLDA00X3rJgz4Oh0daIiTWgPdydiRIAP3WSVXse7wVDUBBnhxK+5rKm9hLIltjsaxdRgc14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReHw2jbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReHw2jbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BA3C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 12:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717157662;
	bh=Fva60fh+UVXTLoZilx9BX8INTzScORKw0ftLSKIvvlo=;
	h=To:Subject:From:Date:From;
	b=ReHw2jbXr+e8kK1L0ccXpkXaCQsBmbOBzhzbYOAAnl3e6iWUYApY+baLm3jjqBulj
	 tCLu6brKSPatb9dsmN43A6QK4s/cb87tUNzJptgKEV3OsKz8Ueu/ZkgQ4EmMGkPeBQ
	 fjmU/lFe4fLEwr0mtdhDavQZINSJ+F12H1P1MEk4mbiyvoMjcEm0Wiq9h+gKMudZal
	 9iR3rmjyQ43ifsLvzrkasZy7Ge7eH3msZkdkOPshz6uTC9I8wbrTtSjWxhqToHBwZB
	 C5wm8rsxbPrh6Q5Hjd2fATg2YMmkWwHzdYhVyPTs8xtCWKqWpsNAamfgNeW96j5d8e
	 7XgM54eqsAR1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12C9C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 12:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171715766278.2571.6247583265989980540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb728b5f03df8213b24de98f8cd1a74692ea8f46c78d630d1b61ace8842bf0f
Date: Fri, 31 May 2024 12:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717157662
