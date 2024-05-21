Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD3E77105
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 18:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716315203; cv=none; b=V2bQimIkIhJP2l55VLJgplnkZkeCn49HmEUcONq6hZD8ISKc1xogA37pnJCk0zbqm+B7bp/kFCLsFH/b0FLz+LCEwpj2WaHNPogkYmL9hvshopSWVUgPv4YzKB0PyEXglHP32SmV/WtC2paO0L6dZlsEKZ0IgMNoJOgDprtZIso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716315203; c=relaxed/simple;
	bh=WfStX0NatDpmAoREGI1Q/lx+k0TjT8qsOHT+yrXKmNg=;
	h=To:Subject:From:Message-Id:Date; b=gvn7l/zcmEPdrgyE2bsPwiNcAErgwk62sCwGuXFWvubgnHJDbBmsdu0kLBDtL6p9Jpvu+abb3hg5Adr352b/YX2tEhcptVqYlUKdsYE/tPXo6Dg6UZqX8/NOF3bmaavVwUQdqbd/z5/Pnvb/U2d/xjYaod8A3GeT0pgFZbvEW2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3D7Ugh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3D7Ugh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02C0C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 18:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716315202;
	bh=WfStX0NatDpmAoREGI1Q/lx+k0TjT8qsOHT+yrXKmNg=;
	h=To:Subject:From:Date:From;
	b=o3D7Ugh0NG6jMXHwl/gu6i5TBGGB4Ei3ZDkBRPVS0zO5QCtpKyRn8kiG+8a37vW3V
	 9mnNY8F7Ao55FJUG8XTdJCih3F2vYMBsDSxB7ZWVtTsP0dEBhsJoR3ZV6x0zIbkVPb
	 q4LIpleFQXnXH3tVyJjm0HrY83cSMfpnQTbuWfvslzaKUeb4luj5+OojgqOvYWRuF2
	 pb7QcTsWcVkJrja5pil5W5+T0KoJW2FE4i8lbmSCJiTAO4DiiEpZVGwtgFMo1r2H/O
	 FovDvApqWp5HjF7qwhG2URUBs1HM5L68Gk6g17szryPE800X340Cpo/Eu5eNwaDe2e
	 tznsCEzf23r3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C8BC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 18:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171631520278.6302.1720596131125049364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34eed27e0d50271fd8960f1c76d4283ad2a42acb2b4c81f8cd8f982686176a32
Date: Tue, 21 May 2024 18:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716315202
