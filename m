Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B24D1C3C08
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740900534; cv=none; b=oyeNPG9ChkHIaPGb+EnhFW+FESX7TOuJBwWwGpItos3qHezb+ZTtUn0oeurS4iVfXM/1WRA0oPx86MHsVs+X71p49ObqPrbNgUn0MnUNhhCOTTP7wSduY8Eyuj5FE4miaxSluEeD9StE1FgRpFxkwYqZ1UpQPMfpFSwexksQOkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740900534; c=relaxed/simple;
	bh=QKeZhT/c24nUIWGEl4LugMsYZ4jqAOxAvdPHxK8GVIs=;
	h=To:Subject:From:Message-Id:Date; b=dNw1tL5O76zP0NGSYNnTYpc+R1ZEI0DFACw9nAuBDbd4dfN19a9JZ796UdT6iz9L+HHiFKeYEChIl0AZJhr1qZX+CtmrC0q0P6M9kpkD0H7HhTtR65FzNNLOXTIoJ8DwMXWwrCpgZ2qpETRbQL1+sE2Zo/zXwvRJuxzwYlqZliU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcBFhdfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcBFhdfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D85C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740900533;
	bh=QKeZhT/c24nUIWGEl4LugMsYZ4jqAOxAvdPHxK8GVIs=;
	h=To:Subject:From:Date:From;
	b=YcBFhdfD73J5xUVKwwXKJL/qL4eYHirw6ZYtB0I6YxBvJDwCgNdZjMtQPq1AEVQgY
	 /5I5gbfnysagFTZv8FT42VjXSe7WCD2UOwEZ+97bw2tUBJZb+o6rMpdpaoNODKkpv3
	 5iWDBS0a+c8xNX93hPe9fQgJ09RF9RMor2gnhqe5aEaRTR+DCll77u6Pu5I6u6IdQ/
	 JMmXyvBovCzoMx+qRIXJEEVfSkTtvjIRXMWPv1C70mmDzIyl2aU8wKvbM/NoNk7wkp
	 ZXnSWFlll1aCBNwDLO/HB/ShEf9/jeUOcf3zKY/tMkkRnt1Q4Jfbq+GRQ1k+pRDFwB
	 aB+ma6/Pw3pIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B9EC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174090053360.5967.13457033750505282224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac7f459dd42416b276c641fcdf42b66af6d47fc66bbfd4d21f46d6be8f7b579
Date: Sun, 02 Mar 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740900533
