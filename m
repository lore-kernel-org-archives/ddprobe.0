Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609AB1171C
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718736563; cv=none; b=L4WQMLnEaKuuSf2XZAW262jKRW4tiz1/Cu9UXgWv0XHcG7CO15hvyvlPZvyMQ5qGhMu1muRKzxVGxQu2wJHUlrY5XPhlLtltas3z6i5uBNJa/QxIaYiwl2NlNAjkDC0JlDqzqIBhAIDqhSYVUle6d4ZtFQ74WSiG6nlQX57wb5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718736563; c=relaxed/simple;
	bh=RD1tUlUOlMM1LW7JlJr0lvn3iEH1LKVmBrN0uL2RpjM=;
	h=To:Subject:From:Message-Id:Date; b=LOXO1GVi1aGJ6cK9pXEl642tVVvou9SS9w7s4nbOPpS0by0L0zFuxIP5EnljztlPi6E+YLrTbdR4yIp+30v3WF25EHbs6+ik8xzyctAgnoxpgC7Pqti9oUXjM3uq/r+5peynAcIXBYMykaygPL70UE2aeyYpOjHg4LU2qsMzuR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqYOExUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqYOExUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7577C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718736562;
	bh=RD1tUlUOlMM1LW7JlJr0lvn3iEH1LKVmBrN0uL2RpjM=;
	h=To:Subject:From:Date:From;
	b=UqYOExUhAKzdz0tQNcXpUORGZuI7eu9F4azcLlRXCvn/znSp8BhleBxvCegFYvozV
	 OTCZDGS6dWp2CuTKX41zZgvj0/sY5jZy3EBm7A9qnV2cW/VZwTeNOyCGqR59PPHMIp
	 EmucHl0TsthyAyuc3Oblqp9xui7ZYiO6vhRHZn8o9dxLi6s/YMj+5s8nZg2mvqHz1+
	 7+gR/Wo8qt7w2TSFmvevLlW7JMZU5FzA8In03n48trYFBYappi8ns90nGEQeqzkIt2
	 o3s6D1Kl1sn6PPHZk36bM9PtUXlAyJ01PjmjoCWc/ib92QraaTDi6/F5+p40ZGRORo
	 cHoeAsy5oTJOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A87C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873656278.16939.17920485563023843044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32c32cec8ce8913f22cb8a79f9e318df8c02866372c63df62154963a4a9f1bf
Date: Tue, 18 Jun 2024 18:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718736562
