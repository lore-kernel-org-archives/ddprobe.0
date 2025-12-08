Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181821DB95E
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765229574; cv=none; b=TKJ+oiSBN4UiLHXdwgzHljaADm9DjjebjYAce0WSMvfSnrl3+wBxlrOMvf7YHsmD485p7qfBRYRLXk2Apa+CpOB8nsxdar1KGLNLyls/WmhmTUvGsKc2R6OIVx+qlKzzvLwYaXq8LqRINeXz5WXLERv+h1KUo29hkQqcpFTg0Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765229574; c=relaxed/simple;
	bh=C++8w9ays7UoALMpoLKklLw0Pj9alZHuWlYbint2qBE=;
	h=To:Subject:From:Message-Id:Date; b=tFqgCKlW9ChAqAd3KmKzLuKOOT8SI0kz9nNLemSpSa6GeTGtw7W2KShOTdLLQOZZKBq3UB6sXsCGrbIk95F2LrXIalXCW9PhgW22wB4T/DbUSqWpUaq7HMxveCPhFgqtRtGqrdV80hMl++hUWitYHIuO6dso/w0axvMaGAXoWKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEXfrdsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEXfrdsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9203C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765229573;
	bh=C++8w9ays7UoALMpoLKklLw0Pj9alZHuWlYbint2qBE=;
	h=To:Subject:From:Date:From;
	b=XEXfrdsfGexXZol0TGb5z2y11iuiYtfgJUJ1TlfhQ7E701D1Uci8cnxQbG6zxkyt+
	 EyFZEJE+6zKJotlu4BzdU15RxZ4iRhNZyPmEfVTTW6VMp/Lij24vGNrLahy9pebZNr
	 Tk1jcoBPrXy5d/IoOMnfsj+nGRn8ISWRwKxohpqa7al3Xl3tX2ZTysQV1PwZs9Vy7E
	 RUHe9wpMVt695iMOdKyxU8lNCW5fBAyqxbMD/cv6DeE0N30UGoCy+SnnjY5bmE6Mjv
	 ZXRGWJWh909Ay8MIsMX50YTVYz3h/Eoim0hwYX3vGW1liO5PBSU+s2eSnXZGRvtag/
	 cy9+8zX5iJwNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93419D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522957359.23234.11300908603800980365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d423b0df8495587ea2c95e7fdad70a2561d3913404306eade53560eb4e722c3b
Date: Mon, 08 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765229573
