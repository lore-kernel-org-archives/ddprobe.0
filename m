Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2782DCBE0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747963194; cv=none; b=HGQB91RK/BWb8P+0EGcq212/f0EqI4gl47Qp7aawIPAK2DcYvvrHbzso5zbs7n7k0dd52mn0/GDIZEDEYoeLtV51t0tFI8U5pUpMvu4pbDh7DLFSSs6/TKov1cNfnTtoT4wWFNbYqInfznP0HtcRw3zR/2v/4jlS5daVcWh1vRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747963194; c=relaxed/simple;
	bh=BTwWfe6GU2Q6rxezXLxOzphGjy0J2cSQjBL+4Tv/4Tc=;
	h=To:Subject:From:Message-Id:Date; b=C0X4RT8Mp4ZVyEMcEpdI7PPkaUli0pA0qBuGTIHA2X1M7HkiEOpqZYoJkw7597ts4R8JOi4ozJtGMD+xz7aPvZGRqe+G917KvTW3U/lgngOEChX/QLLp6EMd71mVWpzPSE+zzR0fCDccY9m6Hk4o0s0LIZnSDTtwL6xRs1NRbR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaIACxBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaIACxBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E7DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747963193;
	bh=BTwWfe6GU2Q6rxezXLxOzphGjy0J2cSQjBL+4Tv/4Tc=;
	h=To:Subject:From:Date:From;
	b=AaIACxBslIAh5/DenXd/pfLaUR6Cu1FL7Gfgqn8rOOMkqOUFYJQPpidK6RopyVtq4
	 U88/EeID3HVy/rRhkdBED2Q/a9Q5gNcL3SdtpaOK6W/Es1VetOnA0cmEeQQa8ibhFp
	 /fv2AZZR4tegOKbSEt2cMChyQTHzKouzaaPOT/+922cKNgBa8G7EJUabHTRPxp2Llc
	 WzYVFEuU8pctOUE6NwdXVgRCf6x1iRhTpoEn/f0lCJpUF6N8YKyQRMM6bUFJNrezGL
	 +p8AZnqgLl3zLA7TF3yEX+QwAMZooOCrwk0Qkn3E19PYbnJQDe6B6YBuGJagWGF2eH
	 QOf/rM0w/s7Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96989C54E65
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796319357.7548.15169961408867408542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9129c02596753e5211fe82d574503c60893c2e85e3ae2ceecd7c9686925a1440
Date: Fri, 23 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747963193
