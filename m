Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5631A3160
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787473834; cv=none; b=Gu/mXYHMTuemJKQ6WRTJlcldoImAD8WGnCgZtuSI4K0NgK72dHpbGhuUCZoKe9u6avml7j2RKa+gVrO1MkB7Vn8Iq4Ys2zlFmXxLLGLweRFzdyNm4m7C+5CBwZjnzNr388PElkFEkz2S/j9ab2EmWT5X1S2wLCRwdix5XmAvI+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787473834; c=relaxed/simple;
	bh=Kd/0KyAH0iQhUZaBfNp3cr5XrV+WBDAk957joLksaH0=;
	h=To:Subject:From:Message-Id:Date; b=ZD3OqDCNfYDM4WvEX36fsdDVM0QHx8uMemG/6upPRY1dLDf46mn/1/vuppdaPE8nYNLgTePDj6uWsZ4Op2g07rOTeK+2g4zyb8r/NzMLB5yiPWQuchHLYAcyTEJSVHhBtUxy6hQwcmFh4Z9X00nlpBZ+u7FWc15BZOz7u7y+kig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6gUltTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6gUltTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA98CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787473833;
	bh=Kd/0KyAH0iQhUZaBfNp3cr5XrV+WBDAk957joLksaH0=;
	h=To:Subject:From:Date:From;
	b=o6gUltTkkdeTIgju4m+Y5xn/waqDj8s3HjgletfFMkNiz2Nkns5lUDVP067bBq6KV
	 wikPudp3W8W6EObj+YmgibtPpKeLWFXdnz6w1gWxLqB0MwyyiFgh7V7WvKUVwNspnd
	 CZdHXG0EB/e8+txyYbH9qUfYzpWgsjV/GW2PQxSdtuiMVp2a8heJJpOBO2gnTxCjqZ
	 laqZoNxZOkw85/8QdBttI1ugaJOC7JwLDbEVLeJ4lVG8iKlpm4aiTPUcyjch6onIC8
	 lx4vBLMeF4cgzjK+zSsNdmXWx90+PaUMHqDHoPtVfRE2UiIgGSsqJfJTg4uOisre+S
	 jwOqUqp0hIsjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34DCC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747383371.11390.6830553441255998890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59237496dde7f5e53bce4c4274011becf27d839989f4cf815871a485115a2251
Date: Sun, 23 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787473833
