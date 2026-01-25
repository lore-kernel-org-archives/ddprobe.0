Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117DE31AF1E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769340834; cv=none; b=cnysCzaSkXVUbDO4bj3KKbE0oE10AfDN4K9I+2ncScrsjzZUtp3fIAORV3kqpMb1xJzMOniBLwjxS5huyCWHhnoVq7s+toJC++o5zGnaujaoo8a+dOjDq1uWjwMR+w4K8OKNv+5D48pa2uNvq6nrEOK0z/v3GkqL5A8nMN10Qpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769340834; c=relaxed/simple;
	bh=FwQG9W3jDJnfhPo/idLAvJ8EPkQekc8ukDGuGT4hPkM=;
	h=To:Subject:From:Message-Id:Date; b=on/ers2sXpKmfIZJYUsiNV4Az3SKo3MXtMJrYTLu2X8iCzdunSIhRTvoFIK5Wn1F7OnSTUl69V3As9fOnpvYU5srfzvEn4oJw1PhGhelQ3k2VCj/qtxcbcDN4Seunmug/bMmEe2BMknn+YK+mtl84W5CHCnjIxP61AvoTCdDo6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQ719k2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQ719k2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0394C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769340833;
	bh=FwQG9W3jDJnfhPo/idLAvJ8EPkQekc8ukDGuGT4hPkM=;
	h=To:Subject:From:Date:From;
	b=MQ719k2wV1WPfnlWxTSUsMqe7KcQxccIH7AKxa9XQwFRcm7wiX32SiyAwzRa8+TRh
	 kW0udMs9HPlVP0fr0CI0b8b/kGwbDe32OLwoS1K3jz5AM2rQ71++OOYyVkh2VDQvDh
	 k4cln/7y+sA875BDt8lEV8AzVEi1+kiyizZn4NZQ30DvUz0tKZ7uq5bG9WysECgaak
	 hbDWUdcLYY0eqJIYMjY+RovgVRqQJkWYIK6bGZ0JSBohZpCEj+1+L9Kdimq5Ybg3ZY
	 kpvrqHQBgpzh7hDdEfWYh85ILuLhBxSDmjMG+btPSXXV7KggDv43mtr769ZaLv15jE
	 weAGOxsYdd21g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F893E63CA0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934083357.16138.9442917582368991110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e44477d1cb54485b364ae6b8779c1933eed26e5ffee6421a917394a7177c0e
Date: Sun, 25 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769340833
