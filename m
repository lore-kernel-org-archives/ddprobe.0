Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33380148308
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730442354; cv=none; b=XId67DA8vc7/BDjxepFy2wafttxk/th2YE9z5oYWDwijjGPMhJxotiTlJLP9SSXigxw8RzuJfZ5x+NGpZ5l1YMXnzfk3e4P/mATVD7xDxsayfJLfdZ2kptB/L+Tc0/1/yMnwGJd94La50zQ+3BLdH8p+fNZNuLBb+x1tOFOy1eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730442354; c=relaxed/simple;
	bh=SwQPu1J9cVsMXYvN5/LkHmH0oevzQy5RuO9UkFgUpOM=;
	h=To:Subject:From:Message-Id:Date; b=JHnGG3GYuUK+Qm046hb9j9Fe7VGUN7LdKtbGj7RP9bjTbrmjK4cHBWVzWdUF5d3l9RS44pgBnz5SySN9hDeNQdYnmugcxLJVqEj3vGH3lLnH0eU7SsaxDsNWy5ozfzBaHQbT1H9sxzfl1ZNtIzLMs+X6eMqJvQx2KO6yt6cG38Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePxBa82+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePxBa82+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8883C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730442353;
	bh=SwQPu1J9cVsMXYvN5/LkHmH0oevzQy5RuO9UkFgUpOM=;
	h=To:Subject:From:Date:From;
	b=ePxBa82+ilZTM1IGO8CLy0bLX9w0hbD/9fq7Wq4xYQihmjm5M3yjS55F+aZx8kq0h
	 C9zf8EyiIOZjFJnt1SGtImz12Rvz8yT7K0TL7bWzdrr74eiN4//LKUQL//vxWn2ho7
	 Ov3BXGsxihtvxo3eKaJu/W2YShPUM/Rnj5RW0qD+eMpZWQiey+LHBoHDvg3sYJXFX6
	 zs01pMPa9gcaUA/Q3WoTXs3A6I7dVH5JGZZEytKN26QkY9kT/Pq0Y9psrVTDl8ZcCM
	 1ScTAj/fvmcWj9T2PgBxQoRf7pmE0Xw7E7Y9bJQFMAJKlaBK8XKf/DZ9Z8aHfQw6IA
	 SGA/Zg2I69saA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98505E674A8
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173044235361.31355.1268201712916265221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190ccb61fbe6276e4b3771fb9b4b395f96e7b5d4078675e96cd5eafd6772c88f
Date: Fri, 01 Nov 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730442353
