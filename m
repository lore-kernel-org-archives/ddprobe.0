Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F492931FF
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787811634; cv=none; b=UpTOFj31BOpGdc3lpu2PPUv2uuuQMxz/M9YIpdP8NSTNOHJjvOvWbqpBa6QUhOcwLG0N8uJAfeBI7wV6KRDrCzX2KhgG21cVBFpH4E07meV01FMdMWO3zH3aLYf3zGZdQXqATx1d+aZed+GoA/cUWgiNEplC54nwI6e1c65iY1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787811634; c=relaxed/simple;
	bh=/BSXUZiAIryDFnLTVHaiiJRndZfUX59hPFS76WDWd7I=;
	h=To:Subject:From:Message-Id:Date; b=WPPtG8HZNSV3dKy7jK8Z344Ikg2bpcA3f3NRgrTlW/k0fZWdIPpdlZPa+8tpvm2itKkXFqSgnnS0tOtD5kPabUFIacovIQVDw8iRloe/bnFZc/3O5IVsR0eA1/369qbn/oqeyN8y0JNDXz4QS806oG7VPHyJKfThKac9xie/LV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUcZUlka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUcZUlka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AA1C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787811633;
	bh=/BSXUZiAIryDFnLTVHaiiJRndZfUX59hPFS76WDWd7I=;
	h=To:Subject:From:Date:From;
	b=rUcZUlkaPqGiNqt+nNyweoBLMKsFRo/0fJMi57xSOfQMkfoNiRw0dLmaouFXZW/3u
	 UJ8Dal0eHndWHIYqZC4UFvKThMSDG1NnOxOlXleXFoHGIGc3ZoMRl953IpVwX9EAmG
	 UOyBZn3MCmcbwp4xFX9/ymfIjtjUXD1CITOn75tHlA1HRBdK2gjwhzuEug6XU2xoLX
	 P570OM7UXG1qWFZXAei4vVqUq7yUqUrgSy10hZguPL852ZYRnpkdBMPFBxHMrUvOeY
	 Kr+W4QgIKkESuXJkSW0wiWs0bUrj1hxPHPSQCMpm92sisao7N5SpxrmMbWzpR/yXtX
	 hTQqruttcVfwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAA3C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781163369.19803.1650358473391891471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ea7122f0cc72c256eff14da2250658ef1107f9ddd362ae093c360e0b949cc8
Date: Thu, 27 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787811633
