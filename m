Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1E13368A6
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776582454; cv=none; b=JsaUpIJ4Kr+tG/0LrtEhQ4GM15wfiKTxiamFnbmyZ6UlIM0xXQp3sV30mrAgpx5ltJ2EcjWFTPqi565O+xaPZsWx+pJvUjVeb8wnXyejMW7mWx0WkpBN7nIiegZZhjXbN3VQWMFMATaUHT9RtrNbMU1aimTD7sueM3CQ/PyapaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776582454; c=relaxed/simple;
	bh=YJQv0iukBu/H01cdLLSBeNA+ve0+BWtX9TL23TF5rlo=;
	h=To:Subject:From:Message-Id:Date; b=T0Xj78tPvnMKtOqmYPZ+IxFB1G0XufsAdz5KUUbLQvE7d+mDkn00IJ7rJIA1gDN8XFDG++smTl329JYD05n9rniOwsRUSG6zSIxYJpxQvGXOPedcTQBWymFqcL5uOB+OxzaczWzRoULJuyoPmuBIF9iQlbq/1WeKlqwGGWzPON8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkFa2Q4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkFa2Q4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF880C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776582453;
	bh=YJQv0iukBu/H01cdLLSBeNA+ve0+BWtX9TL23TF5rlo=;
	h=To:Subject:From:Date:From;
	b=YkFa2Q4RpGnvNtn5xu6FWGuZC34cqh+Ohs3QrTFyT++vTiVDY/86e73g0N78MOEtO
	 93kmzyMeXN5nwSY7ga4UEA7uzxOAQyU4rc9Sl7Tt4XbdtnZnZ4ni63TBwMw/wcZB+U
	 IyeFE9fWuqIDiSVn6aUhvmhCcFdDl6Slu8QAfaG9ybc3tostHf16zlPSJnO+/vVWdP
	 nxlaTIxaiMqOUxb/t0Iz0+tmNBu3atqGoTPuQtpWPMQ+T/2ChP7doeD1EB7OcSkDme
	 /lxSx7mqWJhmJNfc1vs+oSrYaS/pL72DQUo473bI0/BRT5GT1D0jGStRqUIWtXFDQU
	 7sVoX4XaNnu9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC104EA7189
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658245368.27757.3177163438834389841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ac1663050c8be11f05c1408a03d7a7725a43d7a5eed3311eb537b0b8d0d3a4
Date: Sun, 19 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776582453
