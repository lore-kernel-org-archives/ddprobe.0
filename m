Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9A2D531
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766957034; cv=none; b=vCi1ytTktsw88Za9Skl+62K/Ed8PNIZI+tWFhiNiMDFP7eGl9qwaIx680sEsMANcuU2RA3QDS/zieaorViW0uYuB3jp3kU08tetioRkhZnTf5FvA+Q661Rlr+yX4LTMI8+wdhlZ+Tq4qb/h9oLMHjL8QcgcNWaM0NRkvTgMhITc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766957034; c=relaxed/simple;
	bh=aWkAdpFcZbgGfwqlUcEsIlKgP1BiIowldPG2eJJF5K4=;
	h=To:Subject:From:Message-Id:Date; b=IOmbTqoAtoKP089Klcio9/geBW8bCgF+zsMhEDgcdlcmZfUhCysNVxJvVPTPP88shLM98MPJc3hMx0hbBd4798Lpd4YXc1PZyzhhRNu6Jdey7ojoh/R3+39dAjiGeHTnoXWRlEgntLmd3Ws+sOXTrqDsv7LGsixBScD4kK+B/Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOtxHHoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOtxHHoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67ABC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766957033;
	bh=aWkAdpFcZbgGfwqlUcEsIlKgP1BiIowldPG2eJJF5K4=;
	h=To:Subject:From:Date:From;
	b=vOtxHHoGAZodidsFK0oDKyrubGKNM48LtzdOag0nCSaAG0qmcPTsxg9N0PfWpjGbI
	 JoV+Vwd3Ne5VhJRyqRa+0KByZZa81VFIaQrniCAqYOyf9ZzE6d7VQ58TE70K1l38QK
	 NKG8Da2UXGTcyQxVX2dFesXinBHG06id82NqH4bSHSmPgGgIlRCswZrB+Xqum0SMbi
	 5tLJtI9S+1T1tD80lHPuBeA10w3AVh2I95vd0HYAWJuzU3mIKlhqXC6Y3hCODm7r4i
	 IM+V+AeoZ1BuSU3tJQjFtAi/CpglGctJJcrjtV8GRk05sZg/o0u6jk44gbUwv7qnYZ
	 qjtOMb7XtDZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EEFE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695703364.18445.15242140415904781769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9a92a4d06598f761e4b0835f57a0497800bf9d905c591d5968cb21adb64d54
Date: Sun, 28 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766957033
