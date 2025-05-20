Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C08E18DB2A
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747751994; cv=none; b=o/GZmIlqqvyB+GWADuskvF14udolAHX6+gX0CgQUrE/rR4fDMMJab91eXCXaJeB9aEWE/yvWb8p9Asm4vTKmYa8N3McE3Fhi/b2Vty8iPlM0gOzVDwCF+bne0DMe9xA2RBhLGHtEsd9b05SR6XpPRLizEd2KV3VLo3rGarjnpQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747751994; c=relaxed/simple;
	bh=QJmOdWvy2t80Dte0e9LQ4CRtpn2yZRsTMH/Lvv5Zkys=;
	h=To:Subject:From:Message-Id:Date; b=GHr7ZJ7l3R1vZ7bwi3h852+CeFqpXX6gNxUPHLb24FdcRq3QIFqzjvqtVtSa4PkWevcRid/l+4/IbBpe+YNamauiCVALjqR4lw1xXxFDjJlLPjd0y/sJ+tbxTZepak1PYGElaPGulTQtczfQo9XEWCym2tbZz+3FY2wojiWr8LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYSMOBd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYSMOBd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE4EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747751993;
	bh=QJmOdWvy2t80Dte0e9LQ4CRtpn2yZRsTMH/Lvv5Zkys=;
	h=To:Subject:From:Date:From;
	b=mYSMOBd9PBZyJRYqbr9Y02gfZCmbh2XGTnDfZQ8of2JmlYvNIUwal4PyQbB1arMk3
	 2KdCWWjW9MWkUlC/CmTuPf3Bc1vGx4q3ZtvgMNYZXJU160sQ8yTx04HQiqBYZ3iV8P
	 LjzpL1mHKiZoybxiRe3HBvx5cnzZD+E3y0quSvdPiFc4OA3WMs2HaI5bIH3+GsSR9o
	 oDiU/qswv5s1v22n6kdSyJFXwGpnplfDWJFNwUFntNjUuJyWGZIRHon/PTvESJn9Wa
	 ysm2RycA0tEbdmbpxf2ZrF9lOzPYCk8dCiY/3xAQCf2qma6BrXdmeAQV5RLXRQR8Zf
	 H1oy6mE29/h9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECEEC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775199357.3913.6264062905938966679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6e069e843b1648d7dbab425d7a3944f52a052373ff3443178ce8ad9672608b
Date: Tue, 20 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747751993
