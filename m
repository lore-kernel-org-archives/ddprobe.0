Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE9625C81C
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752676794; cv=none; b=uZII9qUmL/nFW0hPuDwJamZ9pdJqlMFQfXs9ETMiYbqZo+igheqe5qTzkdsGpvAQCQlqvLCCkkyqjFbFJBbs9UBP4BOIJZ3rc9thW4JPZywDotbsHGj5WwrcKqinUjS4GfBJhZoPXF69x3fggi1LmuzT6uR6Im+aD/7IfHRGFV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752676794; c=relaxed/simple;
	bh=YbT2j/GoKPKo7SWDKf0lVAjUTlxGGDfBpxAac2KBS/M=;
	h=To:Subject:From:Message-Id:Date; b=n+eDcG0DfVNyUvRGJ3zan1f+kYNi9bKGKJ+b/FWc+r1u02wDJayNZLE3sw1C8+ifZf9TU34u3tQ/IhS/sQ66BBQm/Lp2Xf4EE+iHEDcjPfNzBl3crI26d9GDR1vz2DKN3XNVVa+b9FDfZYZbqZF7VMPh92Y1frnLBKqkF8tM0e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9Ysuoaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9Ysuoaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC8EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752676793;
	bh=YbT2j/GoKPKo7SWDKf0lVAjUTlxGGDfBpxAac2KBS/M=;
	h=To:Subject:From:Date:From;
	b=W9YsuoajXowZWhqNbs8d30Q0eZNV6bFAZTtCnfMRDOWT0H0MDPywPbS1Y8gwydV+E
	 KWdHpe4GGrr9qMioHKANTE39G/nNx3YQDnfvckGEEazqlyawzK9bcKalDi/qPX9Q04
	 WSwOZF+/IAWJ/5zB3K3rt9byT1xWsoLCVbidZNfnz4Jsvo1X42hEWSgzv9G7bFWGgX
	 tZOVnaIGHwC9tzA/I4Gh/nxV5R8IeNPdkH+MPjf9GZd+NBkhfjcGwXvtOE5v04OvL5
	 8IiPJemOmFo9qhtT/OtdPb5ecb3FF8gVhRwF5GvRbmlOsAxSLTOecdgdC6Kv2jJqCg
	 n92eDcuzuy/8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18EC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267679357.19576.13069276610682803871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d170618a0bec4f8f6f7a34935dcf59806070fd7b8afe673bbbde8e557af14a
Date: Wed, 16 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752676793
