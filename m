Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43329647
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745143794; cv=none; b=IlNoJIDSAzy/Zi7aCfKuwD46l+zAsu67sit6rWPdGFkP8J5mXpCdONyegPOVqM5Q3ABfr4vnZtyKbInVNhoM9XgAh7CfsH9OLKrcnnOK3UEn6kYG93vN6oW2z6xec7fhqzwzQUQKeu0+UAAXSrhLxWDMv4SAWQn5oSSRWgIL/fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745143794; c=relaxed/simple;
	bh=omMNZNGLdbOJs/qKtzsDMjan293DcdbDS/u47XVcokA=;
	h=To:Subject:From:Message-Id:Date; b=RBuYhUKHNRQ8JO6CQYWBbx5wVkLqfujeEe9Lb0oMHC8ZoVp4Km9xPnMdUMiGlMABxprI4IyMR5x4sH1EC10I1NKZ4XrYZ0n1TT8JnefERCLoYJkuAGXqaAziwZJZtL/T/C+k93S2UyjuRTQ7cutu0SPdK0RiauVdpAaEMxCUneU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGzh6xl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGzh6xl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD072C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745143793;
	bh=omMNZNGLdbOJs/qKtzsDMjan293DcdbDS/u47XVcokA=;
	h=To:Subject:From:Date:From;
	b=VGzh6xl/04wC3+LPlN68G9aWNf367rKp6iCwLj8Wj18xOqt3hL4UnPYC4Jb2uPVdG
	 fzOA5kRPuwS/aO0o5Vz4zmQ2U/kSKRBLdVG5YTXElKwmUeS6X2XfgIsD0b8T5kmUkT
	 qq4cEWyDww+1BEDXoCiyX4mXTVKqul/N9Z6JgHIgFly2pMUFt7LXGDi/8SE14jtc/x
	 t3K7XyDancZCyC66gwOYU4/cqqD7A77M/f1CgLVoHp60c90yJCCIBt3EeXEUcMaWly
	 jmkwhRACZ0SyargT/6GsWTy68/AnMw6yqRwQbEZghfSMZgjkGGbw8lVN/61JpGVK03
	 G3aJEDLDMxb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9621CC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514379358.19208.2472265799523538103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810b2cd967179925cbfb724934642bb809b7239bc5737c71e30bbd382bb41359
Date: Sun, 20 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745143793
