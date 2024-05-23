Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C2012B7F
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 16:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716482003; cv=none; b=PyzhHQ5iTiD0DseLTzYOrzQ5a/vC9oMbIN7C12DgZ4KJXUcf0w3ImOyJjo96UEh4ihJR5M5h4GBwahmJDrmWiicXJtsXjaVFUd39plvWstDZZoID09jHeI9Kc+J1WMzpPiTUR2RyT/8LEsm0vkyPjQUR8gUd1G41Zyz1cx3hlzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716482003; c=relaxed/simple;
	bh=/uAICtp44pJ2uQBrMzIDBIvdO7OU75t+KxKLpt2iejY=;
	h=To:Subject:From:Message-Id:Date; b=RM7BizhoeamEu+wLz2histRLYYCKaw5QO+BoQ4hW+Dp2TFtplq9gVr4bnVDsiNrojrKNOowaxFXe6nCKJs+gp1XUMi5McaOZCvv206wbldKkHWSPVxq9FnDKZl80MGmrnq0SratpekE9KWgVvJ6mvnOGrOsLPxpaV0keu6onYyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0gcQoQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0gcQoQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1247C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 16:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716482002;
	bh=/uAICtp44pJ2uQBrMzIDBIvdO7OU75t+KxKLpt2iejY=;
	h=To:Subject:From:Date:From;
	b=P0gcQoQbo4VewMlxJ2MV0iiRV/XrpvJemmYHEMsaajE4RvomMyZkpEFoEPnNgx+b1
	 E0oXjaghcxAj8bBQjlqOnODF9SeT9jAJh6omY49SbtkAUCChhAthBkkiybgohORfwe
	 JF3w99a9LCWdSLJGlcwfEGogs7kK+ApaPXKOXKlysXKRuuqNXHGxAOTcLSkgL31HIa
	 3PTl2WGQwZOnUq50oVSSwyGJpNipfiUuC9dUL/A6hRFOdUr8cqGPQqQioaLHTQwWtb
	 lqkuuHCDLdRmmUkV/YJWbdeHXv8Mz/Zh/LYAZpNfb46KGKFiY0LSXznn/Dv4uiCUq7
	 2AA0BtEowGqEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACC4C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 16:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171648200275.11630.14154632815732029806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e54784376ed6f999bbfc338551b553b035d4810e0e6fdabdac992b53e0ca36b
Date: Thu, 23 May 2024 16:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716482002
