Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A82284A35
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763688714; cv=none; b=U62Vr8GmnKBt9kyiJFHDYTgJx94NXa8Gt80XVj8PXHHKKxgbued8AuPGRs1lj8nE1H96exV31fvc5T7QTzMeRgu2R/RVgsvOHNHkJQ3lgSIQ9BwJoi7MUO/WCgvSIe8HJ5381lkZhCLOq4CEYamFrjAOvqXlvHtMp+pTC6EiEPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763688714; c=relaxed/simple;
	bh=ytcGMAr4XoW4ep41/dkcuvHm+bzx1wo86w3B6N43X48=;
	h=To:Subject:From:Message-Id:Date; b=qGYtn4lvnMCkgX3ag0zQ5cqk5SaN2IHn5Ca6oiHwnBtjW8/DjbaAMqYHr1unFHaWg0KLe7V/KUpIqoc0v+Wg3ObhSJc5nTtrD5qimO3esEDOQdxg9UXuCq1ZvWGTY+9o+oV6KUQEVtDRG+qo4sK616lGpYag3Tc8Ia5qY0hVuFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=au5dn4/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au5dn4/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBEBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763688713;
	bh=ytcGMAr4XoW4ep41/dkcuvHm+bzx1wo86w3B6N43X48=;
	h=To:Subject:From:Date:From;
	b=au5dn4/ZxbvclDW7XrhYeDUZmcrINz2kqTTkImMQXGMZwZSTxYk+WUVdeOPq5eJcf
	 SbYTGXZBI4RSuTBXR0FeW1Z7FM2RDvaYEcFwYlqtY4eFXMRsLUcF0pOsPa4K6UtFqw
	 wxNtmdm/r8q5rt29hKJN/LjDL4C6A/Uf8RX+IFDG+dIvvS4Q6LCZ6L+QfGvEHNT3AX
	 KvBz+5Ld5yRtN3lXvYaH5/woVK4Xx3nrjwG75cFOFK4yWA/bqJb0D5OUsc1MbYOwn8
	 Ba2l0V/KZzYnsXqZuh7NmtDIabhAic0BH7T/Rzixhgx7J3i2PO+MsogLkHRDwDxQh2
	 +TdCar0uCHD/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992D9CFA465
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368871359.23761.14094927282791916595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8233cc04e23a4eecf53542ad0b1e52917b5e948f5249c8539da8c5b5b0acbb16
Date: Fri, 21 Nov 2025 01:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763688713
