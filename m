Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277CB1A83F9
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771274094; cv=none; b=W/E58MHo2GS6FPsGRDehdnZX+/N89GKjLQHYzd1eP5dtn5DHdHw3oQfslm21Sl0Q2AHn2cHZAvuZdHvUCWop8OeQxqGRFqbakGeNxug2EEJlGLNv8t07nyraY2i6ZazUYaIR9R7Yle2FARW9So5O0OBQM56W3dbSUr7Z1xTyoAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771274094; c=relaxed/simple;
	bh=UPojt0Dtuwx+04FuyzmK/SFdZtmEu/FQ0sZKsr0Jk2I=;
	h=To:Subject:From:Message-Id:Date; b=X5rcs6NTMetniDbYKe1lzl8N+JOFdKxV5c9EQXZkTz5vBplU/Qzea73x4zwPWD0Ba6XjvDg1aUPDSpYpwqHsYJKYqtxv83EUZOTVpRG3W/T0/G3ToFRdgiXFvzG61vJW2Ovd4+1XnslIVkQbN8IFcZJruTAArSImQ0pmbhc7ms8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pdf7ud1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pdf7ud1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF156C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771274093;
	bh=UPojt0Dtuwx+04FuyzmK/SFdZtmEu/FQ0sZKsr0Jk2I=;
	h=To:Subject:From:Date:From;
	b=Pdf7ud1NVIP0d6ad968oyEy6eKRpwUUdIAu15ykkr0esbizWDJLGgV+KTGbxxh/sv
	 NaIO0OyI55/A0S//w95SFYmodhlFjPoq0fJhsNnHPE71bxxHFEZUjXxKBq06hbbegQ
	 xciUZQ3OWQwPGwmUeUPHKV1B2V/JvtwoXL7DR4RUAvUPH/SbNKo/RtETtWbjETAMJR
	 4d3tvTM8iv3GPtb+YV2q89Eag6Eqtpx/lkcbfIcIbQpDWtex8QtytLeDgrdSv5rg7B
	 DTdUfVQmWnE6Nt+XzTpEbS5gmKxyJnI5VHG/lbnO3scRWLObzi9gLOrXtA4PWe73Ah
	 lji0fCj8GTh/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C6CE83830
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127409359.32689.10486263548836316278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa9c64fc2c4f1e1de60ec353274f4965b47ea1a6f9f53c1d9b3315db73a2fa4
Date: Mon, 16 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771274093
