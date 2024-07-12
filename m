Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9717317BBE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720762043; cv=none; b=fMUefbHVNib6YoFQ3fUXi/e9+z/shIuchVVKQ7YruflKSvc3Fm14U/VLB00oPSjRHf7WyzefHyVEH2JIQdQcAgQrfn0u0mP7jcfl5dW66I+/lEGn7k5DALoI6DfDfYzw/Y02GTzPjdeLJ769ctCo5Bf6lsADylDMvXhqRpoVr7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720762043; c=relaxed/simple;
	bh=usUB+SxIlDA3deIRy6ywSYxN33fyPB4vBZeP3aeNhgA=;
	h=To:Subject:From:Message-Id:Date; b=W1sqGyow2hjddeEM/B7OrqBZKBg3v5ccJOFl/RJ0TE/mx+zwL7rHXx0vo0JAFl7zOlW8/PrTEqYwN7CE4F7x/PgLZ+4AX7JowvXQ7OThHLLA6fV8Ob0H5AZW7nmbUibS8GuWhWhQrq9kiCTP4EyWHexGZWWuZ0HEikxUFPMI1gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAymq3NU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAymq3NU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20DBAC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720762043;
	bh=usUB+SxIlDA3deIRy6ywSYxN33fyPB4vBZeP3aeNhgA=;
	h=To:Subject:From:Date:From;
	b=rAymq3NUPiecwg3bAIi0t35NqUFK+E7MwM5gzGY+wJ0TJjiMNOmeiP53/m/BjKJIk
	 +TG90W0To8S7e+NDVSe5BKUFDKywLM8v4eRR3p+rx5SWSr2V2pd/oB1svHUwvxNomr
	 mFeGFjt3U8u2PJadu13HozWt4qb4hgsRGH/ZCkNThdyWl3UcTCL6/8F9LfkvA0Ogml
	 CRpKIjM2YUrwo0NcgbaDkGLuWt2asyKmCxVjbEtvvWV4958y0X+68RLoU0UEmlJvzp
	 ZHkkrnD8sFEGmTI5NqWPud832wKjnWtjZAkFFTaZ8JZjt3GZGlusjGVoZ6vo1FkNjj
	 7UKxVnrxxNiPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F137CC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076204293.7642.3007735427892612085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e037bc31f7abe833f805e18280d45b6af13b13a174ec2138c4d7fde803791f7
Date: Fri, 12 Jul 2024 05:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720762042
