Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F15C2DEA75
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776661054; cv=none; b=ZeDf7RgwtKdfKTH54RqfjSZUWP85K5b/6KP7lIlhbQ/EmxcEvpz7SEydBqN1StblqNk8CrpvtP2khK4BFhw5H/jaE2rCr6K9D4PzdnVwdaf4S38K1rBAHnrqveNnNG2OkKEiWDyOfSQkT4hC3Gson4YGKXQzw2CjvS2g9G8Gmcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776661054; c=relaxed/simple;
	bh=O7Z+mR7S+YartZFdjFO/LWbUs6uvE5yNPlicohIRCng=;
	h=To:Subject:From:Message-Id:Date; b=WqZ7vN6PRiFw8zbpTx2H39IaTCFx5jVWbJAjVUKi1N4UGDqIirI3GNNc0qKeJ3DiBPVDrNYDbb8bIPa8SAZ3uyEht62AfYykga7MZC3buqjVsPUZfD2rKIb6H/PpsuaJfmShvkoTTxXnSCYRJU8TACWIdW7d+5yXroZ0Avb23c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCl2Y1BO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCl2Y1BO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72BAC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776661053;
	bh=O7Z+mR7S+YartZFdjFO/LWbUs6uvE5yNPlicohIRCng=;
	h=To:Subject:From:Date:From;
	b=LCl2Y1BO7O7FmNEJOZWhJV0jmi2A8i9WpgnTLGjTnyv9TBrlHv3bEVsyaCGH0PBCN
	 o7I0S5p6JMJp56p0qWJKzx7Chpst1Fcaln4SDhm2CkMRY5QU7Mi9nmmk6ilSo5iz9Q
	 fh0QLZOKqVHZx/tb9Yvy9syKfS976B7yvGSYqYEt6kxvaUObNqEIzXO2nxiMZGSXXc
	 AJ+5TmbUdW1Nzu5Fj0hUoDuoPT1MVOnT6WYdD7tzFNSffwWfJe0JJwJp9VXOm4mj6G
	 x4tMISm+4GHcNHomwgwDjOKp4H3BWa+0Clhl0kIEDWROprc+6aCSnbvSHa3q93DDy5
	 VGaUrIz5VYGRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A6F3ED73
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666105368.25969.11246386566823104690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb4ce57afe608abf5c084510c8e58d32bed8ff381330f4ba72dc574ba86371b
Date: Mon, 20 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776661053
