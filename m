Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0F73BB48
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767676434; cv=none; b=TAcHIe7mCvRUKll1uUTPiHI7ji3ZApLMNVfilvN5wqHZQyktjME0vLWCyqmtvq/AcbpS1hVrd9fxufd+gydkk5OM5qb8rRwbTk7oYHVfV3UkePw29tYb2xvF7QHW3oUYKW1Cm6LD4KHW+pfY1VX8Y86IrZLfWpYB+JNIxvbiF0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767676434; c=relaxed/simple;
	bh=sRK8B3dM8GQqM0M0FR13NlByQhULD02TMeAOG9MrWe0=;
	h=To:Subject:From:Message-Id:Date; b=Q7NGqxnT0JSWYYi1hBOnp0hytM5oCrlA6DNvJQfednT74MlEIBQeY5dfGF8PceTIESD0x000VdudvpgLI4xPiYy2CfaY5jsttuuqgNkt7gXpUlm8HnzMJRUnmYaR7NsKm8BKAfCdbJhTwAeJQWZAX+TOEWcF5FXRvrrc+BWP6LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1QWbao0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1QWbao0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DB0C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767676433;
	bh=sRK8B3dM8GQqM0M0FR13NlByQhULD02TMeAOG9MrWe0=;
	h=To:Subject:From:Date:From;
	b=G1QWbao0pnAg8owGsdamBQ2NvkMtBqZa76p3QgLfL+dVZtOATKqtmdfvbj0wX8+9h
	 ibdWjNaVz4JjEUkYkJIuDVmhlwLTsCoV5zG6xssPDz/WUPVWaBosXDdvEfGW4rHBbu
	 aCV1EDcfFtmzSBFbA+obl7XMOw4bkn9kt2mMlQ+TGGF+0P3jGh9aZqHkEZ8etUE7As
	 OxAeBvXaPQSRlqjeER2/d4dQliAditgTxdwLAaF0dC5aDkn/vrH6Dfk2u/NJ0TTjmR
	 OhrHb7Kyj9oVsW8vG5AB4DWMBaf7Db37XQtjnC73flc8sD+9wWBQn5ZMfsr853oYsb
	 nzwAQRjKvYxvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94665CD0437
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767643357.18114.5703621763584683707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c84af9139b5fc1b041d8fd735a2d1da9d42e1874121a919820a04f37acba695
Date: Tue, 06 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767676433
