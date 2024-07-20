Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E73B13775E
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721496354; cv=none; b=Xg9vy/GF3gmJVn4ASMoYiQK+8/UE9E605KM+sTMK5h5nnabnmK44bFC4VIFPw4FjCXPgt7BqIldoyJeqeC0l8J7fp6f3D5ccF8ktkBpkdZlca05QAnLnku+iGsnKicsSI9Wk9hgWb8Mzo/OgYoA3/SFqhjYHXc/u3UMbh2/YaL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721496354; c=relaxed/simple;
	bh=gp2sNtM7arNOiMnt3WyV7kTluuENHSP1EVj5yYixyII=;
	h=To:Subject:From:Message-Id:Date; b=oDZ14/+qpS2BDOAdTnkf7Ed+pEe2sTw+oXvqs0lEVVByiBMvTxEC35QEqJgj24IJeT4LTpykSzNC7Y58Mw57/Rl3Yu+Dm3zN9bbcpiIL6o2TWVzUc1e3/SWmOIhc+Wkg7dxJUFXnXwzR/N0gLvKnp/LIwDnkdJjd3W1TRXwNWHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBUqAO80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBUqAO80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44C6C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721496353;
	bh=gp2sNtM7arNOiMnt3WyV7kTluuENHSP1EVj5yYixyII=;
	h=To:Subject:From:Date:From;
	b=TBUqAO80gGNFn9nSRrB3jC97YsHSUpfGkEIeDrOcBdMi621XAoj1SRsBJfRtPssNh
	 nlF1qFQiZSavkJxjzWM2mdZx5xBZ7tnFnqVDIzQ+ZnMEaRGHryEtX4G8Nan0TKrdvI
	 gu6zZW1F64XXYSjDmjRA5TKgYB1nZF+lOj6V8GuF0MfXytIi42PbIcx11860RdgR7U
	 jCK5KYnJkREeh1V5GNO1yUfNYGLE3zbQkYzmZrggnWBQbY96+CAIdaw9cvw8PpEYIM
	 EKTuYSxFNHUpWn46dytJQEuo416NZy7JzR3qOriviKOv7AZh9A7otz9Gi8N7V8v1pe
	 XJgftBHeeGadg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A011C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172149635362.21938.6305645391114028291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf2b616d958ca987254ed69504c842ff137908105d392273c6e5a3a931caf0b
Date: Sat, 20 Jul 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721496353
