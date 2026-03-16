Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C1839C631
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773668094; cv=none; b=Nep5N1Wkdo/WMcQBLmDlpQwoq6CKPb+38WQpLXUOR5PNt4/MqaroOX9AWwwf/liJGw6j0kJNCPoecr5qSyR+DtIjjPpTUVc4irDtH3POKJTjoYoxglaf8NdenBUpFhxdQN0T9mLC66dOOLb+7hvySYJVsOye3l+kU4zA8zRGptM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773668094; c=relaxed/simple;
	bh=CaB9wAiTIk+KPp65G6QITWHYbDnjLPrU3uJb1xb/Ikg=;
	h=To:Subject:From:Message-Id:Date; b=VDR7kw8bYXUQh3TSeTuMWsUF53HyVBAgrS7iRVVZw/9IgvHR+xqgFHzFf1sQ1K4+yY6CMTSL2uglTjBNkuHYSyLSJB0vT/Be90hPBXbE0X42YgvmcHHp1cOiJbVCjaht6WLUDurZgc9bUxNxF3Dl/vhwZSke31zJPy7vj8Ues0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCtU6WaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCtU6WaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB5DC19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773668093;
	bh=CaB9wAiTIk+KPp65G6QITWHYbDnjLPrU3uJb1xb/Ikg=;
	h=To:Subject:From:Date:From;
	b=SCtU6WaKI5PUQ3aB61LDGzS7LNsZmdInJ/zji7dK8/IIpgUYgmGSj7V6qezDVpynB
	 r85/hjF0Lgmie6ncv6a6gfBpSc9U0nUNZl2Z4fUE7Fq2iN5RwFgiwGqwhdmL654mV8
	 noPp3Be616f4G3GFyaNKNTTIDPoodrJ/o4AmxfnqXnvdeCC+j61xzCzEOqm/3oNtFK
	 Q+vEif8HNqs56MbN2JgsvCMrU7Ke/v6gwbFlc0m0EoZe/26Z9M6DVOgc3s9Ri4KMXp
	 geEMAjMrmERy6ICVKABNRoA0NDk7keNJ53Qfdl4qaBSqvX0jrG+xrbRBEQQfULMuZ8
	 D8r/5yMLn5DSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F571F506D1
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366809357.30599.2737940466325140475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 654e8d1b7c6fe82502f654bc2a324f06f9c433541cebe74478e0955d3fd1579c
Date: Mon, 16 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773668093
