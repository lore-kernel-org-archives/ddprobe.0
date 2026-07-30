Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D036331EDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785390634; cv=none; b=SJFtiyxrZyFqU+NmnG4bGVvmgjVrCkA3heutGxMpmAqXZ/lSpg8Wjqj7GjI1zB1Qbilp6VN6zNZEMIF+uO5QwRqiizCY2gyxBW0D/W+JZYcp3DWjnrD3/4alw7m8O0Ul51W62bz5K57u+OwkL/cFvpLBUIts7lxP/kBeXdHm4+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785390634; c=relaxed/simple;
	bh=M9y6eXLz4m29VgdHrACgPuhMvyCMS7pR7V87Nz0tUOE=;
	h=To:Subject:From:Message-Id:Date; b=KuHTblJwezI7bBPT9/FhpVn3058it7DZLBwC59g9xqE5p+ZTPO3sCG1eqZzFfEo1kZh+O4VAXD9uQ8IM+FSyJOxjozmiK1LymdW+XSBj3Tbwzxlq+HluUKxJZYgiD7ult+V870QoLDDqPuUulYoFaOXMqttWgWnmEX6QQE67Baw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtrIbAgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtrIbAgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFC0C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785390633;
	bh=M9y6eXLz4m29VgdHrACgPuhMvyCMS7pR7V87Nz0tUOE=;
	h=To:Subject:From:Date:From;
	b=UtrIbAgI1SXebT8Py1xvJZ2pxNL8v2Ag6dPMS4ZvnF/WIfcKxCdSHVkJ57pPmTBdz
	 e4z8hSUlE/fTQAnfm9rptwF71bzkzG6VWx81cZaMILTCgfIJniVUv1L3WNxe1D+mCN
	 SIaLF3okoBekxnY8BpxAz7OMrPHdxQ7niBBQflCkq0Nc6cujebUBqwzh7OX5ex6K6V
	 v3I+igAvWB0JX88ROVL9AJbh207pFH6iIqLTNM1wIC9S7y4vNDsk1e4STUYbklHbsH
	 BEDK4i2XsEqAHiY1MUDzPKEbshmzXP6ssa9Nphmj+0INaSLaZ9aLmQr7mY5eOl6J7e
	 MEPG1iHhn0FUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C4EC531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539063368.9409.11627428526020125450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd866713942af175aa16e372ceb0796d40ddc29a517c29d92b8e63ff9e0d6084
Date: Thu, 30 Jul 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785390633
