Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174DE10785
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770917094; cv=none; b=hQ9czRFI7prgPRlxlOqWvvDMT/DC3NpTtrXhjd25hNJaSmSYHySMM4x84/u2wPxH2g00d2Y1tKLQB0eke/Y4hOEkBacoyM4iCgR+O6i5nRPPW+71CzZnfhaFKts9OFM53YcMxbbcmPGZbHSpbKXbg07NHzu09fAmfNdQXJoykVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770917094; c=relaxed/simple;
	bh=IGuQ9NXmxGmzndfwYkGrnFw6Ck3EBihlKozhkIgTqbk=;
	h=To:Subject:From:Message-Id:Date; b=GnB7glf+prYcUj1AnE9SrsIfaic302i1qi0qzVpyhq9eQDfdBGX64f6BHIXVt3vyFUHkQiUJLUloyYDFJlWfh+9z4tC4Z8OOxqrIMBcn7J07qTYT7jtEVRMzcRnV6p8RJsmXBsoSi4qZW7Odl4V560fdtH43Ui2hheQQpF2ByrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saQl/bUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saQl/bUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC316C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770917093;
	bh=IGuQ9NXmxGmzndfwYkGrnFw6Ck3EBihlKozhkIgTqbk=;
	h=To:Subject:From:Date:From;
	b=saQl/bUCt/mK26Yv1D1Z+nHp9FMd+uCMAHfmG79AuY2bWrQ1g608dv4bMEFDOuEXJ
	 mv8jWJ3qvqJoNxvcAoHgoYnMnOxZ8MFVxR57ZmI1nCoBr8IcBYJf7CQLo8RRmXhhUi
	 4UIGl2LoZU1hblh+97KqmQLnmfYlwGn2i9d6gxrLfUVmJC0EMdiKh6DoqKA1uNos5t
	 kx/vzn5SUtklH157ykrsBCdWB6T5XjUS2SawJRe+krdEMVudI90DZv5tOMf1sxgsxI
	 ZejrBKBvlqnIxwDJzILs0SqD33mXwto+eltkw7l8PCzyb3OqL1tUKSa+f3PA3WjoNq
	 ipimNs003lEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999FDEE3698
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091709361.12390.2956370360395466886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69426c71e1533266d87764b04743d8b919ce1574c94b0485c5488ab8627c5a9
Date: Thu, 12 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770917093
