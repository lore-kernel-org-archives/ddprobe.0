Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0F5372056
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784970634; cv=none; b=eQNJ+fnRgoYZVQCJ9HwPTYG+F8/EDg55++xdMnXCNkLzM+ZOF8YBcfA+dzgd2BmQotgZWZdVkryIEAlvh4//GFC6XmyLBn5ZDjGtMueyJVcF++oiE9k/Vn7WLfgvIYck8T9ZdDh3Qe5ZLbtutFqZfaZWaAu1C9p6G6nDkwTZZHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784970634; c=relaxed/simple;
	bh=iwuvUAL7GCGA5r9ADNw2QDChaeM5T9ZD9b+Bl/ON8+Q=;
	h=To:Subject:From:Message-Id:Date; b=Cojw2ZCoYIhPidygqH8VuPvXlcrBkYFd+9QdLA+T1SzMXzfkXLMNBYauH7HfZXbvlx+4CMa1X+EVZs3siWj0RZCZTLdtSJhs6Vetkv8AHWT0+XrcN4OzK33+FUoK5TRKf2vmDLfsZmAckLMgb55KmSyiu7EobNND3UVoZ/l1z0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1f83LMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1f83LMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B22C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784970633;
	bh=iwuvUAL7GCGA5r9ADNw2QDChaeM5T9ZD9b+Bl/ON8+Q=;
	h=To:Subject:From:Date:From;
	b=m1f83LMsTR0H2waQWGwnApCcZchbZQSncpq6G3aGuklx0fh4OGrxl5/lEqv2RqXSK
	 66VwjBC7/RZ9dZ8Eas0tWB+Z2d3wY4iZzJGzgXuZUn8qUkPJ33OZZKShfKxrNHk9kA
	 0pJjnDJBqgDQHvXpXmVgOZjkWSgnCOKyTBMgVXEm/Mfx5GZcaIp0pylkLDVwoK23AA
	 6W6L81VvtoogcY/dc4DwkXO6GwH32rZ9AcN79H3VNvwxE0IXrMjxwwpP76WhZ/enLw
	 zrUsKDaaGse1xDdoRJI6Vz4HHip/Fg7enfRL3hsQctsyGwXfLFJ7Q6v1iIFBZUYnJC
	 HapWiwnspVYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1A4C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497063368.25180.563626175966574161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0796fd0f2a66b50559d2e8e97545218fb3fb8ac0eea1b3c9014e11545bb338
Date: Sat, 25 Jul 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784970633
