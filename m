Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6D945948
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709248097; cv=none; b=kuL68ASIc6gUD6b11oZ4ufx/NTBMvPkZd5ODOj0bBNSoHELBZ9QXvSuA8kCGa9DBJuw/S3uIfB/65CRuCZJTLDtqaDiEonWfJrG6MYNpjdxYwKtorEJ5VwnkUrWXyDZ2Z9oqKVq5PRMSgOqhGEIKlC4uICIuSg6FOW/sq002tgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709248097; c=relaxed/simple;
	bh=IdPq3SvLdv5M5rbbAarQYJpj7Pq/No0B6l8I8ARcnOk=;
	h=To:Subject:From:Message-Id:Date; b=J3bd1TOc2MFpa5dgjNpHwYYSZgB+r2cY8x9VZW7NlzCMMZSa3XWhUj9K5RmIL3lA8zZmM7PLbj7/kZxm1wfeQEWuZnv3ht5Yb/jjwWPkwOEI5QymG/tSdOuC3EAxTvKHLEqmHZS8BM1sw20YZCfQQjeOZsA8roi5k9dI+wZl/Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umA3v3vU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umA3v3vU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E48FC43394
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709248096;
	bh=IdPq3SvLdv5M5rbbAarQYJpj7Pq/No0B6l8I8ARcnOk=;
	h=To:Subject:From:Date:From;
	b=umA3v3vUsYoqSIZS6IH4Vx701F6Lk6MxrI6JfsFSZRvqwZdRLo1qDHO/UmNyF6nqU
	 n5j/e/g610/oA+XS4eKsWTPZLiqz7sQ+ojD8Z2ko2u9ROxpIq5eFi7QeHGduq2M8sk
	 8ZOmVVwd7HENBJVr6n1bm58++dscdiIsvErCI7y3XVIo/B7e+Y5G7rReuQMJMCYbVo
	 nSqddUCc4LHmKQfCTB3+HHKrMCZuQpcbe26ozk+N9R96SDw21BOSu4EbDqOtJFgcWq
	 CkGXw+tXkdG66Ki1ofVQO/15DpoSl9QW3tEbzzjzEqsAD81AEfZfAM/AUyU+tzNo0B
	 CgzSiyAEJ/6Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E296C48BF6
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170924809637.546.13318862197800035306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609d7a20ecf767f2c5a5e759d86d57285c1ae48865492f63ee97db6b066315e7
Date: Thu, 29 Feb 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709248096
