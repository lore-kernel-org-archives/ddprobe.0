Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2646EA31
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728234354; cv=none; b=CrX5JrQ/nUztpLFJcQ9hGxoJ30+JwJlrZwKuGE/TknVReK5rxkihmij3+yYD6xepwaixk26XVsNCYe+CyF7xpGSrS5jfAMGdHOwFlIukR+26mC/CpJ0WfNMgEWPXrr9PcGelNTFB/+v9KivGtn08WgpNqFRjpaBbIuM6amHS2Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728234354; c=relaxed/simple;
	bh=onUrtGYffVhPfDZ5M9eNkiIBzWLcTUc8nqP1j8z50zk=;
	h=To:Subject:From:Message-Id:Date; b=J9BxE6pUfPiekinNwfwAjdVSDDPhkvBVZ61BghR/snZd6rrdWxUhdKzKINVv3etaoUpnwUgPgmYJblQRziUAr5q8YXicBTT0olHDrGkq3Z4NSe65K4UxYJAjX9IDH12cE+2YEJqxdTe7ktf1MVeM1E7NOyu3/YrdPvoKPwueLgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVC/7Pvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVC/7Pvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2804C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728234353;
	bh=onUrtGYffVhPfDZ5M9eNkiIBzWLcTUc8nqP1j8z50zk=;
	h=To:Subject:From:Date:From;
	b=TVC/7Pvqo8NGfx6tsKMrTu1kF0V77/i6oG4cvooDeszzaxudfq7WHIKw6oIeB7V3l
	 76wYegM3JRGfCYg/N2huPc98hXaWpzEpeOr9CaErD11yRfV0kzavPiGdoLAp7848Yx
	 H2AgCsK6o8Nnp3KypC0bUc4oJ+Eh6+J7L5TsXL4ViiqMKc6XEY2lF9L6mM70W25cmD
	 UxO142C+bz2UHCbtO3fou6r1WvWKnHWNo0YgmHBaQpF0taIDzZUhlDX7KFeusq5vO2
	 RdzNaTFzSwT5pkGGJ5qECcSW3bqjsMX5T7dwfJ23NNEKqKnMUq6zN3lwg0bIy1zI7R
	 rn6n1mxxhwwvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0998CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823435361.13009.2106040399803959582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d03ff5bbd48b2ded954d52dd108988fb1a1d06801fbac84ea70b27a1bbd51d3
Date: Sun, 06 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728234353
