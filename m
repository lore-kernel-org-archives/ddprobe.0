Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E331CA81
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745548195; cv=none; b=HMza11msqUtUOfE6YC9yg5k48aTAnoVh7qCoIpVOtc5wk+S6Mhqv2rmYrxMJ8ExtAAxUFNviTiiMccq5AgIbo5F7YNTC17D/wiklSaQ0AoMnat6+Yk1Aay973WTcdFZ3UcFKA0Xg++sIf9RD1EG0XsSPDzXxsatZEQE/u+66A3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745548195; c=relaxed/simple;
	bh=M9UnSo7+ZgsYL8E0qT1ST2BNzTup5CeN2VzmnhqijK4=;
	h=To:Subject:From:Message-Id:Date; b=F0IA77w3cFx9/K8XSVo75SnExkqQq6FlXc4GM0wxG6ccmbqkH6w5crZsnx/+esRO6Ssk1tyxY9nbptwXG9W2+VsEq4JF0lB4GJ3Tin8YIfupEf7/qY2/TiZ/KKHCsp/XqJZaQDVra0tMrfHpbgNvElmDiqnplC2oiugpluWC1Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYMVzLMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYMVzLMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0591C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745548193;
	bh=M9UnSo7+ZgsYL8E0qT1ST2BNzTup5CeN2VzmnhqijK4=;
	h=To:Subject:From:Date:From;
	b=HYMVzLMaEjPVqoP2lVWpXNYy3DHTBbLw1uTo+SVgVOjrwbM8HZhh58z+pemJoRE9p
	 MrVvHzg9ew7T4mONAXvX8ba6JTISzsluU0g3axjLqeTs/Y0raMGm/+UfOOAKueynBF
	 kiB+nUvBmS0bL5F1KfJ+tzF5YAvxXWvy39AROGVbp4tJ/yec+XaGsRK23Pb3/pzZ5M
	 qizHfwOISzGQpp88XNZ0rUccmwngUIgG4etRj6SyYdr54s5LeHO4jZ2j+jWj/c5n+s
	 YKKQsEE+wBhcFIhIviCBBB2zLALa/Li0Y0DYAd6Do9crWmjTTNTXj8q5Y4aPLD3AFk
	 Bi656HS6VtfcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F328C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554819357.2876.5091874873176391595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1225e329408478e414a8620dc95b991c913865863ebe82dc2f16c1d575fe1b2
Date: Fri, 25 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745548193
