Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286924C91
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745701194; cv=none; b=do4EdcVRJQLxBeij+BW3fKE4DwcuLKAE4jMI9Bq70GRvURAMQAgf5ez7byGkpjnxZIxJExtA02w3SldR1PTmazOGx9F+eIJynySpBF+rd0iUPBMLATmv1fAel//iwGCmYflA+87Uww0cuqVYxPWftwGq+r+obGW6cs3Za7vsHwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745701194; c=relaxed/simple;
	bh=kGdu7OpkCcDDeBHMW+LS/KkMPfIPXDONu4CEUjvnfW8=;
	h=To:Subject:From:Message-Id:Date; b=egbdGIPeDd5j5+WbdZRPEQIsKS/7JOUziTX9wHjW7TPJhO+fDmcD7Tkyi+QnARDCKTnFQDGpu53Tx+OdcCaqZsfKB2IpPYU9xWE67I10H809pw/H5pntP7nessPl4eiNVeiI2ULCWMrXLcwB+xtj3daZ63teXyAZxE2AL8CZDvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFp5+xG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFp5+xG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2261C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745701193;
	bh=kGdu7OpkCcDDeBHMW+LS/KkMPfIPXDONu4CEUjvnfW8=;
	h=To:Subject:From:Date:From;
	b=VFp5+xG0v2suQVbwAmoAv6ubnPZoM8lUNHBEYPlVSjcoE2oDWYanx9Wof3yWyfnlY
	 q/R1F2yX7Q/Gfq/iDt43s7Gkcl6AdV2XzP0QczfeGEuwPqB3pZsyzlacFKPqeEXyYP
	 j4pwrX8hgUPZbu9/0eulFmNyeu0CwPGNLJ805p+JiTQ+oo2ccjabyNhr5zzWva+Jom
	 X/pR8xGGksF1KOyc03YHXOYwTV+m7sT//xs5b6eqTCmi///K0yE2ftC+Rbp4KMP2uF
	 xlkErRR3Ib1VKMfpHLEM7gqlhs/fCEqCG7YZbKDm0pZqIszobsTgidM8CeOfMcjmJg
	 hn6OJD4d+Y0ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBEAC369D5
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570119357.27092.5305916652210519306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff4fd45834730a44d15a94f58cd2d6de118643f12e3b40aaf7819bdac410baa
Date: Sat, 26 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745701193
