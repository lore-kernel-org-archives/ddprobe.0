Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9942ED872
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784350714; cv=none; b=oQhEDfSRjOEw0D+8huySwRzGE+OF3SK3D1DeKoXpFaldl9VC8olEUkufqQtoUERW0NH3O0EMmfqm0prfKH8S8+3B+Mbjx3R80kDe8wzYf3niG8ebG9dDzQK/Ke2RQklUSollUKg2ZJE+1eShbzbtHV+z+eWQ7R8eAn0VBHRle2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784350714; c=relaxed/simple;
	bh=012uCLWah27f+FLejt5qXZG+RCAMwGMji3VPil79TVY=;
	h=To:Subject:From:Message-Id:Date; b=JUw+soaligy69uXbG9xEkEdlwRgBjxR1PwXATn4SbZ4QAsTOaXG9jZo3s+hWCfqK2CLszi36Kx+CrCmIITHeRJ7uQLWHqawz05z5OJXju/1DBR7gy40XVn+ZpSGkJH0+2uLaqX9bJ5p71E45cvj+NaUOGiE9V0DYtvvkdLfKP0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knCvD7/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knCvD7/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC3EC2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784350713;
	bh=012uCLWah27f+FLejt5qXZG+RCAMwGMji3VPil79TVY=;
	h=To:Subject:From:Date:From;
	b=knCvD7/vSi81CXh4KEIL6W4qtnnNZ/RGV8x9QS4boX2fPGCoWKq9mBc9zj5oEBP2T
	 1lgnbZQWj0XTx6QB+ktwKQE0SUmLu+HBfVfZ+iFv42G3CNFNDh4VE+i4wuwK1wKkcC
	 qZjFQCDNa5Oc4X6ZqVEVgQMpwuDjKUUeryHrX7i1JLRvyOsW/16l8uS7XEIEB3XHwA
	 Vd92QrX3h79FZfInoy9hCmdvD29PeNqKaepAGyALyoEjs2YdoPfPtoc0o6tro/ZWzV
	 MBhzg+vJnxzrU2++3qi1kInAFOR6Fa3R+SvUfT9d/FamOUIBvlhWO8nrFJmKO05KAK
	 Y6aQURCy5omKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97E3C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435071368.396.12742948467539754927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0137e816d0dab0c0b5d99bec70205c71f77fd0dd0a5da0418ddea9561251e15
Date: Sat, 18 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784350713
