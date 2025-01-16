Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F0235968
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737025554; cv=none; b=Kw7ySTKPVMx2HO7Y1udJcbXCKkyHPk6o8VaqJOUtA0g2SbsjW0dxjCf2Sr+G4UcIvLzEwJsA2CYUHgILFksBSr3aR/aHJHhiDZNeolTGeudthqOrHFoYxG0JNC6Q8E+5s4/DnQC+Zh7lKwctD1kVPJthXT2pcKUtkk8ESqY/h8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737025554; c=relaxed/simple;
	bh=efk9jhL70q6IBQhq1QVAvq0kNPBLgYVVVgJC/j6e9uI=;
	h=To:Subject:From:Message-Id:Date; b=fIexclkgtP2xJkVcb4Z52w+CxNR/BBKPJ+NdbD3olkPFoFT7nRTcNbjgUs4EG1hYSF/8ww5QcH3o0mRcgr8LHr0U4c93+Ai8cnPQULNWmK9tx9XsIMf+UdfP6tz8iFYbN0WPCyXh2cO6ebGWeX/IVHQ1tQ4Qa6QwHn3Tbw4b66g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boSddQSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boSddQSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C7FC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737025553;
	bh=efk9jhL70q6IBQhq1QVAvq0kNPBLgYVVVgJC/j6e9uI=;
	h=To:Subject:From:Date:From;
	b=boSddQSuPMWFLjYB18hzKGPbRNRs1zg/ZVxJq6w058A65Upg7mNOexQbyntYh8Ekp
	 XO0TygBuhVNVmhq/8W6ekYvNZXcfnSTOIeN16UaWhaBZMpclc4JCYxUJFLXUp5PO8J
	 kwyerk8g9+b+sGdjle5IoJ+lDKJbzPMwmXbXZ6f3HCNHwzqMlCwFLO04OVi+kw81Tp
	 MzZ7Zk0ce14LKCl5ipX1JJYj0HkX00JuGcIbUdMlDDHPU1dFRB2axhg8F/X83YW9Sj
	 QYtEI5SdbQGV+gddrp4V1KM9WWuRKCTtYpvjdVs3gRm0ZailEObKQ55fpOpcEBAih6
	 FzgPp0zEf4hjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9076DC02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702555358.11184.15419747046997258331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06208a810747aa6cc65d11f46f4a2f964709b6f1d60b251efcadf176cc84f34
Date: Thu, 16 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737025553
