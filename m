Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED16254841
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742944194; cv=none; b=fBlhCxw6+2cE7AiKgEelssklF6wtSg3oPWTOyS9zv50h/l2my2Q+6cMjb3rPtbuMhjksPHU87xUHCULQoftRThBuumJDVC9CabKWLA9T9KtoVoft766aqjacsz/Sj2dgqpDmEbgqxEh3/bUlGlXjS/hzqwbTslO9j0Yzsw6f2Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742944194; c=relaxed/simple;
	bh=5ERBsoZj3bAyrTqKdB95sU4tIbybK2XPdyjW0c0G81s=;
	h=To:Subject:From:Message-Id:Date; b=ciTEyF35cvfELbcpnjOm11OgC4s11h2xtzZ3Bj5th7+EaL6d9mGEMvzKDsiFWELoD6hixU5Le+sPu5qyHdUccS6biyeJ/KQH0HN6tNVjgdibTqK1nz45PBsmvuPTlZI+vovdKvXQOhv1ZJ2mgbaU1p2X30fTiyMN0ZdSaOU7R7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9nUTL7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9nUTL7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3C9C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742944193;
	bh=5ERBsoZj3bAyrTqKdB95sU4tIbybK2XPdyjW0c0G81s=;
	h=To:Subject:From:Date:From;
	b=L9nUTL7VytcdBVqTC/8GQBZsY7gc28b0k93EamUrepIGO6Q+icrDfb2zZZ88HNteG
	 HD+7SYcBRPZhKZxdKKp79CFtiUZwUC+F9nXdNPl6uM42NJx3XOdkqlvYlWyEW9GVOD
	 EFDTXYqe7TVs5jqdCM9D0G7FNn85gBv1sDGmLPNdSJxicJdavC6ukOu1rg43Q6shpD
	 NuFULyuKJXWzJDhFDrSwV2SCrUB1arwWQ2Kv5URHFtWojQH8Ea2pJwwnASyksduo/J
	 PXMHQJCoDSHmZ7MUjiiVMKArpzt9ajUxQ4CYP/a8/xDGQOoYCISgcTaiu+pg0Q91q0
	 GFnmrnVYWbpTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B52C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294419367.6904.10768369999879577661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7cf483140f7306bd2363b63df2bbecb34851fb763d7d9d4a213e47b471bbf8
Date: Tue, 25 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742944193
