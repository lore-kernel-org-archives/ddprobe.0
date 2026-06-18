Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4379B33F8BC
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781759194; cv=none; b=XPhxMOF2Qrj97h2EItTJYPYzyVrPMuWDbdt6u79rH6U5seUO3xRiZhv08GMQvL24pYdsn0GicW0wj+erNCjmMC+pL2gGjiX5Rjh6fKc27HzaXyLuuJU/UsV2rv8LtvtkDU7ndFpfoh2b5m3RF+AFkbGORghNqqbyfNZBK5lOUrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781759194; c=relaxed/simple;
	bh=c1b3nwRWNA4lORyfcBQlND9Uj8mFXRyjKhezKzJ4D5Y=;
	h=To:Subject:From:Message-Id:Date; b=uRx7rsik2ashMOY58MpkpMxVCt0EY2ANJ3vuBpOqCBdHjh+DA6UULdnIFYhp6XwKcZsvCeNhkuZPuwkZhVXJCAyQbxHB/aQo8k7mF9iyIexJTAwI7SaxKb4BAR9qof1QE/03PylwmQjS7uIhylP5FX1AbSJj3OX8JaEkrlo2QIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiNYz7pQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiNYz7pQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB399C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781759193;
	bh=c1b3nwRWNA4lORyfcBQlND9Uj8mFXRyjKhezKzJ4D5Y=;
	h=To:Subject:From:Date:From;
	b=BiNYz7pQ5HbQGdsFt2o+zAEubonV+Im/6V3MgdOAjyGPyucMITcpt6kPihIMZ4Vhb
	 UMN99Iv4CzPxHxD+2eZ2PYC5kP4cY9v+UzfRiMAERECC1m6zQod2mZrH3ZuWN6SBtd
	 BCrMuHz4KmcUhWUXIx0Kruwy3XTTdHaRecXH4noumMm5YT7xUa4Ld0vHvECEP9KQgE
	 kYIU2coHsKMqxtl9dbyUkTqcyXKRYcw+7OTRQXGAA3TSfUVa7hiQLc4ZbZzxySWSd2
	 mhCFse1302H6S0/18x6TOdYPesNlrvo+d4M3p/Rh7h2RYKWGuweXWxPvd2zsswK7B2
	 1TXB2eTeJal3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA291CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175919368.6766.1227347888859215008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc61164d1092d94c5e194d54f7388d2ef5a208baf46f2bb6ae2c41d44ef8e5a
Date: Thu, 18 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781759193
