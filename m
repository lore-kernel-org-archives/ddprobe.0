Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4876120ED
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714261343; cv=none; b=m+wnQsvCjoACVCJbLifJqOqSio2pRDTD+aENTqhJtSpGU5OwmQSb+KaVMavV3gER91POeaYQE1IfG/WLa6wsh9JRKBnzfynLQ0MhQc4ncEDe89qHV+Dlgm0T2aF6X4sQ8GossIfpWZq1lyF+GppE+Pc2khShNfdolkn93rhePOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714261343; c=relaxed/simple;
	bh=X95tNMyPaztT8xkFvzXq0c/0Xeqw3l2UF+U8mVLVchI=;
	h=To:Subject:From:Message-Id:Date; b=NLSgtmAkqncNW8be2lVvuINImFoJQAT5jzaoGOPXhLNxLDZmoRh9umlRPgQyZysFSyipeAndJu1Ca/8dTdiJYTTE6o0PQLVbdS+UC1l7Rao7xzrKmTCTOM9t8QddJagTvUp0SMxYu2WTVHNvjcZY4Zy8/kL/3qBAoh0oJh/v9cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtIOqoEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtIOqoEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28D2C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714261342;
	bh=X95tNMyPaztT8xkFvzXq0c/0Xeqw3l2UF+U8mVLVchI=;
	h=To:Subject:From:Date:From;
	b=AtIOqoEjbQH5P4JEEXBOYPeQAz0b8pnXmUUGv/Xj8a1/efwO7tMGl1/c1Odf1qR5D
	 MsyQfksz2XVgnitT4/za02YO+QjtUHMgfbez84/8ADVGwl01V6AGe97uZdW3yV3Kjc
	 F8HZufc8+V3HCxu/ZkQCstZefyJdwvoFx837udq9wUJakBTLXPESi82Hq2yzFO6Bp6
	 fYb5CiBGIOvy0ERk0XsV25pueyrh6B4RP88Sp5cdIyIZLArGlu4L3+iZurTuy8hpFe
	 +/VmmLJ0xL+UEIs6xdpffWtLqji4+KndqJRQ84yOCeR2Ktcg7Q7RT9wyN32Bie8QaE
	 qNeDevsrYb2hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1D8C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171426134275.11342.15841128498681094940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c5ed790dee59239a2c4c644838b95cac75341d63ed53e9a344471b92f67835
Date: Sat, 27 Apr 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714261342
