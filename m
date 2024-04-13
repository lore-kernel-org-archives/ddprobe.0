Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556591865
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713045563; cv=none; b=nXbp5yMgL3uxJHtnM2ROW5GSlQsd48lYklN7W+89REKgO2XuZEU6L8coVLWCBJld2sKgxeM4hsdBzFhufWJY69JYNejdCPvyVh7shJoc3Ri19JVb65IOU7UubOaqbyOYb5ICLs/r52wpmPQ0ItZzkc8wxXJbWaIs80bD7V27QnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713045563; c=relaxed/simple;
	bh=fsV/rixpUk0lZuBeSHol+W7EvgUv+IJURdhKOLBK1e8=;
	h=To:Subject:From:Message-Id:Date; b=Vt04/DpBC1QUuZOkv1t4p5T7dN9rLTkjKAzh2rFESqbv4leKXFrcRrrsi402liO+fqrU5AlS1rZk8x0tHYCTCL/mRK0cpbFYK/P+fzAQVK9rwrK9ihBHc+Fr5dCCWBMGqBXwZx7ILg+DbY6jpQnBj6k6y1kEZ03o91J/tLMGRKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVKinNEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVKinNEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C25C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713045562;
	bh=fsV/rixpUk0lZuBeSHol+W7EvgUv+IJURdhKOLBK1e8=;
	h=To:Subject:From:Date:From;
	b=uVKinNEQy7ZpCWW1h/FDZBp88HBpAyKXfC9cxwz1eGxpSjp1cDGjiRy2AGADomg03
	 bQcf2v9V1Yl0sZBEWU9DvNpI/HVnJqllnExJgICBGVqlCLhS5f6i9+6kBWi4GMDveY
	 RPByRgDlLsWhsOfyH3VBReEbL0LopKZXpErYvQAqrJ+xeExbSY6E7KigSJ5u3vznds
	 5iEwSzW6jtGHtWaPAmRWymVFHc70zlIRUi+XUzEc64jQQeZfzI0UWPFGqvXOyzC0H8
	 wWYDRUZt0lePzJRcKfZ5QFO6Y4+1GVudDAatKu4wFCHkpk6XR9Jo9VorfUKe8JnRiF
	 1G7ci5TAE5VVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9CEC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171304556275.25936.10975006348715032353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4169ef18dd565d0a8dd331543558dba3ba9ebc1be662b7dcdc3f3c6b571a8792
Date: Sat, 13 Apr 2024 21:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713045562
