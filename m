Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFE4414437
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790271634; cv=none; b=BAiTj51zhmcssqrdtYC5DPLUE6YJHmQI+z3sXIqV+U1V+OCWjwshuw1NfOuEWDBKAlhwz0KGRlgdQAMwABrxsUH1rgwd7kbs/LIG9r1B/D7bZTU9DQ9/Ub07PVWXRvZrQxvFS4dMHW/OUYBNgJyVlWR6H2PH6hJP5DRQgjXheI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790271634; c=relaxed/simple;
	bh=jKnWxKcqGA60/2KSdSndhuDvssDAXaeYlOelHENZEqU=;
	h=To:Subject:From:Message-Id:Date; b=f/nPC7ntMOgiDl+5MYLmR/psfgVs63mxK/lpMgyGMMKsHc9nU+QIRmB0AW+lfqWcBY8MYW6eZxL0+vjrQH0ngIV5X4rXVODLYEBOaFK3rNVob9ToG5Pdj/OyQoKc3UOoRd7zk3h94C9SR9fqzIHrYr3KOqR7r5JRwhQ6oPtMA2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4QHJoi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4QHJoi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA93C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790271633;
	bh=jKnWxKcqGA60/2KSdSndhuDvssDAXaeYlOelHENZEqU=;
	h=To:Subject:From:Date:From;
	b=U4QHJoi1eJcY24/ZigLo32AEizOe/muWjxP4jtcl16rGKN7qLGtyueQzMvnScWvrJ
	 zhNH+6vTCbDQnpgCf4WpksOspW+Bj5lqdwiWmxZVFNRVmTXJ3Khth9cEwXGJbjsT3D
	 8zTrSw0uoqlA1/tp1YaNYxoKpewG2WrP7eLnYeNWC2VwHIbX3CgdE/MFTjcM1Dnge7
	 z9t6oQX4M4HQeJH0f8JGOtU+ym0GWCTYYNiJH7TjzWTJEVIG5Fr0166evwLBdusPqR
	 LpzVQXsd1rpPZLcN+vpemktXjZDDYFfTlF2cOK05EZvYYzcTgxtZLZUBXbQSwjc8Er
	 7yETws30DfWig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EE6C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027163373.547.5610935450788939255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46df7a3e4ee66d9819f9ac599ab755f73d73ff845a7c8aa555dd189a4aac75d5
Date: Thu, 24 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790271633
