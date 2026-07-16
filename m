Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437AC19C556
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784161114; cv=none; b=oYXnpx5xb/sgoseixGpkYR/peKlvn7fGOI7U3reXnNwUY/XqPaXHXk4A5/ay3dRMcRgI+nxTvybfZHailjUirUMb/rxmO9NE/9fNcr1BFTMVdmCH76j3hqaipNUd/T/oOMVgleN2NtgftwShH10flknxT+ScxpKbEdeGGKwMBbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784161114; c=relaxed/simple;
	bh=zemj5VzYwBg2feDBN4G803oEb5eH/VaKEjcmpDKVYuU=;
	h=To:Subject:From:Message-Id:Date; b=VnNmRmkszH1j9txB+hh4GzK5lji5QLB4L0PE7F5tcYmqVaFGSPo9dN5BNWzqsN7oqn3aGoB+I0YEx5vfaazCcmUuFzuxR+QWYqVJXoKATliqSt1RTWJwObsvTa0ZLEqdh953Ekb1yYh79Mv5AOCmmRpfHv6tG6AWx/kVViycgRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjL4vR7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjL4vR7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB62C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784161113;
	bh=zemj5VzYwBg2feDBN4G803oEb5eH/VaKEjcmpDKVYuU=;
	h=To:Subject:From:Date:From;
	b=HjL4vR7YPZG2EZ2yVCwz7UHyLBWIGFLnBLHhyI9mhNz/pu3W//qDFYO6pJuiIc6Sl
	 z8Si7Y+HQ1wCa4sgsdVtxwebSvFFi8kZtDVGLU1dYr09RUHozqnHDLuvmyzSrt1ATH
	 8Rd+jwlsWdGL6F8PSoAkDLD6O6LHl2Dc+DcgjEc4GKTkOQzhfqwfMrN43qGGvObVRL
	 3QEb/4Vaqfyg2TV3oMYu1ZNyyRIKHreX49R5Oot7ElwtcNE0bYcncwU7v9MJH4+rHW
	 oqtOzR5VTh7IS7ANgcilgIsMKNj0Nql18O/lvAAPJFQd/HnDlZ+4301Tr39qVsl6ID
	 vrtrlDq+rNiBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95BEC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416111368.14317.2254057868270849408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9479af993acd085511b7d8f67b73168dea425032f710ebc6776d390eab3b05b5
Date: Thu, 16 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784161113
