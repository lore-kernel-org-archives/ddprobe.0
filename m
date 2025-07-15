Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2523F1CF96
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752553794; cv=none; b=HXfBDAVPSfrrWgupyJ760aDwaQELLDFfWg/aQVIUjyb9uLqHFnBk4qPxYYcocqyv7rY1yV2y5rRbKTRn+RxIOH8meuTHrrQHRz1/mC/JOxLBtxYD6GMU1f4yDZLY6y2ZzDHTdwaLqR0TZUhGDuCsqlbQjTE8r/9riYuUdqbH8yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752553794; c=relaxed/simple;
	bh=eAcEeIZgJqRLjbLMZkLhLzeY8orO7mSpftBqv3i10T8=;
	h=To:Subject:From:Message-Id:Date; b=tLhQzvyaW7m5mmrMIeSGMhT+Q1P7G1tMLIG12ikA/hHyhpmn38eHkmJ6GS3hvoCG0ARSssbojDkbLh3qXm2P+seHVfmRoUf8zC14BDKoaClhBIbWTzJJZh25UWndnDcyWqP28G4phYD5h89WybMai8f875lUwMJtmRW85mK0G80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDocJjI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDocJjI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CAAC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752553793;
	bh=eAcEeIZgJqRLjbLMZkLhLzeY8orO7mSpftBqv3i10T8=;
	h=To:Subject:From:Date:From;
	b=pDocJjI0sXJXPm8Ww/D/3OzGZqBq6nHPTN5I0BEnW3MVsT+tfYiuniB6SVI/rxQfl
	 LzhTTolmz5fEu1y0KrvVQjgKW8d6cGyN/OUfUOJK+tW2wDtsUEXbX0Ab4aX/X93aUN
	 radr6QtTUr4HKyjwf65Lw9IqhvsrEPHd6tY/tt0FKhUhrq8Rf8bFUUgQWWg3P6nIar
	 /4VnVBZR2Mep7mOsY2QOMxLWQKNpb8U07ZcHpBGa8ZcV2QPhfe+DIPkGwZDcQrbUff
	 Xe2yFru9ukkXLiIWiz5ovoEOew42AFyTmalqZE3y2CsxqLczS0SGjOwnOWMqnDi4z8
	 XO4Vj94Cw6aJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933FBC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255379359.8421.2622208862157984300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5eb0b5a4b18b5836db04883b9f8a65fdb879d9f1afdbf74fe0924db8962dc8
Date: Tue, 15 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752553793
