Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AA425B0A3
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786340434; cv=none; b=EvgIkEwHbwYI5z6TGqFVyatXeLqJLvd+9d4hxjTOIs8X5isVQXNdXwFCf8Kt0dTBFCGtxIPBX92XSmgo2RdzDarnqkhPsVVfhuJV4WbkMwuIE7jGUcEg6dpgkPwdZkYuLGSPnushM/D00QOBW0TXEICzNDj1j9UcU7AprcselUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786340434; c=relaxed/simple;
	bh=HhhYZACTTiQwuP29mz+j+QAOGJ1dPk26t+eb0+brosc=;
	h=To:Subject:From:Message-Id:Date; b=b/6UOLeDGQmer2Yi3Xe4NF7d5h+txyzFcXqJQvcaPCcu3ffkd98eQnSjnXy+UJ2OKPdpmZRC0ws4uuBKKZCqKHc5eWK1IybtbVSh76ANFOIOzcfp2waf8ZBOjeW6P+ER97uH7OWw1MLHoJEGiXOvFFSUS3KTgtTunEvP+sNt9h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hidFldmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hidFldmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7382C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786340433;
	bh=HhhYZACTTiQwuP29mz+j+QAOGJ1dPk26t+eb0+brosc=;
	h=To:Subject:From:Date:From;
	b=hidFldmgaZIAqV+vQhHqCPSNpkivfAMRVBBOUrTk/j1gBB7fsVp/vkmnmEOxoB22h
	 ddhM2RaJ10y5vr8CdW6Fpi8ACjIMtUR/u2QMRv2kyRVij1laFPa+DSx1lfOSS7Tex5
	 tSIXozZ4Fn6jLWFmoGfs4Fqp870swaAM4dgoEDm/YIQWp5fDNCaU3PLiertThw7vnG
	 rfvLPJmIiSBTE4Hz/rT+LyhjO9CUq/6AqZHu++MSVkZ8NIb/BDTxmZ8Cc45AG1QJqV
	 mg6AwizFPtcGx4HeSXTfQXxRsMnlvFBolS1hC5BY0RcU319FxO2/SmKSYvsN2IQcLK
	 izcA4qe/9YeIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20B6C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634043369.11505.18146252523129091587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6ea1b87a73dbdf788b55cd5a62ce61e998b2263593c54a978e9c3477d1245a
Date: Mon, 10 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786340433
