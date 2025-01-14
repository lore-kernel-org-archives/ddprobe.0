Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3050224022A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736829354; cv=none; b=mEcRlwBfiQuSA8v3LStgoeZ27iIM8gRjcrnP4MHPXmqA/q51ZuvoXVJbu7nw8qsTe78/MF6x9Rx2ZSFuU1xozlZTrq6DSbCfmYn+NaPKmsgIPDXkZKvv2KbEphvB76BfAeq+1ZdIq6X/Sc1tTU9xBw2lR7uE42CKMjDZITk8vsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736829354; c=relaxed/simple;
	bh=jxY5uTlZq66DYOjOeLfIEzcluCSYN+k0bzNwckCyjRA=;
	h=To:Subject:From:Message-Id:Date; b=Ah4iAA8L1W79jKkfnjajZohgivSMOrgosVrxeXHvhPe5LXo4zaNA+bbZ813YTo2nyr1B08itnMlocKjRYJStDvW2Zfaw6ngqbLUu63ljHkim81WP9G1LHZ/aSJlaFUJq1rCfUnjDR4b04gZSmY3xdSQGRQEuFSEUSMVPZi1/ZqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGOIGVhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGOIGVhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C1BC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736829353;
	bh=jxY5uTlZq66DYOjOeLfIEzcluCSYN+k0bzNwckCyjRA=;
	h=To:Subject:From:Date:From;
	b=QGOIGVhmybvGb6QPhWRL4W1SvWRzI8s3OZb/EcvDSlkj9CYpZOSlTNwvnZzpE0mEs
	 SjaU8W7E6iC4SIHPBiqvvPTdbNsK7Yb0fGYEt5PitbAmFfjpVG5hZDq2PEJHropbh8
	 FVH7vCIPd3kSn0DJiJFE6TULZ9hs2AM4S1WyxFo0SMrNOh3XenqxK7A30nKlXHOn3b
	 OIbjvyYxWFKV1wXxpe1debJze1qvTeStGL5pSUTPomSXRITZDHGR4uZlgTUQqyvv3v
	 dHn/FCwneWC82ukzrLJFsMeXnPy1QC6D/6/qgndPVxqV0cSZg7D5xIy3GJAxOLdVFk
	 dNAx0SM3DI0oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C62E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682935358.25344.17848267339434274987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fcf1e2dec71762621b6929e3623379fdd76cd89a26917378eb576238f045c2b
Date: Tue, 14 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736829353
