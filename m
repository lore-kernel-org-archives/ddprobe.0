Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB0B38A73F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783082914; cv=none; b=IMkqLM1LnjIBrs/HsoKI/Wtp+RamzTPfRBstwEbkLtkcxWAhP+3Djd4BfOb1Sq8bn75z4fX+/6cAWNVb023QzsZhMpvl69tMlHXm4cVAhr7X2NngwXtx8dr2BsUwWZnOrvo0kIPApdpJx0sn2gGhT3/j0AEP93oXd+fbgyFqQXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783082914; c=relaxed/simple;
	bh=xM2HCGC0DeK54U/pD3MGBeD5Oz4MFQ+tsjAwUvl00JM=;
	h=To:Subject:From:Message-Id:Date; b=OZa//jzKU2q2AezZPg2grdiwTTe67iZBFtFalHptPoIRsbzJZZvqUFYiFq5PiV2u6I3TplMyQpwIM5HDK+kSnkDQ76i4YCcSV3SOFKrYpo+YDNiMeT39O+no2CYsnyzCN12vuIBaEvN2ATqn31+e/dr7WzajecIT+M6u/0qkrr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHYcTeWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHYcTeWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CE4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783082913;
	bh=xM2HCGC0DeK54U/pD3MGBeD5Oz4MFQ+tsjAwUvl00JM=;
	h=To:Subject:From:Date:From;
	b=WHYcTeWT4W0pYR18c2WtB2fWaU6c11piz3hu56kfk3AegQJZzV5JCe2AwO0pwOf8V
	 76BN7QrksJjBZwDhQv9b/uMFqv9Ie8sgf4kJ1Fk9PnAA0lxjnfnNYqFLVLfkImtu5R
	 Z+KiUmT1ZVSL0GV2SZxD+6NJpdmpWSq0hG+aZtdBL9na3NnX8ISw2vo79VFz0v1Vy6
	 v/Txh9ZubUfLDcwkSEo0jq+BBKtUoyMoN9QKpGGBuCJbFR4wZs5DgZRcB+wZjjEW1r
	 4NhAWUAl6/9OcqxAR0CxjUD/JZBmqA4rzSQa5Rk8kV6Ky9PYlrfpKnDG0NqSVT/QCd
	 TJbYAhidre/Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DD6C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308291368.21562.3613953057524001402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f75d4e517390560ca4cbbf6554acc998eb731f919c7b7e6a781b3c8c71a3279
Date: Fri, 03 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783082913
