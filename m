Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25633800
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750854594; cv=none; b=TtN2f+z3bN/tnDW4KRbAEEUhnhVqUKih3CLAW/JPbjlPKBdTQna+nrSMCJhjC2XrVXxEttz5W50DczNDFN9sssknrVKyHZW5n7lTdhxiZeDPuhHjGVikYfYj/0i7fDPl+ZAOYTvfnF+jOw9Fs2xAG+1/WMKwQMe5uRmGIxfkaDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750854594; c=relaxed/simple;
	bh=OvONC83Iut/K0GwY1sPAbeR7/YhqEQTNo3l1F6ucX6k=;
	h=To:Subject:From:Message-Id:Date; b=imHn5YIMvw5dROyoOxZPhxiJ9D6smhvPdjfEL+2QyM1UurHv/pcQ3nyU9Fx2t2u/Vx8ScrDx+wnHXABeGH/r6zA+z+L/l/i7CfQOjuvo9nQqQuWhpHJY7JjuVoUrizk13rvv3R4Y8f53SHsOUU2Ki/1AqH2EUaXN3WbjxgWvOcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9ZeHwT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9ZeHwT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A562BC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750854593;
	bh=OvONC83Iut/K0GwY1sPAbeR7/YhqEQTNo3l1F6ucX6k=;
	h=To:Subject:From:Date:From;
	b=p9ZeHwT9MvkhCOLHNtQPn4fNohcs9Rr4JZLcLYt9CYClz+LOVnNyK3DNH8NUNc4Qm
	 k2Q8iX0YePBTvK6mKqDhrkbiG/iDeWJGkRmzNe1o+sVicmqPfp3pkN/oQdeIKsY2Qy
	 az1Go2jneS09HPz/ximrdmFuhwy3hcg4WzWEUUslHLQ2nBEiCofAFaW7R5l99L7qm4
	 5qV4vhwsTRyudZP5Vf4FkuXOF19KsdlOjM1ESPf9HGJOzY6hL/XLgj8fX3bEPj3LOo
	 VH98daU5BO/wOsI3oWsouhjPWyH6ZRl8kpfqlBburOTTPIED9yvpzdATHJfwPTkpkh
	 QmWMzoRWLX9bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F71BC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085459357.21353.12672876434509503563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6d6548aae8e6ba047bc60e4035e9405eae069d25248d44d64db2e3b675da77
Date: Wed, 25 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750854593
