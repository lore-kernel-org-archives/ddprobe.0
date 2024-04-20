Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84475205E0A
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 22:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713653423; cv=none; b=pSlkZ0fPAf027etTkPnuU2o9iKGNPahR/+bZrt4UkUkoIWkw48FSLUPT2NQdL1O73nuqJWww3cED6rQHtsJDN6+QDMgJbApPTMq1Yb8gnKBJ6+CPSiRLdr8JxBLDOrtvcE2eBOgI3gYQlK2KryVccLsolGfnsBle7lljSOEeoWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713653423; c=relaxed/simple;
	bh=NaXVJrshroflod8ar7jCuqrjt3+tK08xbtf4w/VaZvk=;
	h=To:Subject:From:Message-Id:Date; b=OoU66dwUCiNZVK0IykHGS1h8snRfOPp31THVMLgX0YuUT/3GpeAzlOzKZk/iocsYbkGMJWiojqEvxkvPGPIowVhbvZCO12H9m/eAa2kqW9dZd/keaK3TyMutFtKUp7MRzznaBcfjCePlt5m852wWd7Q9fQepp/uJgLtjkdBNc8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3rO8Wh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3rO8Wh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 034D5C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 22:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713653423;
	bh=NaXVJrshroflod8ar7jCuqrjt3+tK08xbtf4w/VaZvk=;
	h=To:Subject:From:Date:From;
	b=S3rO8Wh4grOwqPJwEjHJC3uVLrwTLrir87BGHxF1eq4B/C/v/2dUxFJ4Hx8KvX251
	 IcbY79137W2/ZK44RC9wRc56amTeyzZfMCbEosVqB+9XfsxiyCvswGJO73Es+LCjUY
	 pGJPsAS1SfANsoYmZlN9kubqasRu9D/s5TarJ7dgmQzK23GLl2M0KeBCrWkV70Az7z
	 sL+AhtVU0WLaGxIJ3r3+yy5+tIasC/4WfnoFoWlwLqLiHpsjn25tzdWzGo/oo9sQUX
	 1ikyYHDKXAtfNzTHUnLUrh4eSft7wR+GlqZhf62qknepsVD+shKfNozvA3/uGirUEV
	 TF5sr6YisqFlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1D9CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 22:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171365342286.19657.10133166942169157935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9d37c4f6f424d915b8e7cf86d52eea4a32c10acdcb51092ee67a6bd5445dab
Date: Sat, 20 Apr 2024 22:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713653422
