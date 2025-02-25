Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F592571C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740455334; cv=none; b=hyX9MiPoDgWb/hEleECTL3Uy5NDVngskDRdHjGbjAhHJZN47f/jvMexiCAokmKUG7EQB2DYYzULTSnlcdBHi1UygulQBi/vfhJaTOAM6Q7pwML0njJN12nlLd8fYTOOJtyATHnnHHAwzwDMSbtjnRfb7yF+pDEFtCSH8oQs9SHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740455334; c=relaxed/simple;
	bh=6sLpb7rY3XZmewCKj4CqNCp9drO3m8kIZxA9f2NiXgU=;
	h=To:Subject:From:Message-Id:Date; b=X+aN6Ib05cVtTazDfxWLzuj0swGVSiBxVrzRP7NoJYlcmSs2PaTtu5hW5g31k1S7G8EO365/b8tAiq8XMmdm1VBcFtbWdYGBIwgZ46zRYDlbDZIogJEOTRX+9OqrWghDk6w8aljsXewGukC5rqSopdW93PJx80cjz1zPGDWgLtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4slGNCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4slGNCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B155BC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740455333;
	bh=6sLpb7rY3XZmewCKj4CqNCp9drO3m8kIZxA9f2NiXgU=;
	h=To:Subject:From:Date:From;
	b=G4slGNCmswyj66VLbWNFVgF40025ROjjZgiM8lzyyTW0LyAuXYWEqftQctiy912rm
	 ARjUGeytG+poL4HUEXcK1iSq0eooa0uOTeOVjH+dNAwFENDj3kWvqhrm5OH/Hq777/
	 PtFdGkIj6obK2gVuwtg19OcH4mUjcRgoZBEC3r7M4pifS3BFRwuw9zVt2Wfz+8k48p
	 5PdfDHp/q+3vcy3A7yXgxdgW8CZvo4qSuD8EDGhRa8Xbo9EKJ+3Ccr+edi7yPKp4gA
	 Pj5R6JPvVVf/MQevZmnEyHwZPmqsHbnqK1IGKAMM+y/n1hgvy+v8PHC4A1bB4e4/hX
	 pbKMti1f0jTAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F85C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174045533360.21238.4802697398120417370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1ab217da922e3e17971dedf38361193873e22f7f1d9e0bc8cdca0a2583383a
Date: Tue, 25 Feb 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740455333
