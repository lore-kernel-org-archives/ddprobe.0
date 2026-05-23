Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F97946A
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779520354; cv=none; b=cMZkkOci6N1XmLhZEs0ygE72sKQhkNg5Ad5yt23fNfs65FSaz7Axp4CXvyNtPG33kcIUV95vfbyN9NYkOBUzgpFPPY2b7cnX06dNcKzUvMIxqP5n0sxF6GLgEwjyZkt7FKGtMQzRyxr+78QEnlLOwtQy2J1MigX1IjgNDdEMtSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779520354; c=relaxed/simple;
	bh=ktCgFbsD88HbBTI6kWyly1UE2qyJTPBmDFSTer5aZfg=;
	h=To:Subject:From:Message-Id:Date; b=uBRHZ4e73Cu2w1z8BeDg3mytFyBC016wVjWsHiKtJpHynfuIVwEAOXYhGNjeSkILaPoDefIa3v6C0aN9cP0zkRLJ27xLBalK46eSnOhAOZRpiXF+b8WHSjV2ylBPRY4rDYIqPUkE2x1PXjpQmv1w1kMJuCd9ZEIWr/jS6M92PWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+nr3Qeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+nr3Qeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CD9C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779520353;
	bh=ktCgFbsD88HbBTI6kWyly1UE2qyJTPBmDFSTer5aZfg=;
	h=To:Subject:From:Date:From;
	b=n+nr3QehYUNqwzlHxjrlyJsxjFnor2CRCeH8AS4LvvEdBTZTp+laLBjnGNJmR4sJz
	 cOTeJ1okawJWBdemo998YctgkQi0OBxi/E8S32kYgeO4WPcytt9eFZmemx2uGcXHHP
	 yQZUcTvmdZb5k5ChKFTXYo/kiYeZnVfHH4ax/QJNleKF7iUC2KpGzxDY9ymSY815j6
	 Yg5kZ0u6drqBrIMMJkGTKHd/aUah2v0EJMspNcjY8qAhqGcmJHB+k0JyDJ9Nl0UCvh
	 rlkk/RhpsYrvckq+SNf8wiQg5NRcYutpG6syYPfPBL+/Sw1Sipigi7iZEPTJqokdDg
	 20EDeWVU2G1HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4128CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952035370.20436.16587705055845255579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503218d5b984a35845868a819c24e51512b58265f5197e358948c9cd15238acd
Date: Sat, 23 May 2026 07:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779520353
