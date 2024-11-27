Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B3E2036EC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732744554; cv=none; b=rSuIhQDHcES2bgBjVRIpH2MgPH8/zYhYNHECxkwXpuq3Zd7ed+tykOrihihdo0BrQkSAO6r0t7Evc6P90bk573ZWL2hG+8NLctaeeNJIgrUSqzuZprBlB01Cr9A0S8p8FBZ6sjpXerwrP8Nja2IjZKVHY6J6nTVcaHt/YbJwNCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732744554; c=relaxed/simple;
	bh=X9Jt93fRS5ZTxFXvOqDCNJFDgzNksYMbxoxbC3ySQxM=;
	h=To:Subject:From:Message-Id:Date; b=jIWGvCE1k6h3GZUCS9Z430eZVQ1uP13UJlY+z3o1PG0aNY2hmeXtc1U6rbsIHJvkn9HSd1Rgd9RqHeV7S+cHU/HZAoqaUhj9e0OW/8vvwVgzUeo7CssBjZ+sxsPFLspN2roCqMXpvk2yNb0DW/elvTIo0Ati0XreLVec8nvQ5vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1dyCH5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1dyCH5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2418C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732744553;
	bh=X9Jt93fRS5ZTxFXvOqDCNJFDgzNksYMbxoxbC3ySQxM=;
	h=To:Subject:From:Date:From;
	b=C1dyCH5ccMLd6ZwDusLKOjXdEeR2GlOH90Sg64W9NmBD6Qj9GzbOtmNsK3O8odxbl
	 QLGWDPUJu4XMyHZWi8xH32rBV9i0Z4DBwVjuMUfHLE9rYrZgyKpOu9SWJO/WA2Nijw
	 skC+/Mm8GXYvruRE+t92KMTHZOticcnIXSgbJXQBZFVOzkl4iCUtCc4/Kz34e26p8y
	 YBU2HJhIDTbj8/g0S7LfZXaNd5XAYZCYGw5y7571CrjdFdPIyug13XwZNy2Ymv1bpz
	 g5ijSQ2+WpyYCq65MCYvcHzfQfW1TINlPI6VvwVtv5QVtHlBHXgyQpoyHHVqfyPRcM
	 hgZw5TPju+W6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F70BD6D241
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274455360.15165.16130352388823438800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4749de13d804383df4f47fdbe7358b531b5712818a70d48b002bac70c3548b
Date: Wed, 27 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732744553
