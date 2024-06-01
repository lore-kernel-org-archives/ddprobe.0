Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4E712E48
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717222463; cv=none; b=qUQHxjKLkbC8pNZfruRw1BzzmQfV3gtXlIAlMMP7CHL5YsuXEy0ZknL1W08Wdhb5OCP03Bje6k8fETseUaFM+72D4ahHjZbWMwC42L/UihhSgoFo0FwpddslxjWUHhljPe5Lag4nvJ1Y9HDIi27f6ad2y1Ucdi0TgKO2zmCuqiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717222463; c=relaxed/simple;
	bh=pdwBuPzi5dTC2i8hZzVTgPpNXNmIyRZsS7dpXoj2s1k=;
	h=To:Subject:From:Message-Id:Date; b=eedxS/pdQDtxZZ6myeTG6ARohCa4UjnsGMc6N/CyU2+shPVsYnjUufgYO2OtxvTncor4TayFNf3K2COeaKzwdrZhmYKZqdRVruzud8jFtz9+ofA9yBgubKKg8tP6IPxsbQjDgvb8E2zh3XuN6Hwbhif/bwbd+zay7CCC6To4p7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sd3c4fa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sd3c4fa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01A8DC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717222463;
	bh=pdwBuPzi5dTC2i8hZzVTgPpNXNmIyRZsS7dpXoj2s1k=;
	h=To:Subject:From:Date:From;
	b=Sd3c4fa3ap9GtC0b9Sudj+kvhZUkYr+Rassov7nauafc4dlqlUqXnVyvycX8CtpHP
	 AYtX/yZwT8Z3dH9irlqs7iNRT19xHSjw6ZjMDT8MGnraG4DEKyaWSeC7cuxSlnsUHq
	 b3vDatmh3nHyZuYRALGOimJYBJb6fbkQeHI58Dbz5RNdP55AeuBONNFDn9brlYtvC7
	 cOX6XJ4iiprUQx7+GzI3IEy4Gz1Z0ezlPxY47fpzpRMJ7jvtCo6/TURONuRiQaA67K
	 MRH2VBSOhmKMlXZbScC1h/EBiSAl+wFIrVK/eMfl0+Y6gyp2gxrZPDzFoct17xhmtS
	 siGTUqjkldKhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8F0C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722246282.24801.12012935909854707304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e8973a121cba8d703d3be78a0a71b01f291d02a636bbef1d60313dc4a0927e
Date: Sat, 01 Jun 2024 06:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717222462
