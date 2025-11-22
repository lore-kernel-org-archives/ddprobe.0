Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1A72FD1D5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763809314; cv=none; b=JOeFGcuTsLxljcxk6Fripfy0ATXlaoimm2m0dTccPxyYeXja0vEI+pHwbZOGENf93ntKgFxvM5iTNe4WIp4ZqUDx5PNRLLJXhWJbVSEMmR2RDLrdcJ1lC0YlwYSp8E42FjL+vENWEF0tAEZVi0IkroAXuJoAqsfJ33GeyfXZABc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763809314; c=relaxed/simple;
	bh=q8XzQOv84twP4ZjFqFCgPpDPC5TomlaElQVC/NcBNsE=;
	h=To:Subject:From:Message-Id:Date; b=gKVmZQWmZScx1VtaZI88AKRvtLJgGP5fJ55M207GZkgvOZvRteVxYiJF2v/MjtdENzzncgpJL4057dlZ01Fdh+LYet/RQJBD/QjCjvT+tMPELJzNEv0+/GQaRLQ0VCWwDLPGfAiLNP2BsispeV9BihQrp8z3O9yr8mxYNi20G4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFSPhMbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFSPhMbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0C0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763809313;
	bh=q8XzQOv84twP4ZjFqFCgPpDPC5TomlaElQVC/NcBNsE=;
	h=To:Subject:From:Date:From;
	b=XFSPhMbr827MhsBRAo9Ax0fUhM2Z83hf6aPBvc5uJE4HYkL1cUx16cW8nKo+jThc6
	 J/Eq9/gDhsaqlPPoN5QXDFmYAhlUUY9qiGcWhn7DKM9tI7miBgOgmgO7NUDcG1TM1Q
	 P0lXfJ9+tVpLnTlhyhNZSBW7w76JDZOfvFQdd6XWV23fbYXa/RDPiGWT44Z1zxLZ9R
	 m3Bt2YyOZwD5FaoXmaWhd3FeyzxxAgOqvdZOSoGxBJymhfsuVwLvHoAz9lXTuwTCaN
	 ZKu060LfCFxiWY6wk6cyJIrKyQHFFy8wdvHJX0l5zxDZuebRCiYb1+IKJA8rcr1KjL
	 AzorUDFt5Ue7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FAFCFC52A
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380931358.3374.5263570448973500953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb7441a27366b1e90301c3f5a2752070b0cb1e423233e2283f1ccd0df6fd329
Date: Sat, 22 Nov 2025 11:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763809313
