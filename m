Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A47DDC3
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757291994; cv=none; b=TkUkgSCqEvX8HM+41LAqNNVH54ptOIGVOOSfNUl9pcLy6KPfQf1UZFFrG9FhKDAkWIOXHbKd500MJ7JsPMJBzc+OqegsmacGelEkNwXgBulEwdi5KaXVDhR2slylbYwV/6pILyvB3ZpUUzB0R82s5rfVElII3cMiWNUnMYs3FBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757291994; c=relaxed/simple;
	bh=v9FmFOnjMnD/tpaJNfBTG4B+7Fx3tytynQ7uXM2jwug=;
	h=To:Subject:From:Message-Id:Date; b=lWA1CZy7fBQSEce9pOX/FE8JMvsrUaWR1vcWY2mzhFKoLSu5aOn9ISwtFEIwK/loINAZ1aHOYjKVXPEPdXvfmB/K7cyR0Yas+LTS3j8ND53+TYz1L3WcsJ3L0Co3/1rceSoBDSJS2+DrnxPLbYgunRsIQVGUNUTvB6rmkbtXKlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqIZOJHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqIZOJHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A688BC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757291993;
	bh=v9FmFOnjMnD/tpaJNfBTG4B+7Fx3tytynQ7uXM2jwug=;
	h=To:Subject:From:Date:From;
	b=WqIZOJHhrpk68+5BKAQmf5avAmhE5ooVTyQkLzSOIy8HNrVOg4rvzKANQ4W9XfW/6
	 SLXFvVl355T7pndPjkmrJkQuXOI2o+k0tWYGet9SAiCA1Vt6A3rdVwG45d0kn1cQsu
	 zTJXZzSuEGdH3uQmtGsj67GnC8SNv/FQkC+rZAgxAKXQSY5P8XtSOzamksTyGI9evO
	 fEqq8+etl4fIqGQrAcAkBdKnyf03qW9hCteqin8REwdc5g3O6V78B5dGwyu208tH9L
	 M1YLiiO5wauLTfiaPLox8AekH1BsQnygjkfbFPzQIFrvO9+SdiDaGljzN4pHHv+Lcu
	 +onM/EG1E3VMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C5CA1017
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729199357.21743.1779651618195455237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42983f57fa81be483fedfaed294c60aa937b796b71c706648d11a6a069fe8875
Date: Mon, 08 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757291993
