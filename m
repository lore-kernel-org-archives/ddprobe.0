Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C601E5B9D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747142994; cv=none; b=AEx8gRaUgZystKCWaGtgnl30Hdt5v4zD0dLRQ1THv8K3rVgisLZMRNuMf9I1ukI8SDPeGRv0LxwYnoHOAgTsWRgyQsVYECAW869fN+hO9pk7m8+ykYLjrTZpeKHNbM8fXGPODaVCuvAq7iUeEau7I4oT/6il8nvBrzDqYZE0Ozw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747142994; c=relaxed/simple;
	bh=5sNZwZQ9/UqsZWRaMNN7LZtc8m3srs8DkpsflzbaYws=;
	h=To:Subject:From:Message-Id:Date; b=CXRaviWvwslHfH//rKhtYFkDe3kFMMUGPoFApVBsWdcAltTcoIvzhUWTNqQ9ApAbj2gu8333FGYVzmJwtjaHX/Ek/EepqO+wUfY4I6vZyiTju/FcPp2K9CMXz4ksW7hkVDIUx3YcVHg/yUHhF3yUR+q+JFl/TXELDw6h0ead7CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDvJxly2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDvJxly2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2051C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747142993;
	bh=5sNZwZQ9/UqsZWRaMNN7LZtc8m3srs8DkpsflzbaYws=;
	h=To:Subject:From:Date:From;
	b=aDvJxly2FIjAH3b7po8BPgRALSNdNJIUIQzOSCsK7jLGFkSRKjnmAMMUV3ck02e71
	 tib3pAB5p4VyevdxyiXLbx9FviADBPOjtZUGQlPlfjpMmABpynedgd1SpJDJVig/oZ
	 7aXQwCUgY8Vucp9+S5KUYTilX+WATmeZXZgb/S828TR919MlprtMvrHw1IlwCB/SJN
	 h1gcyfNzibOxBn7+5/BPdNeGvPIJjVco7rP4PorkRV/jm58xmrYfqGXSLSByiDlHSC
	 R/zziy3igI5b9DKJuAGL0ApAdn825hhH0/dAlxWyOhTyI3lYKfHaJaxETzRsDNAhfE
	 j+wNgHVBsqqLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B0C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714299357.30431.12316353908913941271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56fc70df6b6f489ea31e856596e92e8b006886dc0378794d2f336b90cc16bc4
Date: Tue, 13 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747142993
