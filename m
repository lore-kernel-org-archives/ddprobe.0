Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA751CAA78
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772689494; cv=none; b=WiTn8tCoDv+hYBJNw1GVEYrFZGSCfK6Mm2EMFE7i4SJtUQdHbN0VUtlooRnrv2kZJcJC6j/gR1Hmt0LQhw4/Sp37Scu4Bx4O0iEaUvh9ASdWOr5BLrZLz0RffILQA/wOXR0SUcsFHxbWsMFsuoDTQZi99KAlpPOSxQcXT9v6V2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772689494; c=relaxed/simple;
	bh=0zXlmlc4jH0c/REZLSeJX5L2N5VSok/8Xxs0AlAXFZ8=;
	h=To:Subject:From:Message-Id:Date; b=SiTr9apoAgic9d8gIcFNNx0OAWX0aGDOfJiOpSQi1Fg9WiWVfVSd/KGCueHp2xvRDbvCTpGsf15D14q2jQ3UtEMazzUCzvH0gLyPNV4eEPJo4581vUH+C6Cl7YXwp/yNGj1oVZJNq7wwJNGAbLYbF96rilLsG6pM+lPnzrRSuiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fh2Kx44P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fh2Kx44P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA558C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772689493;
	bh=0zXlmlc4jH0c/REZLSeJX5L2N5VSok/8Xxs0AlAXFZ8=;
	h=To:Subject:From:Date:From;
	b=fh2Kx44PxmyiB5w52r35Ef5exh54mgbGll39r6UYX7Sq7EuTQaivdr/OTTQwdayY7
	 mLQxoj58CZ8f3M1Gyc7FYV/34sFhJ6RmaZrL7Ob+j2M+qy+FMIGOwjjQRXneJeuDzN
	 S7BIADA8fsda7+nMMYZCz5h6cofDWmSyW8J1btX5GK4J79/qwsKVHh8eY8zEDFBYNf
	 MBjTn/PTocaZPUjjQuu23K5/uhZXTjMZHEhXZoqHJbu67oxH3gMJf6pUe/CkRHNsqK
	 5iy1j5Bo7OApcjZCrww6GFVrWQy7dHYiTWp/ODfeJ4USzI6h2Y9MFhxsOzJt40ybym
	 Y6Q1XjP4oeF3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968ABEEF303
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268949358.6966.11137611652864106019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b731309d1aca90420806a4e4754730c0e72d31186873e2c998ddd78122e2e7b5
Date: Thu, 05 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772689493
