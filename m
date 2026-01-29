Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391B02D7D2F
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769664234; cv=none; b=dmOQNAQm2Ync1TWQRTeeTtTyai9tGE9gikGQTDlrCaO4wnGtZW+f+OYusIDvkkehxthvjK9lWFRlNj+4/qK5MiCzobQy2vRwvZZsH3i0aiPKU2JAne2v9aPtTQxk4O78VZJkqz0FJno2Pt1efM52bQWx6A+C+qA9flSi+VzM7uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769664234; c=relaxed/simple;
	bh=N+MndpLJGdEIwA0nli2NzP0lMOoUqu9mzxn58dqV8GA=;
	h=To:Subject:From:Message-Id:Date; b=B1X3IN0uJk6EoFrTFE6B5REpcgdamya5DGaQCwEoLQneiBBC2/EKRav87MP60OPgO1Zpf3HaOvh149p2Ciok7VmJqAXfPLEXf+2IrqrasKJi4eKdCXpRmQbhVhOld4SgfdUUOfEQAAPn25p1+u2bTq8SYMJtZghnP+QBwo/OUgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPqK4LTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPqK4LTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE482C19422
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769664233;
	bh=N+MndpLJGdEIwA0nli2NzP0lMOoUqu9mzxn58dqV8GA=;
	h=To:Subject:From:Date:From;
	b=EPqK4LTxoWlxg0wljcpH8rcRyB5znJ+2/s/3Derk16ZkFKYwYcI5k/fWJObyTRnBx
	 N3jT4CDn3XYm6lyo/tcJLwFku9LkV3iggfeOzOYGCJDSDhW5vh878aRoBUSG/rI1I9
	 EHhaXd8XEBeAZP+Oy2BbtT8zurp/6BXSTYhWq/yiiVXP+bN7D+ad9DH+QIhvPVIYEx
	 ewhHfoUX1Rj2lAbk8XMEBAjtvPt5ORNGyqcGkMu43BiPSIKOSR2LgL1Pi0X7fBxi7S
	 ho62LpplXOpuQ5GSKIiuVZf1Xu9P8/8RBYypssZ3L8lL4SRgaoxwGayg+eeIJrSoni
	 qtGyI4pQiBKYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A3ED3F083
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966423357.26990.870026180845455305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2dce20fa7c85a2da2f10f75e9c560c5529d60d913705ffc42d3b8f8eacdefe7
Date: Thu, 29 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769664233
