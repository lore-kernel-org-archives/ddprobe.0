Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E47D4EB50
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736297754; cv=none; b=SjfsZ5Wei/sDqfIccK0mm1Ig5uvjQs1io3iQ3gqszJ9HfLt+Vx85ofnyotDWaEqnzZRdEML1LjUvL8K1aHol342krRh5QOkpwZFo3Dq84YAG/64htcSZ35dIoRe8H67rjejH1RX8Vf6rz5tb9D+gPPl8a79RLDhwMV1tP9k4n3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736297754; c=relaxed/simple;
	bh=sqXgVMb/0bPI234EbWvAEYcUqmxKqv/eu/LhsTMLeRc=;
	h=To:Subject:From:Message-Id:Date; b=epN8I9JyqYyNeccNriduGJ4hp5k1dEY451MAiUmTAqYRJn+ZNyNB64UXjI7fasNqjdeH6au9+jGe+XqaKRWQvneMhxjq9UlMwUkchaA/R1qxJ9SrJwUuk6gnGPL7M1pD1SG6dmMAiETv0ZPgsedRkGlnXd0Kte3UuWE8nxP8hgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi8ZNmx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi8ZNmx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F16AC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736297753;
	bh=sqXgVMb/0bPI234EbWvAEYcUqmxKqv/eu/LhsTMLeRc=;
	h=To:Subject:From:Date:From;
	b=Zi8ZNmx3rhkncXYqhdMhv6zk8iGUDdZtoZ6foQ8uqHW/CypW9SEJUImltXpLAs1ns
	 hTOc2O/Brfzvdb+tbdYU3LrUcPqNCfgtgWF8u+74kUSs88d1dahA0C3m/EHh+i9mlU
	 +ArhFS/OVu6/Qf0NsTk7d3YYeVF/ZBXwaAwrzxYeJjzQIwWKa+Fi8OZRP56QBbw5Lm
	 yPyq24XtGKcWBuw8ozVTK5F/dCQ5m0gTfO55wx5Q1sfd+5Y9u54vyh/9q9bv9LbpQC
	 fPFi4qI4lUJXmcvALuo9U3NDgB44M8hiB7ghF0aLFgPMkFH9T+0mIZjYW6u5IHt4Y2
	 3L2BWI//W8row==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90380E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629775358.23398.2309593551497250539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c41112e2d56c489abf7a412537c12101fa9cd14090672552834737089d1791c4
Date: Wed, 08 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736297753
