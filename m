Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEC035A3B1
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785057034; cv=none; b=EYdMTK8B37b9SQG+SX0wtbhVwVsIOkUfke0AQtC2H/8sIxlpqbgFlukirVnDPD5RFDvJkMI0FWUcDhAkbdwuIFMuGVTuawmDPt8jApLZVOGhuxCaTJOzaFcnB+3jV8bRLMJz6jmZMkTmz8EBjdjC8rgvzZJgCx0Og2/R6lj5C3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785057034; c=relaxed/simple;
	bh=SpoEyh+cZch/AJvJD6JQzOwC9OBcacRgqhWRvSaeU2U=;
	h=To:Subject:From:Message-Id:Date; b=JTZdhBpY63eXJQe9enlSQ+giQ73bVqUDWB8j6w1ptQRaJYPcACfDiSxE34SRH5kQm6kzIZcCDbxQKxncD5T+8cBaU2aVUypvRGqJc6OeVIOiqFf5+h3hOBMt2ABumGC49ZcrBkpVULIZt4GEu0+4Z/Jz/DokIdO38Lr+nZgiHyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sO9DNkoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sO9DNkoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB21DC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785057033;
	bh=SpoEyh+cZch/AJvJD6JQzOwC9OBcacRgqhWRvSaeU2U=;
	h=To:Subject:From:Date:From;
	b=sO9DNkoaE+RZYgS5k94Pw9WR7D8ytjRy6OmtaSM0BZ2278ysQsIz+r1q/6wLRgKY/
	 Ebzx+h6MzCe8qgI8qXkw9NIaTW3AoOQ6J3+/4kjYgg3Nl0lcTMwffGRDLB3aic78rs
	 dXSfbxnZxpgb6leQiMmhJrxPuJ4p+9VueONCEtWoQoddywtSzVaE70gCXiEIeUN3rj
	 5xix3izf59mp++Z6apQGrnWEe4AIZwAs7CJ/ZgBk3Lc0nOq0pKAZldbXJKcF+4PYfT
	 MKThPDoDIoCDI+PJVW1ztCHTn4STJ++vRqWBAf2HYInFoXti50GMZWO+Wf9RI2OzyE
	 vShShlP4kHrsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8314C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505703368.9111.17737472738462788101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2f55c671cfa39fe12d04afec7d9e6f88bf6ac84504938a9ef2a55eed9e1353
Date: Sun, 26 Jul 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785057033
