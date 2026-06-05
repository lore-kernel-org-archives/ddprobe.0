Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F8A38D686
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780684474; cv=none; b=MKf84vepjIvTqejvbKoFEOcmBi3hh5eKbXVowgQBABmlJvDg1Sk+oCnS6gz2IXo874hGGD9BesWlg4l5rIwS20W9XRZYD7nP24xre50jnYvKjDD4gFrV9hk/fS50qgNVDtNGeKBZKASz+U1sEhykz3jCYOL6Kg8HUqsjXjBYmuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780684474; c=relaxed/simple;
	bh=hKVJk1zq591Za0RZNMHWYO466Wk8Ijzp4HwE8dR6oIQ=;
	h=To:Subject:From:Message-Id:Date; b=nSwvTgY1sUCZ0ScErKGVr0hFsitU1gfayURAeVeDI2sKE0SNJ1A6z6zEZe6qCBfAb8mPimFYec2hUqsfS6P8l8C1NK5MTKu5LcqLuNG4BvK7BeevNibz6q3K6KOp7U7N2g6hImzolqnrrLeJM/gku8XjJGHhe3QPQEez5CtpC8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIipKlr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIipKlr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35DEC2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780684473;
	bh=hKVJk1zq591Za0RZNMHWYO466Wk8Ijzp4HwE8dR6oIQ=;
	h=To:Subject:From:Date:From;
	b=vIipKlr/rOjdt04tHSmhPwA1EXh5ufMRU5tL/s723onzes+Ujvlpru2jY+nxFWEcj
	 khiZvvOVV3Tu6q/Cp9Y+zymq9WKsnQmfD4fSQDjRoYsACLkvUFauIUJV+d2FJESrV7
	 07/zMmgWpq6QEOMQWSwhmNEwhVgDi5ufhI9X2mN+Liruwj8uUXjcNdwHjjEQKW7wRX
	 QqQ79MieWQjK17+huRaOo+2V139pFRyIv1I4n8OxCECrW2KmZRgP5+FY28d8G9gylK
	 DcuuuW5C8VcIH/o1m3iBnlwzPUrEdZQqSiOWn1e82+VCRDwjis8XK/lEFbzKcF20zn
	 NhjoQDKX8A+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA685CD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068447368.9017.3232505047411117483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898def24f3772e8458e0e2948be59a3365425e7b030e2e729470c2dba1267e98
Date: Fri, 05 Jun 2026 18:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780684473
