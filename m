Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1554A26B2CE
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764252174; cv=none; b=GjDOzgCaFIfj/YKEqC31ZnpU2NSK00n1mTLmI2gj0EW9NuEtxP83wGt1XmJ1ZVguy/fJpJhGFfQ+n4T0HKQ6fMWhhHWhIWs/D65y0wbWU2I1zR1Z941QcAOr5gyD8YHLz7OZHsE4Phpu3IdVyuSHR24F7d6YYTluM7INyD3Gmx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764252174; c=relaxed/simple;
	bh=J6Ptx09CR3tUwcAgPn7YZvTom6tn6I5cAOisyCYKKxs=;
	h=To:Subject:From:Message-Id:Date; b=gzrMBH3OTq9Q5Ps5sfuzn7Y5wcGT8Bp7+44ZSSM8Q+kg1nZ8vAcnlfzTOfR5s1oai5Ie3AomttSNSgvYiang828C7ohd9aBsrmZVJjeLLDYuLghi3qJGkP3+PJVxIotl6Pu9y4cUVV0zOh0QP8FUohQOJ/Z4AFjUhsVoCFALl0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLWRnmly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLWRnmly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5603C113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764252173;
	bh=J6Ptx09CR3tUwcAgPn7YZvTom6tn6I5cAOisyCYKKxs=;
	h=To:Subject:From:Date:From;
	b=fLWRnmlyEPBvXtoB0Z+vHSznU25QmYOIBiTIjaq/g5Izd/DT17ZGNGce5OlvPuxnh
	 6Nr70vxZKZbuoMzHiBgkspLFoNKeRapoxouOO41fp2zeN0x3zzh0Rfk62TXSDzv2fN
	 6mNSFwFy/aicESrtDtccg6m/PbVVYcGYc+j/BXvEspiP8Z2b54RcRQ0BjDf9vPjuy5
	 Kv7tWVTer1pYg9sx1p7hQd879nc8bPz3BMspu0Gx4k7uspKul3cYKYGM3lS1IBTinY
	 y/fXxfkGGUeXuJGug6lYJWP7Ay5t2Ams1lFkebH2zdcjNksdMfBjebDtqYRBYTqYry
	 Tmfs/xSZgaH9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C9CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425217359.28659.18259708020386467531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253edc68ab9e67f442bf99355bc02b60fcc59e56ab1e22098d95f08bf7b8c868
Date: Thu, 27 Nov 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764252173
