Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E85944F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 03:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718508503; cv=none; b=SYz0rkhBHrAQmuZu9ZfVY3YmEXdjXqT19BT+6BRfvffeDnXjtcIXRFgN2ZM5AoOTJ5KtiGevJvGKaCWnNt0owhJvhqpa8vvTS4NY0Ya7qOXG3v546qQwnEM9ygapx7hgVNG5VtUjuj6nsUtOSWlzEmXgxYxDRHVxZ/MyFxoRs8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718508503; c=relaxed/simple;
	bh=YD3nZ+yMFXhwjN7+NIwroTB82ms4vXPC225bxwbaqY8=;
	h=To:Subject:From:Message-Id:Date; b=PN3a7ZNwhazHyRUvz2HWXY6ewwzRegJY9Yz3IlA2lRailc5sfiVSRmdOjLsoRwha+KH9aIQJx/g1FzNRPyxbEQxEzlf/m8WIkqme5c2ulsAp8AvaWgNff7o0gGen44NJ0OGrGMH6IaVHfbY8aUqKYSqp5WI3iV+z3pHCPhVPGKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bf3oMoNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bf3oMoNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E09A6C3277B
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 03:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718508502;
	bh=YD3nZ+yMFXhwjN7+NIwroTB82ms4vXPC225bxwbaqY8=;
	h=To:Subject:From:Date:From;
	b=Bf3oMoNrBf4jRLV2EPRnV6Rdh3Fcom5Nb9Vwye4m+Q/boNZcPJT+/51MHU8uM3rp+
	 CHNj5ExxZK38oMaxaZ4KF94DDlpG/vda3aC3wxtWZxKjA/Pw3PYzAz5A7NHNZiMLy8
	 1n7S9TOn7MZon1EpKHLMrxHZSDuo6XZpH4cFejzqEQmnT6wsMzfE1tuj2BamsgepN8
	 NyG2KxTJVGRU7m4Ti0vThEjcATVOS/Ymoxxr04HkXfgkGE9dwqmlYdIMcmB7l62dyQ
	 OFahGxUIAxTi1OTWmQxrH2dZHEh0RdNTN/GpDmiaXcIuBqvcGqwqIhsm94Hq8oT+Gy
	 IEYD9TRyYYprQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC798C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 03:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171850850279.7678.8191106713839945880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9512b9e14f777235babcb48ef98095716ba73418cf05d8dbe8c23d664d569cce
Date: Sun, 16 Jun 2024 03:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718508502
