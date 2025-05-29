Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494741C84C6
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748539194; cv=none; b=ZMj10o1+y0oCHVLuwWhX3Mnnb5EGOzzup7cH4eRH/H9wrJ+r6ykVlEkPYd9UAsKwPoA/qMNIGSfQ9qO7fc6frrlgJ5q9vmN6++j5jMTJDNJvoiVwfwCG4KEKxaEXayy4QASgRH/9i6vDzhKzFbtoO3nW8l0EdAsuHVRvuiJCx58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748539194; c=relaxed/simple;
	bh=TlFMUS2Vu0rsK3zHbGbzN+gI5hm5yc+egqOYwc/0sSk=;
	h=To:Subject:From:Message-Id:Date; b=mWTgc3o7bL0NRiHBWU+tGia+1EJW22AAwnSy/iRe9bExq6hMUCjqIdYPVINfGNrhTSfqpn3+CKOGguFkcJIUtmebJajomPlqTTCkQLKD0huI7hn2dit9JxPSi75EEZpExm7cb5fENXj6RxRfDqUIjbYbH6tQPEXCitO581MZG+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kowIWLNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kowIWLNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9123C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748539193;
	bh=TlFMUS2Vu0rsK3zHbGbzN+gI5hm5yc+egqOYwc/0sSk=;
	h=To:Subject:From:Date:From;
	b=kowIWLNE0koYI+5Pcz5lUr6z0XDimIo6lQY4S52lvoYCLGOXB57toluMB9Ik/vpBy
	 ubQ2FPgSE66jvmkg873p7b/PALS108sx7oSfmwAEHkY6o32wypdzBkdmi0nMGYpXPB
	 SqZcme+Q1AKOf4kTwGZd/lojTpww/FKmZbAChGtFPP0B/C9lMY/wXqpAXRI1pNGbgN
	 qJNX+oq2e2AVLqVKgYwY6x6qAd74d99TnIc4uSzIEl5Ix9eFujMaOOVbRvyWE7Bbmd
	 OJQs4yH7uzE26+RwYSqaqkuMAfqUEKCV2ph+MUONT/fKx/+53R5aGn1pNLmxKTkMcG
	 v5kGAlDvF/Ttg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939E0C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853919358.4952.15271947663637257693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47924a1f3a33d6c0c2694263c309c9cf6ec0ae2418649023fddccf9f1c5811d
Date: Thu, 29 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748539193
