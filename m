Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9F92F8EB8
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778260654; cv=none; b=uzJ0LjpF2Itw3MzOM1cGmwW7sLqAyQqSrFMInGj+jGN8KirYlAX3QliYXRC+IrYXu3KIawfiqlDZsNEe9wg6l3ScqvGUnAXiCAOgDCzGBz9c7hYIC9wtXlkH+mfOq3mwQxjWInpi79vVoa5PBN377DMieH8aySI7QMvsi0sbRDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778260654; c=relaxed/simple;
	bh=QtReb5xLQEKuEdTOr1x+AfTd7cIO+gEN1O3TGaORS5g=;
	h=To:Subject:From:Message-Id:Date; b=uHOJQcYKBiKHpNoPVGux7sm6/APRsBjdht3MutZeRDzP7xJ6koCxrjEBmqrsREiiObqW4NlDNrYdMdC935Q5b5SRKpVbrB+MqvogyDP+0b6f36ilJn84X2+vPPfgCDyR9OwuwJW/Jo3sI1bA/u4brog1pOxMvNNu9Z1Etb7m5HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=galJp5UO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="galJp5UO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE753C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778260653;
	bh=QtReb5xLQEKuEdTOr1x+AfTd7cIO+gEN1O3TGaORS5g=;
	h=To:Subject:From:Date:From;
	b=galJp5UOlLmd5gjYuRDpFq85vy16Q7kuE4dZ5LRhsbjSE+CgjGZQ9OgbQFHLTl+AL
	 f7oMmw5s4zXI5tLXa0KGxQjHS0bg/qPybwXj5B5YWMl97MEpONZQh/+htFuIM4kQ+Q
	 gv5l2IL6d7+k5wcaKcD9dNw6z1jqSeX4IY/HQbSaYF/A9cLjr7NoVDwJF5lxYn2EC7
	 4V+tyV1LpZFC1iC4z7OEJ/40IsvusydRWZKgorgh9e6Uw+MnCL52EhVekre0VtoLw4
	 B5/eFfFDmOpk9tVMOm/9CrQsJL7niGVhPo+5rWhKPKZ3r15eeAvOGiS9CtvchWZOfJ
	 fS5YIggaKO2bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA36ECD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826065368.19497.524589191202894984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08fad5463ee887be96e40b42c4697a123f5fc5c5dce44f5ffa1cc6a93de47e0
Date: Fri, 08 May 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778260653
