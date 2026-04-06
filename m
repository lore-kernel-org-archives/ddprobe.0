Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2308F371D00
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775480734; cv=none; b=VB0lx8AlwoMAaXZJsafXWMgcMTZQDYTcAXiXh4EjK18Om7wVSjbJWox2YQhJJSHmxDOjB35k8dxBfClp2R6tt0Dw/Id4cULYhQO0g8Jk3LeiA19k/ppYuwAOLRQhff1cL/X2HesuWAyqpGVa5NX3XHtFyvOiIJPkEvKpmG4WVTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775480734; c=relaxed/simple;
	bh=PltceNMt39AQUF+0QhPGQ0kOfH2CGoKd9UQb5xTBO5s=;
	h=To:Subject:From:Message-Id:Date; b=Lr8cRr5RGt9xavNgbEAj8CX5QT6OYkfDJol5m00G8j9c+dhmEyU6EJB/eiMnv668NaOn9jo1mv5O0zZzxebiQZhGmSTbmwPa9Oy17s/clKgflShKHHfUus7ZRIUF/mHvNk5cwd4Yu9Pkd+ZVlQHAPuUqRF1JeOZbuXufJL/s6So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2G60lJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2G60lJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCD9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775480733;
	bh=PltceNMt39AQUF+0QhPGQ0kOfH2CGoKd9UQb5xTBO5s=;
	h=To:Subject:From:Date:From;
	b=J2G60lJClkgI/ZeVloRPRMgop7QgF+n/qSlgw8EUzH8dol5yQsnBYH54n3UbAe/15
	 jnPpm2KQcSLF9KRUSPR2NoaDqU14SlO5n7iklI41RR4CVZOVfTjGwuP3yOrrI5XOOH
	 66AnDW/nHchYOO6YCW93RVTU7Ie5FPxr0M9JkgNUxOo+SC4d3KkXKRBZBQDbryBxes
	 LnuQ3RCmLU/LGwPzxkZCpnRyzk7/aEE93bqEL0pSo/eH4fxSaBDwI1pUj5FzZtgH6J
	 GobEIjkhIUpQhJKJf3bv7zTuRRzEp6lO66rT+E6Qa2XkWYwuAJKIBA7jtwmUtL6PE3
	 U3Dyh82YxsLAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42ADEF4EDF
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548073372.11418.11649181446215137657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e539bed85e89030c09feb8ea8923bb243e898bba6da86cedd9407afb698351
Date: Mon, 06 Apr 2026 13:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775480733
