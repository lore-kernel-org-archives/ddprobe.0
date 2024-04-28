Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA5D64A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714266143; cv=none; b=C/97AVLfNZd/sJ4MioIPOE0j8jcJ9c+rO0nAILRrEvyadjr0XDvDIa+YYrpnAtvNi9U2NZ9k7cI+dbPlvEmJ61cGSgoegxeCuV3a58F+QB7le6WEON5Y3fGvuLZpj2LqWk+3ulVqWSN2VSgXaFQO81PgWhKrVlnj+neQGidybDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714266143; c=relaxed/simple;
	bh=jhB8SqXI5rJdCm+lr/xvM3/WoLTy8SxgPW0ZwMokJFk=;
	h=To:Subject:From:Message-Id:Date; b=jGyQpa0kg1Fm0RFpmvcKs6TjU+TIvN3JKjunQNwlJi2QRr1/LSSUZAHeM/YbHeyZXEbXKlhvtHwAWL5P6KOdYCzOgtobg0OO6InhEZdSbhsWAjPaBSq1UXKY9Df+cKO2BjpD4pSgEy0MFJ6oNe0s85sUmUyJCaa1bo6hqs2joRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=co1vnjgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="co1vnjgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E67F5C113CE
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714266142;
	bh=jhB8SqXI5rJdCm+lr/xvM3/WoLTy8SxgPW0ZwMokJFk=;
	h=To:Subject:From:Date:From;
	b=co1vnjgh0bJZcRvQenWW3aRv8rW4nbFtyI05arc6TdAW8zRT6Mm9A9Ls4w5o5pXv0
	 6vJVo8MLJv1rz9atVdqGHSi7kVY358UL9m8Q/K5kPHE1vMYG+4fX3iqgz/AMPRjKxQ
	 8rCULYRWjlMd9Wkpz4So2YIKUOoCvVuIS7XRcsLf0q/OGzFSA2FHRInSHcVOJgW6Ov
	 WHskwx1WSbCwlbZ2pofdQdRfdG+fQ9f1sq++nwhdyqI7nK12fMemMbfmtjnhx8iZMd
	 QSZmMUXXaOb4xAp01mx+mXWDkH3zKIktADHOmWpWgOq7VYrrayfBh0o8oHjVPSxGFu
	 0Uly3KCFRIuJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFB78C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171426614280.9919.9674631343799993413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ca01b18d4312264ea48650e4222363b6df3b976cee29f1f9a7c6fd94f92c26
Date: Sun, 28 Apr 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714266142
