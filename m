Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF713B2B8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733253954; cv=none; b=SYrhlKjrJqKCfD+3ia7o9tuf1UqIBlEhRGgUEccaGnq/xHF6VYYqnOKKjNN0qQy2mQcWOeiOWYz7cxC/WxDQTeJbPk8aPxN85ApXDkyrwoMPaimgOQog8XtY52pLYDly5L+H7OAYzJhRPX5vlMiWzmPP/YLdHNrNTgeI5nReVyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733253954; c=relaxed/simple;
	bh=y5K5NhGxDoI5CKF0Ymlcsd8Q34QKx7VDP9VT2EekaQE=;
	h=To:Subject:From:Message-Id:Date; b=Q42GXfz3iO+P4phEDJk1f9ZcTibFXC8eQ8M6M/oAZUb7FyaXksB7WN8RpUO6wubNUnObhpXFvxo6u6GBe8FgOVh5wIoLPWiwlpMSPpX5f/YQUWdZVIxEMCK9LPDn0eqqSFyAHf56WQoWE/apCF9Rc2Z89fU1cseAQX9B+LMuLCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cR4MIjh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cR4MIjh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68D2C4CED8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733253953;
	bh=y5K5NhGxDoI5CKF0Ymlcsd8Q34QKx7VDP9VT2EekaQE=;
	h=To:Subject:From:Date:From;
	b=cR4MIjh594g1eoiZKdn2AQeybDbQJyEH0e+mr2C9rYr2Nl/GYRVU/HdDd5CSfv5P8
	 NDHQ2HaPXWjCwJX4T1iIyUX9q4bO6i67uVWnGj3jjKRYs0g/zZ6vVIqHrnuv9F7CQ4
	 PBTiEGy+Aj7x8el05kMveuMck4FrFKWkI7QJ27jDiIiMekSKT5oR/rzDrFQ4FIGWNP
	 BfxzBcGDtPSVAsORcRRHMp5azYrmTRRF3+z577jbAVcyNHXIzNRXfWXR6mrsolwCdE
	 2rD+Dp05In+k82JQPnI0DtVAzxl4N4yDgEu1XdDG66pylYUjUXP5e+Oa+bNJsvluq3
	 Ll8tTtE9UfhIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E329E74ACB
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173325395362.20382.11975434644648009597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71bb6908bc19b7a5b0208b585f0aef201f7e4ff15a5ac10a7f8976cac5c71e9a
Date: Tue, 03 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733253953
