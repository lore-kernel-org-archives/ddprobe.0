Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA914C98
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746245994; cv=none; b=fxfSKzoA9+BTjNZN3QvGKYbUMIullpZlc+6P+peRvzWh2PPxOgmYkMOY8cJ89iIHkUt3gtTscvNpm/W0bcmeL/zZeAXEhwKjnetVkh7HN6oQQCHsdGOJqQ9RW3jJ1FLy2YmIUZa5Vn4kT2mW7fI8zvnfJrgUMBjE1ht0JmdqFkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746245994; c=relaxed/simple;
	bh=4aZnEsSJAyjQVB+WD6k7UF+Ki4zY5IRkDXUfiHMQ808=;
	h=To:Subject:From:Message-Id:Date; b=i3dYN9JyqjcI9CdL3Lr49bZq3RZnRApY08uSZ+2FtCjVUIVer1sNLyRkAX9wY3Q31qs8EkznhQQT+f5n7I1AjIbA/YlxVlCZQZ160CutphbbPH7ifIKH5d5nynSAz2VPK90z611KTYPKKv0sdFKMAdxPMYpHHSO5UCw1DN87xpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHiR6lFO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHiR6lFO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E9CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746245993;
	bh=4aZnEsSJAyjQVB+WD6k7UF+Ki4zY5IRkDXUfiHMQ808=;
	h=To:Subject:From:Date:From;
	b=IHiR6lFOE33gZ+x+7UiW0+vDz8sG/1PbN2HwNp+DRYawQKcqqANHDzBN5yqT48NVp
	 dW0vidQbfW2okpO80A6eNciE6QA77URCBVUEhBRlgW+pMpz/BLcc94dWlVYCuIKOW5
	 BnExB11uYQ0RJkSpsPOUTijZdLshrvikz665O+sWUuDN+WcH2I3kcUWDB47QLgcoH0
	 ueBzQZKJowOZD8r9iTSHkHawh9svFod/y7zmvhCf9ZHYnsHhTTRjs3cr1LdUFzv82N
	 0SvekkoUXKyCQJdK52Lr9onE0t/y/jziw9Pg65U3sxxaV2UB4qulPCU44pFek6YRhh
	 i+9366ZNiFp3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93816C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624599358.23262.7078667410245517052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9744b29386813079f070a99ca990a7d7ebcbbe1a81bef3cd5215b00bc7b8f5ba
Date: Sat, 03 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746245993
