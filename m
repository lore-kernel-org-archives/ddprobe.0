Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB0632693D
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772979294; cv=none; b=S6X6NP5IlUO3oxAaSmt5CaHqreVfyn0w4NsJ/TN2SDzF/7gDBR8BZ6g1Y34jlklnwHg29aalYo1pIsjJLUI1JHfFoUZlhsYQ6EPPQeThzmhhKiYmHHKujJu7X+gepcqkUFMmXdhmgmeJZRxrezBqfhlufYNLjCk/JOKsWyAakiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772979294; c=relaxed/simple;
	bh=uq6ExEy8oGnqqyAnndlNAihkp6C4qYhmCycvCKGFXqk=;
	h=To:Subject:From:Message-Id:Date; b=OyBCq7JAzbdYE8BJ/sHotbKrdkbC9FJm4EArVOVA7HyBAkKugyT67LKaGJeMZW/lZaUYGd3+16/9/lznuWr3lWbmyC6892dqdUEe5zbrIZCzWM00rhBb0Kk1cZgwsoWi0cHkK7vJ8ZvpeEaPEESIuxNIqNq0THh38EaLHH+4IcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfJWolX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfJWolX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A432AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772979293;
	bh=uq6ExEy8oGnqqyAnndlNAihkp6C4qYhmCycvCKGFXqk=;
	h=To:Subject:From:Date:From;
	b=XfJWolX/OLKFCI1gLLjnwVQ1FejqjUVHVb2F9pq0W0gVpykYK2qb9uXUVOuDcoi2/
	 gaSK6aqFVXUMKYoFurq2SK2NytC57VVUexRJEFVlqLgVxXgsFYpuYTcazoYdkj9H+M
	 UM0ydlBREzZm7pzxa4oayp2hGVfXBjD2zJeRQ+9+W18eJNP7sb5W2jh5wcvo3GDqU4
	 AMFll09w1CFpTLJfD0t7K4ZzVtQugn6utZYl/HhXAj9wboZjRe/TX0vtaE5ITBdvMm
	 kUy/MTnfJs2oDq56bRU8FIk0tau1IfI9R4FdJx3hyrdZoTc2NBQ7GF9K6CkYLQ7V8h
	 EkTqVlta7aE5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051DFC9EDF
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297929358.10075.18006205517194664860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f29fbd4231a271de9556b34a47ad06ca52a372ce78d12d99fdb0b19a0cbe89
Date: Sun, 08 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772979293
