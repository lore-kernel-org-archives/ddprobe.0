Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243592F84F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763784114; cv=none; b=mUQzF+uYAwc9yDmAsvHQs6LP0RV3w5E/g24AawjFwF8mHiAEbhYZU9rE+ghMDEWwxtdj8sJVZ08Q7xtKyTrDBEUUx8hpMqifG3PJCfh941zqAO3CaWCb65gno3QaoHQylw9UoXCTwt41HDKkVTvkcLLOCa+x2vYlMcpjC2AR9t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763784114; c=relaxed/simple;
	bh=Fv7ESMsykr+qbMBoLEWpLGcw2OgzzHSm/tgaKH0OGSM=;
	h=To:Subject:From:Message-Id:Date; b=gRgc8zWI3GZG0QAPXdL/TDaWIIPt4GUyCEW2MdNWfw7fUsIaXJufg/k/sF4c3KPRIsZK/APlLYC/N86o4dNnF6kya9DkEX94sH3llbh0Y77SEkQKZ1962baFH+R2Ji1qcYBoyRoZNMXVmZxab/cJOV0u8sEK1EKFkc0ZELXqvGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImwciNSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImwciNSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56C6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763784113;
	bh=Fv7ESMsykr+qbMBoLEWpLGcw2OgzzHSm/tgaKH0OGSM=;
	h=To:Subject:From:Date:From;
	b=ImwciNSNXfiUuReFAErYYQxl8u8IwAfPRk+Bdlh6dekk0zfDzTOSHYTjlCSBX39TA
	 kD68NJ9VTav9QoHBhazaCMTlAAA+DFS063rlDMMPmqs6vg22hpFmmVXMRbjfZx6PbI
	 aOBgn0IiTEXddoNPzvMtUdLgp1/0dXbocdnOacrnHGmWXkqdQShBcIKFLrDDCCU9a0
	 od1JLdUIbB9UIQIBnJH2D1P+XwYKthtyjl4jjY0wVLzBR4I14y24WpWGmNCFn7WsBh
	 6PgdA+d1eKmbj/x2Mll7uwindQ4Azv6LhuFcM3zzNip+As1Jv+4o/eKsebvqv427gJ
	 TNnJWWHVt9Y8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F5ACF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378411358.22088.18015963537725160634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cbe2ff17e9e934079c9e2bb9efbf2f37a026b423dc2bd6fc37783dfa0ed506b
Date: Sat, 22 Nov 2025 04:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763784113
