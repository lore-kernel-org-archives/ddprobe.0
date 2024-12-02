Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FE91F9F63
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733131554; cv=none; b=AJtUr4QsgHha5YUeFdfWKQpldqjvn1xQr4er/0jyXy5iTCmZt7q//nUXfMofY74go8JzwGtKbM4dErdpL+h0jNhkaWGLSgIDMW1kZ5fVddggiQJVqN4HP/hyTC2GUcZYmV9821mnELtQtTIb0qXmL7yJaYBBIFbzVd3ICIF0YUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733131554; c=relaxed/simple;
	bh=38snfcypQK5YOaPNAoGkofVWxLHcABO9oaSIMsJw+wo=;
	h=To:Subject:From:Message-Id:Date; b=fcNk+mr+LeL6E6vyIseOt8FmahhjmApN+hznnBbMLcJH33BAeND09C9o1Cu+G4uEkhPB1ueA+cnvXT4jbmwApzaVKu+/eVNa4hRMGGCbkOtMxFUZMhHylk9/sOwApby8jaZ52J6vMX+JR2sz44BN1YhzsWU5NqVktUsJ3hW3lO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUQl71Mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUQl71Mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2867C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733131553;
	bh=38snfcypQK5YOaPNAoGkofVWxLHcABO9oaSIMsJw+wo=;
	h=To:Subject:From:Date:From;
	b=gUQl71Mqxal87WJg7qorVb3uY70QjS15J7lggLuCCnC8IhoSz0y+YD0ygzANjdNkA
	 6QbpgXaGEyYlmM/l31EQlLMizdlFs62ukj7dSNOso2MfRWiNMTFnXACma5xtkHX19t
	 aIa+ZDtWTRx3kfCU4HYARtjkK8Rq4kVJe2p0P5fUpVgJ1GFbiPsN/AwzT8UGkll8h7
	 UcHW4b2fBMw6my8qupRxe060y7ZVzsEQ49UBjzN5JEnFPFuYOEBaJ7AlrvZLWxXc8z
	 dFbUhUHE/u71hrHgROO0UfvidGxAALQiCMLW9DjK/ioPg14x5a1Q47+Zd+M5Oo7Bwh
	 NHPgiaCOra07A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA45D10DDD
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173313155364.23183.15759059358318391412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61e840b2d50c8a65f4f9ec8bec2ed25581c5173bf578fb266c51bccdf82ba56
Date: Mon, 02 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733131553
