Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E994346FCF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768898034; cv=none; b=KC3wR7BDEVqhW6iNlunmJB/o1kuNvYBGXrmMsA67WbAiCDnROya2ySrA0RpVPof+IaNOxfnTv4nkLdUWF80B1MWVjQOsMan44zslPP7WTnfkKwZLqx7/TjM8X5Gb5h0iIJppR3R1P1jjSjRfeAfhiN9k7Yw5tPc/k8SZVwpe1VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768898034; c=relaxed/simple;
	bh=IvgvBjgWpPlj42wcAc+rvWp0rV12SY8k7iu6l+Lhs1k=;
	h=To:Subject:From:Message-Id:Date; b=E1CSFASInauntEItIeRO/g4Ppg0gTkXNyvjCaxpODmsPhuHHQN8oWhELBj/og/+nr2FMFAQ/00ymHH5NV/G0xROzmf6pXC7o2xH6ypKMnLGk6hi6lNi8WCGcp12a9fsCrLM/RFD+djiHs4PIbNDphD7nW6CsV2vzOQ+mGxXHMLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V25Dx75E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V25Dx75E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A28C19424
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768898033;
	bh=IvgvBjgWpPlj42wcAc+rvWp0rV12SY8k7iu6l+Lhs1k=;
	h=To:Subject:From:Date:From;
	b=V25Dx75EWmqAI2MRIlsYf+QfZsLPiCGQhxGL//sgkY7i+z3HjtaEaYvqDM9z53TlC
	 YawZBNoA44cTF/eHayctqySLq8VQlf5A3SSN/qC/6yQREtZTiG+VIqE6MUJ18BWNm0
	 zBTgmnXh2zdzy+Kustx9ZHnnz60Z0sQjPzaqIRpNr8ItEjdLXfQjhVsq4ROYsN/Eys
	 YNGu3k5FQDag6d1Z1IgKE2a/n0ZzKr/h1vyvSTGflqNGXh+WWsTYLgo/vrzRbzsCFY
	 ramWFhydP1vJ4v/YyUEMiSXnsgWRNfqaJjuK6nQ9hYvqCKyfRTQenouqtzYcpPNPPe
	 6CwRGMtQazzzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9633CD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889803360.31442.13751205152135814949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6f4c0f14011d39c8733c53e6d1545e3d831b0f58a697fb0028717b41cdb9c2
Date: Tue, 20 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768898033
