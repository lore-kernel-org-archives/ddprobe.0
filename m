Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA6B195808
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742065194; cv=none; b=qDLgjv11V1WAFX7jIGcS5v+4ETTSilght9F0Xfq8XFv5x/xl7sGYL2rOZhOi5USRht/Ohf+jfbOjJXoJoaY5/o5zHqY52Jx6SR1+UrdFD6Yi828MjQUa6LD7ljh02YXi6eDilwadzrDQmz0j8QthGxyZJrBpNYyn9NUw4q4leI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742065194; c=relaxed/simple;
	bh=aCVXOhsxHpuR755HyO0GtPuyT+t1A3+33CbKyAKhn78=;
	h=To:Subject:From:Message-Id:Date; b=TRgc0wwAzN6z1rG9/8ZUv46Bkty315LMxSwIMJC1x7Py+Ve4EAAyh3XMzRxRMRnddDz/RXs3GIk5iqXOp0z28ITHMnXxnohrWHXVwN2SdMLL41xvqTKMSuXDiYKVAS11kwPRtQlUf4T7eMc7txt3g6z4tgDOIMqSoV/UbHvfpfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfqWjJev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfqWjJev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47BCC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742065193;
	bh=aCVXOhsxHpuR755HyO0GtPuyT+t1A3+33CbKyAKhn78=;
	h=To:Subject:From:Date:From;
	b=kfqWjJevbzxYy4sU/NpvT37TLhrA+QU/J/J40ge9KJZ0YPYB3M8/Xl0Y/1cFGiao1
	 ijeaPCmmdN3Fm+OlXFYQjFvg0UD4m1/pYT1H3xBpL4eZ7ZssulrTdcdstMsPpYLNvM
	 gVYiWNKfp59rmjJ3/5EbyfVvx/7k3CP8GyVIMH67UBT6dTXftaaebUEkntBuZdGfI7
	 U3w1HfYqgJZiMb7QoJCIpzdDUXm298tme0tifFJXXnNymupaNkMUXm+82UaM7qiq3a
	 G9BFr/bZYSpxhEP9RXnq6wSoaGQ2TkW0izrl2ZIdnhwIloBoqorROnpOfZdNQ6eYNz
	 czbG5uIDAgKlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0973C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206519362.31456.13398199138038403115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a9d4b9665d6ef22ab8aebf0eb7b708b03a019f8330a8550b167cb8b531e375
Date: Sat, 15 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742065193
