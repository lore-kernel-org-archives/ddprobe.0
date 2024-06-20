Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B16419B
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718845763; cv=none; b=TMZJFAUwpbkydhxfwNIHU6+TLUDvREmtFpXpgUGSREgarb7Mhj9wdm1NiRvOa38OKgPnSScAwlGiP9y83uFNjhjyQ7F2aQs7LRglp5iuZKPyNzsIZl6JvmUK/N5MHAPxxmt0doXofcJUJ269jecxIfcgH3hzwZ6Of8IGCeunQa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718845763; c=relaxed/simple;
	bh=lGoeucCcGnEJiSMCa18GGshlLvuziyBKiKqJjEx8k6M=;
	h=To:Subject:From:Message-Id:Date; b=DqWRjPQFox1utBjjrtlveOu2MQpxM+bEwKAP8mIwXzP90M/Dy4+xN5nMniPyeDc8y22iPY0SmXKHRqDEDh3pByUrTDAQHjymfJZTyOvS1OI/RY1cXkoKWnqAeSSxuKidPFHFQjdzeFGl5kS4xJEqvspbeoW5Xe3cW7nfWTEFxEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eB52r+Lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eB52r+Lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7EDC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718845762;
	bh=lGoeucCcGnEJiSMCa18GGshlLvuziyBKiKqJjEx8k6M=;
	h=To:Subject:From:Date:From;
	b=eB52r+Lkv+JTyGR2vknShSDBS1L4uyrADqI/W9Va04SwcZZnBQwK2u1Q0su/e2oKY
	 4K+OfGM/8vqqC3lBBf6jyCx2E1DubvUe20FZvljlVStQrz1CYuweXeqe0pNiV0s2aP
	 Z21V3Lb6JlCHEzKAFl4laqhO+YbRSsM/CZaD/UFIE2DZZLPLLWfzfrsORNdzZTKSga
	 If76MpwCYY80ew0kyiXqWWgflkusQGrDJuCJTbYUvX3Ue+Syj9fFzAVcsgEhc8rFRx
	 QL5N3RQzka1qZkmDOrmWKp9BUGXLCTF8QZGb6zzoLZAVr8YvBGsZHw9Hp7wuaFxST9
	 acSkrlEBsDL9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF90C27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884576282.4297.5387057950683729999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6416e8d107838ea57356c79324db5f36d3d08cfa697c62ff2855f2b5269ca9
Date: Thu, 20 Jun 2024 01:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718845762
