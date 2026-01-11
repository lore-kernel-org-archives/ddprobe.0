Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F15A930
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768094034; cv=none; b=PUhOmd1qxMLHGUvoXBDVLavp+qsNVHxST8J/AWDO5oQ3tUC46LD+J6IqgipdkIUobdtdLYJPWqvWKlJmSFtvetIH7yYFDL5e5cx00ki+Orz04XllEvruIzSRy/xL1/H1LmADIdF30/M7AOO/fp/gZNULtQdC6bDo1HcqqnP2Kqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768094034; c=relaxed/simple;
	bh=P4DrpY5/oZERlFuzuhmYNW3Scf8t3LscgA+2dcdyQs8=;
	h=To:Subject:From:Message-Id:Date; b=JrsiL75aIS0YK20xsBK21FdGA+oyWc315CjcFIMbOMG2/dML0PhM6U5HRGik4NQt+yWfdSnP+U4wQrXrwLcYr26kaUUl8i4Qo1IqX2k+9dqVL2q8tozrXlkC1Ybj9JFZh5ROAWs38BkLWIOqKu1vt/nTLZ5qAPKWxJnwEWAf2no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zkjb+NKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zkjb+NKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EAAC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768094033;
	bh=P4DrpY5/oZERlFuzuhmYNW3Scf8t3LscgA+2dcdyQs8=;
	h=To:Subject:From:Date:From;
	b=Zkjb+NKZjo3AwEHeyZlhsltVZl4bVPBgjH0Ry7SmkdB7Ilkq1x8B4IntH+TbNS/xJ
	 R7gsTlSfMEzY+/hnJT02sU2r2ILgC32mJ6usZfs6+WZF1/HgTsMlDCyg49TLJw6ZLc
	 MmlDGy7OwryctuaWqg1TtFYdYiXxS9RNUcjS46Xg0PEo20OFQan7ZNqwMIK9lBv9Eg
	 Heq+yMcqgiMXW8kxOmBKUwuWRvL/cLAFFCdeAPtmo3JmtE4AKOnlhffSuY9ZqXP7jI
	 bYZuUl/BFOzdKNCWJaV1+cVw3gk9YNxJcUUi+UuEMJ+Azkdc2Qsdp0A0R09lbHz1v0
	 sy25dCPeZI8Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92614D25028
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809403358.23998.2259501134236466672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deba01ddd6ccb036be89ff2e18fbac10e3659ebada5c15f8eb0fdf3f7f88fe31
Date: Sun, 11 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768094033
