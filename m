Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F94F14F9DB
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717242863; cv=none; b=g0qprgeGvdo9+/vabyXvHLYbSuUz2vLXX9g9dDzCr2a6wVXgCMLvaCxiqnkR7O5cymSmzT/EbHvuu82KP358w9w3zazY0M1bOVVw78aQlVEmtQNWEXD2M5oab/rZv+OVPqIE2EVxS++VTogdBgzhT8MvPTft2SL/35hO5lGWy+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717242863; c=relaxed/simple;
	bh=9BTq1CByck7L60n+XGf+/4vnHnBPHXX2FPEI7r0+y9Q=;
	h=To:Subject:From:Message-Id:Date; b=WPn4a2PIav/GCTqXTWUnGdeGPlZAV5XOS/KTj+Yg31qTvuXa8yHJmCYisNtAvVqQKoOVPS5iGD/Z4af+w06+RI4Aq8gFcE0mvt6qwr5OujTWimu0DqZQY6DJ54cCXsTLbXNaLTURhSJvqDh0UsvVykJXoqNhCJy2DykVWsdEpZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGcj1wM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGcj1wM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C06C4AF09
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717242862;
	bh=9BTq1CByck7L60n+XGf+/4vnHnBPHXX2FPEI7r0+y9Q=;
	h=To:Subject:From:Date:From;
	b=ZGcj1wM6Oqs1OLzYjEc6jL5F5A4yyUkwn4CjXOE4CVj+mh3hsG9MGxHKY4PVaJ5Vf
	 S+sOUM3dQg/dRBIanzShC/9Y1a6TMOkBPTg6SlHIw/SLCTRTxDXZXZ3iHcgpHJkSLX
	 zq0nTIiARAjgU9xSHtpEtVr8G8+kN1lMo2tBIWfm4cUWcGGfjYbQbCTttHAhIJ1noB
	 febd1QakpGInueYLa112EsExK3AfuubWtx005ZWzucJYYoQr4daBVh3KxsaU33dG56
	 C2du/42aifPSt3o66idTKkKBms3kWt0VPvoNQOhVeRrGnhlSoEYDWtIarSHu6YnvCZ
	 noop2KzPbA66g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB39AC27C44
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724286280.30915.10339362903008005594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa75b4c424424c70777d911e0101298b66920815a5c3049090e910386687d204
Date: Sat, 01 Jun 2024 11:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717242862
