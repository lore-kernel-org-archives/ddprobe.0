Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DF854765
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737407754; cv=none; b=cfrRkaEMUcFxvraG9NxxJ5+qa3r24dozMH1nFaWWmWx4GvfYC8EUuaDZ90kvzru3axmtFVMMlZOFdJTfW1/dB9fvLV0pwHdi8QFFMx6uXYm56oKvwtTkkETWmRs6PqCqh4inbUyDFp/CL4uzd2O2P/OuccDaFY17G0I4Hl/0cw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737407754; c=relaxed/simple;
	bh=BSr92g858SHdbfcXmtkRmoTbZeUEdJyguGRf4rrJanE=;
	h=To:Subject:From:Message-Id:Date; b=izsQwg2+eJ+ot1UBvw/E/+b2yR4gGGouHupuP3+CrVGvLSMa+IyU5U7qjyprW2RSp7pv2s4p20uuOIUXDnGjgj4k9lsaVy3go5VPf+IWg8/o1iL4dSH55eXQatOlhjYIWV7O6cKDOwe2eWrRr9UUbGjWk8OHan0SxOFI2CUFw4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDVPbkrK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDVPbkrK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9827C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737407753;
	bh=BSr92g858SHdbfcXmtkRmoTbZeUEdJyguGRf4rrJanE=;
	h=To:Subject:From:Date:From;
	b=nDVPbkrK7nsYgjxVoCmlK/P3ahJ64Knj7b2CkPoowAeCCMF4292IPOqWXtNc21ryf
	 mlgCO80AGBjEZWdQyckZI3k65lZ3nPZW/PUkGYeO5SrlrAYJoMTki68OK2GPmUqB80
	 IlaamYrPt+AJmc8SZHVo35HSos70CzgRTVWTAKwMEjUq1wrcfpjrRX8LZlojL+S96s
	 RXPkdJjgBMkAhIUOR2PtjwP2SNfeSkMImji34aYhSd2qkGJ82dd8UrxMcHdKlui+sQ
	 Te+P2ps4JPkH1TmKnAcLZEPJKOx+0sWBEU9ijg+96xfK25enDmO0YOTvyzI9Dmjr3m
	 ckHpNbrarHjVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92305C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173740775357.27765.4830654263386072685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e2b9cd5fbc1182da40b831e9635feeaa0f80154199945b00c61b616a48685b
Date: Mon, 20 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737407753
