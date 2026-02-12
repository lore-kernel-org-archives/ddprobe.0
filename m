Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46D71531E8
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770867294; cv=none; b=kJBcS+ROzGDsFpuloEdCBNMPRLm4nM8hfDJBVBc6Vl+FFYKXuXM9GSLf32gmEsjbuAnMif/W0cT/bEeq+GhRhFRNVV5Kvc0eYBmJ3hMaHiyCoJX9Mx2iW/EZ0AeFCz1oaAiv1547NI2uexUZxJKhsWIQILPZvDPGfh5X6OrpXV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770867294; c=relaxed/simple;
	bh=CvldT9tMnwfdaHtxEQiufnh70OOG5tW01Lc1nTJJjdo=;
	h=To:Subject:From:Message-Id:Date; b=da8tPUHE9jxZKKEJOXUxi4I1RdesFbHpFyPW2sAHST8ewWfBByapCcCUecUDoaOvWLJqLMwo7VEP0UXOV2HYjNbBM39Z8dzB8Jq+I2i1R5nGiY2ANbIFmHc7aPZsIY1dug6o/C5Vbl/Pk8F/6ajyMVtDAWoDAQjvF+B9KLOITNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srxLXCBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srxLXCBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5449C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770867293;
	bh=CvldT9tMnwfdaHtxEQiufnh70OOG5tW01Lc1nTJJjdo=;
	h=To:Subject:From:Date:From;
	b=srxLXCBdCf7QjuhxXe2aD47AqjtUhhbCOk/YCs2+8d9bpG5kccuu8043XBrtkGMPK
	 s6fKORZifyLaqPcxIllr/rDI5K85k8rBoxgZnoK/ksIvIQhpuZeUxNhMPA2ZDxFVBn
	 BNSi81DCOy5DjvMKkqREZ85/QtheeX2z1pwN+n/15+ZqWt3nxtLhUZJvXufc9e/lzt
	 ZpCN3cSUkiF9PQFs/vZ5/COvF53T5Nb2sg3MbK95kQrozXkyIMw8AoYjhAHFemRSeR
	 5vcF77xJtOakPN84CzmO+ypXkEQ2Z3rUmEJsBcSOGBBuNZJoAYFFyaTNQv1cJaGjZe
	 tGxYtndjEhz4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24E8EDF020
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086729365.17324.8725882558425863799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb808a7b23d7711355cfe44f57fe44d88a6b1de678a4a734e7545827fa72e01
Date: Thu, 12 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770867293
