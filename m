Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4741DC994
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744286994; cv=none; b=A4dWN04rQ2c9CebpgmW+ORKaTsnrVEyctnC7JxXAQ6jI3TtnLq6qOb+XPk36weQlYD97YL+w7jM0xV+iRqYi+nwfCUN4WXOUl1AXJmR1/A5SHOA2h/NXM+txmUrX5zKzplJ1ioNLz6vqOiOfX01C60NLeSyrNKb1oQVGdS6TEXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744286994; c=relaxed/simple;
	bh=bIvGSmPiQyxwCnAHXF7wtKQJKsXZsHwan+zvA1FfVrY=;
	h=To:Subject:From:Message-Id:Date; b=XgkofpyiZP8K4iQ6ECanmUIOgkb7aaBwcQDWh+GnwL10dvXKu2gqWEK8BxKytbo44S37la/U6ZWUPLjqavUFmW4KpirZKbkU/wvZaJ4jsI/IhDJ/cPHxuXsZeE3XmtDDnKjYdvBO1XvMHDzxrwMh52mMY/EmkUIusW+52m/3mK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVkwlcaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVkwlcaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDD1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744286993;
	bh=bIvGSmPiQyxwCnAHXF7wtKQJKsXZsHwan+zvA1FfVrY=;
	h=To:Subject:From:Date:From;
	b=KVkwlcafh9YGnSt/dFZa0yPCT9fHANeLh9JMGYjOsuYafYLGZAGv9VJnt+LdF7pWQ
	 ewrzggEOxgBWyF3EADOvx8O9uW13tkzQ+njKM7QJfkfEjIJ7ddNriFoLVe9cXAYA4q
	 mzLLCFM6D38QXLd6/AsdCR10/jsqA2vwP2utNTIYfvx31UGSbaPBpR9CaWiooBC2ZW
	 JdBugHPfSVNiUtU/ku9v8IeQfQvqXeu9AMeB1wQs7Jh3okBD0KIeuyjQgF3wClrQ+x
	 kG1gT2n0ey9ZFqlybaGd3u4mRbKjcmtqiL0TNSVdIPAh7WZs/+DAOyaEscCoA28qax
	 E3QuMcLxj813A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90293C369A6
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428699358.32037.4933177978941577225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae995bbeed30bccacc58a863f2f58c45ec0676318daba3823129d7c6ad3d4e2
Date: Thu, 10 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744286993
