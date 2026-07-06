Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4648F31280D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783378114; cv=none; b=N0KabSoF/jFR/w5CgQj0LCn8DomI5Cdh3uubBqm9qHT1m1tb/XDVRTBCi1tyliaejevYbanH73PXprVI0vnHQsvee7pE8aI/5WHFZ8+5Y4dC47yAf9ADtJpq/UOX4zCucAPR+VAnSrfPRKY99RAyEbu/ONXr4KjBS7WAxy/vNNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783378114; c=relaxed/simple;
	bh=rWJ/MOiZIHaoCVPfGfeJwlNQjP+2yeggi2GN81ZWppE=;
	h=To:Subject:From:Message-Id:Date; b=IFqj0M/QnlFVIHLJO6CbfmXZB++Y20aW/KcGu3CCUEfmrEXvyElAYT6yBRy7vPgbn4cKT6HP+ApUxXP9rEVm36J1GEtMCHF43pN+zo9bKTU52C2bK1BjP1GE7N0G+OXD/EowEpB/VQCRNQiJbj65uZfCE4Roe5VSvZMNEuADH1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNp4xZiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNp4xZiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD5BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783378113;
	bh=rWJ/MOiZIHaoCVPfGfeJwlNQjP+2yeggi2GN81ZWppE=;
	h=To:Subject:From:Date:From;
	b=BNp4xZiRMPkm66q89v0lgEuTag4De4NbTg9REkR2NE6gD/gveOcvDfOPkZngpP7Pv
	 sneH+9QALLa7GcwU3V2foBpkyFcuvWkFvXAMErae92P8zidbfR6mWGXeFnNibU+5id
	 hZnUJBuwt0Plt6CjRW7E0dXhVYB8il0+W4VtnzQNZyJzTQ313i/iJkZj5Qmse0Ynnz
	 xQq69eyW3W1TLRNtfCdMbN8dloqQMlKxF70UAv5BSctWKhoco6Kt5dQvgwX3Xbdn4Y
	 rTDNGFYARxEHr9UJBpbslbNuy9XCxF95ctxF4+PYoFbY7r/RZtNCq+tLP7YvTiv8py
	 zxxWjEJr+/mUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8847C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337811368.10188.1586878924930704878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97aecce526eaa74b72982becb607f273789c4a15bd62a3a6c72fe3768986c2e4
Date: Mon, 06 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783378113
