Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D3837AA8A
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777544854; cv=none; b=ZjZ61hSnlpTGO04RN1dBn4SutQQpq5MGIGOsOTL26OJM35+2vSVjx8t8Ug1wTI7Ytkuqt714SqL0ZXg2WoILXOx61n6+asi66GhWBfw/qhRK8FMPFTfIZrzey7j4C7395ELGoFopYGKaNOvandp6IIPiODoLPA8gEqi2xjFlPWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777544854; c=relaxed/simple;
	bh=4hLR6YLQWGC7lzdmgEU/EXpNx1yUCGZ+05rNTivOMdk=;
	h=To:Subject:From:Message-Id:Date; b=MO4nUKNH7z/5+yxRGPOyZPS3CWSU564or0XdhGacbWKkEvlR3jybTidijGTHyEony+pfcrCZS9GXOrqp438tDILC4g0dZg0WFSWL0ecdZgWEL2xZfGqhpN7oEmV09fqlIoD1wf0c51iW/UR+dZLlubcv9IP4qK3RTISwxOGgUb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igQIyY1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igQIyY1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD97C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777544853;
	bh=4hLR6YLQWGC7lzdmgEU/EXpNx1yUCGZ+05rNTivOMdk=;
	h=To:Subject:From:Date:From;
	b=igQIyY1Wi7dJ55lWQ9ODti/mmd8wi4f0QorFFxALrR+SlAO+ck4zLj7XodTmGuNNd
	 G5S9lpAk2NM7Q0cKrsqHt5luXzTRjfy9zPaizOUlbfYz+cVt60pPpo/IUcIgqleaIh
	 IJnYgBtQa7X6cILEzot82qcOVK/rcZx+O8wM2WFpqRb02ZzEkSJQofH1yNqtQpKnUn
	 GzEk34uNla1z4RtG+9/DjHnB2pKdD4X69K4PkNeCwKiCB/zYp/T6L9QSMWcZVqbsWa
	 qoOtPV4j9KrYu1y9TICpJf/quFekff3FrRgfoZaM+FRoLGWfDprBjDQWrpgfad4zE6
	 egA7BWQn+Kr7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA39DFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754485368.17170.3376109295122702187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3edb811702a3c63999cfc7cd85a5308f4d9a73eebc928ef24115e0efd5f98f8
Date: Thu, 30 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777544853
