Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4362F1667FA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721598954; cv=none; b=s+fWcvQw4OtUpVqqiEOboGHijEGqu1jZmrMkUtSIg7y20btfkWtFp4tES/5QgeLdqMnu3drgMZrLOmk4OucWJrp7yU8/CT6s64766hPmoaWnjaU6gi84hcq9Ed1jahuY70VYXNzeMxP193qQiRkm33LHLjeTZXJZGKHDdU7KCBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721598954; c=relaxed/simple;
	bh=zqjSx4K6InQ0dczruJ8Jxt0UuU5HTf6Z+C/jO5/eVLA=;
	h=To:Subject:From:Message-Id:Date; b=RgZVrmVQqoomq713Uo6USsz2RcOI+T+LwBycCMHXNN+AJ7BzoDfMkmPQvh0Huh1gIiS2q4L4pVh34Si8Pues/XBme8BGrEQ/Ayxxg1VGQe5N21dg3A0FMk9VcV9Jr5NjFZT60KOCBtYuXb4fN4QqU9HI5mNeYTpfMroT2HUdSZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coriSZnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coriSZnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF9FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721598953;
	bh=zqjSx4K6InQ0dczruJ8Jxt0UuU5HTf6Z+C/jO5/eVLA=;
	h=To:Subject:From:Date:From;
	b=coriSZnQtAwRraeBulC0uncOxWQBHIyUYsuLFeafQ3iD1EVJAATHJ7Dh7CJN1CDic
	 8rG4MdJpaerZ5cQebbdl4wUKacgh27udw+L/ydn31xKFkc6Yz3QJii6sZoGc1URkPJ
	 IhM4zs3Sj8G7l59Siivz6b2bbaJnuX/eb3Ac1c9LRIkbLmOlG6vGnejZkufZAFh2CS
	 u3ow4vB4jWZkoA78BDSdQMt2/smRucDRQqQ7kVarLGXUfFM9EAO6+7yJnykXADJ79k
	 Yu0TnJKjotIrj68hRlCFugfciYL1zW1sIPS82Kkz6aecLKuG1u94npfYRfTMUgAnvm
	 vmWW1iIHKzx1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC4AC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172159895362.27809.12487074905673004987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7630e06976e0de643e8b9d4f1972b79dc8ef2554967c5fecbc4efed41474aa
Date: Sun, 21 Jul 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721598953
