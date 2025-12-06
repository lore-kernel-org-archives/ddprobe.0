Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123401AAE28
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764996174; cv=none; b=r6us6iJj0trDlLt4uR152Feu9WTYJrgN6ei93vl2w+/xaGILFDvTdjsZ2TRyL8hTbbufnqYxl3iKOQClrxIYQM1wia42Y+Y8S06G+NdSbV3PPhqdvROWVzaGsTwC7v6V/0oV54b9lPjFX0s0VFCrJtoKc2TM5L90Hv85FTXei6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764996174; c=relaxed/simple;
	bh=PtF/vyYxcvnFt2jzBkcTRrmHv9rGbN/PkPJBbgciwc4=;
	h=To:Subject:From:Message-Id:Date; b=KX27naGVKqyb86e9WVkmXu/FfH5MUDhHMl0u3UvxRTfrY5OcywtLAFieG1t9dua+uGQHuB9Gnq8+VAqbzxXwQSODo2jgnAAhxXdtfBIj8KGrZuDZPruLDz1iY9Gh3/M2Ju8DoaZdgYsRJ0zT180g1qcHfZqdzvSo/vJkhA6naBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYsNOcOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYsNOcOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F2FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764996173;
	bh=PtF/vyYxcvnFt2jzBkcTRrmHv9rGbN/PkPJBbgciwc4=;
	h=To:Subject:From:Date:From;
	b=LYsNOcOCKf1l+t9b+KiXoMmLfpS8UpKxWMAPfZOc6SGf92l4rx86ZrC73OPt4J2wv
	 Ii8r3T3Ces/AkZqd9HJz+8XxAQT28RbL9Y7TjRrVnZZP2trGFR065IDVFJUBYbBFmI
	 +8sokFYTo6wMa0QA/dYiNS6El7xS+iwnMzx8gaig2Qbb2dhCxwyn+zBA1hFF44WF5i
	 hNjT9aeatQoHoIVAvb3eX9av939z5xU+rB92LrkbawuO38UDxpHvSsC5EOjqgxgmrd
	 dSSCO5S3aljb+YgI+422hSIq9pO/yul0FU1uW/FGuIGXEjNFtdtDzIMfZW525qKODS
	 QnDOQdGhUFBPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98080D3ABF6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499617358.6156.13088787149780452345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15180e3aa4f5d006927170f0ac4829284a1a9e5d48fbdd861feb9905594aea0b
Date: Sat, 06 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764996173
