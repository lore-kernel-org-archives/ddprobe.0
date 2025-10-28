Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F25C230BD9
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761677994; cv=none; b=lINVrWG9ixiLHIt/GI+TrRRCpJNDjpDRFIEAPks07eShYQB4PsJA4xmtQBA+o0O1ZOEHoPcmZvcn3ob8b7grpG3aU8Pmu1xFPqUpjOfxjWFN2jI/+HKTcHbcccUekJBalf1T2Y9vCByjquGBIkzCNT32ZHx6lLzTxUqV34/vBf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761677994; c=relaxed/simple;
	bh=R0QQkoIOcYqkhMMuTkrFQsBn+o+9AdoA8Rj+0SGe2Js=;
	h=To:Subject:From:Message-Id:Date; b=i30Er2tLUdCnHDF6jhoPVJnukrL2p3qyPgwaM39xQPnCEJvc9WfLznpjrAjzPFFGbp6IrcumvehS0rNih6nmrfYOnAR3iFQTyfIgPKuKK7eI1OisZVIalA/THRgjhRTRGqAJ7adg99W0ynecH4hiPpcxHEA4d6uAOJleNNh/TAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ji/dBZFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ji/dBZFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93F1C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761677993;
	bh=R0QQkoIOcYqkhMMuTkrFQsBn+o+9AdoA8Rj+0SGe2Js=;
	h=To:Subject:From:Date:From;
	b=Ji/dBZFLJzC4n6jXDQNH2Ak/KmTPaA3lYs/rGvc5bQ0ll+QYrbrdBOzm0yfsNwUk4
	 s0X8urguuRjYM+TU2yd5vTJR3AvpZ/EiZhnACGAkLVbNSjj18f1ghhrxtVS1DTCRi5
	 I0zDL3LFLUOXYFdcVeN37hjG9HJ1a1bqe4OUcbErT/WDGKl9yeyasHgqUkQ9V9A/W5
	 QpEb63dzghsFH2NgpkAaspAVPeCfE2dXua2isIZlQRMl80ijiUNTStqXx9mAaSfr6o
	 ehVEqwiJisbI6yq3PUYNHCxBUAjkByF5w/DF2DlSDrj2ruclrTaJWVCqpsi78DuPRG
	 8mSCe7gehYXNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92113CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167799358.16371.9672568750565083804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0260c236cf85cc9b48ee4607f6adf9afd883291d7e9503f174f5315879607454
Date: Tue, 28 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761677993
