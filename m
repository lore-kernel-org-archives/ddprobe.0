Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1854C65
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717846643; cv=none; b=LZnz083iBJ3LOjKqx7JfYQk72ELG+j7Kj/JPNCQAEn/nQHLtC/lghql7Az0oxB79YMx/aVGlOzHj3WBCLz0ZlI5W4I22eZkfXK2QSHfneheOeIprlngapk2vaI8hJQDYQ1YriL6l5bPJeA61nbkUuabXiOJbWA3hP9AGT4TynSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717846643; c=relaxed/simple;
	bh=YQgDRzKtrXpHhr/kuzJkl/sljYIFFmHcHC+DDYmiIR8=;
	h=To:Subject:From:Message-Id:Date; b=Udrgja8UHSAsfNm5Hf8WCPMOcxMJGSQv2FawxvdHBkN4LU05aDNEysOpyhX+iC7axYHwBjsKApddMP/lW1685Ff1EWKBEyBSuTcqK6wtDBqPLqBl9XprSpPsiNKMBOclw6vJpwXKI6bxfPNEtmubFbZtVUgL9l8sK7R5deBETLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2va6PGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2va6PGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F36C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717846642;
	bh=YQgDRzKtrXpHhr/kuzJkl/sljYIFFmHcHC+DDYmiIR8=;
	h=To:Subject:From:Date:From;
	b=C2va6PGriLhbuYFosEZm18M/smelWIa8XlbfMJC2halUUsOrAI4CeaFREz3meLlOC
	 wRqsY3QLqKVx5FcXL/ypEue5sXuF/LmssU7XpgTHYcMdSt5D2MNj/DrNh8LZRzHWOu
	 V6IgSatKOtMfnT5eeW/6RdZgLWGDzkfXamMLksTtD56ACM4swxodfSFM3Hj6IwlNMG
	 2ajGGLVY4CJ/JL8W9bAKpQa28zgYM717O1Sc9F1G1Nu5O8/H8IGLGywJfXZiYhJq4p
	 SgWtPULxfdG/xvMXmbuL3uhcsPwUD7CSBfqUcylCwbGcKjMfQJvlJqOX8Ru61Te6bu
	 SRso+8Y7CZhJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCEAEC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784664278.9808.12227598059437131312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87418fd19bb80592f350002a584da1feef5292f0c23278b6bc74ce3f23b03c3d
Date: Sat, 08 Jun 2024 11:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717846642
