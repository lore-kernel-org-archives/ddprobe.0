Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F161E25E3
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736532953; cv=none; b=IRPvonEDwB4IrYkPA8+EWzTuZ3cfRhPtyGH/tJtccXJTqfy2JLLQ59Mecg6xlF6N7aFqCRMQ31/G3ZdYy8Y3S5I+XGvAOdETq6lMjtM/5kP4H+W1do74ibiltIBMTkbsmR5UAPuJr0fNFylZhQyTbvK/SCSZN6R0ZuKUZsbrX5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736532953; c=relaxed/simple;
	bh=10rnC7FTUuq7eop12PEjHp69dhXvdk4ssPLIS9lQS/Y=;
	h=To:Subject:From:Message-Id:Date; b=Qep4zWyJEeq77kzxjLNfbKleLzVxhWY1r2gG8Musw93rHgQZLGiR2hONrtGbD4NJiSBPzxVC3mKa1uSByFEOpX7rsZDsqAnArIFNDzcNoJcVHaWEC1CpumUlqP4TMQEsKDTUkS39G2owPKvkygdTivhpECt1KOzcaPjrjvcLSS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFu+01ok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFu+01ok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2F9C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736532953;
	bh=10rnC7FTUuq7eop12PEjHp69dhXvdk4ssPLIS9lQS/Y=;
	h=To:Subject:From:Date:From;
	b=XFu+01okZeJfQgLRJMxfjcvQIB/kLREX2wHlG0wiJbrt5Nx9QOEOedwGJYqKfNRpJ
	 RVnZ7c1Zhbs0c4bFg+srDmCWwWQJvKYGhYFWflnj1mUPU1hM+DFPwAcA0MMSKZfUsh
	 yrOba+xjGD0SFK8BilKdqCKfXFREJuvZRg6B936ukm6jr7WDp28U/lvmO25yKreD6m
	 RGejN/68PPDU96qWrxCHrmRGMCN7KeztzpmUs6mOHxhy/DWUkmGilMYuZs2ZnNFUe/
	 iAhLuyruB6EM/w9OHXj1L/15TIyMT6+FICXfiYMEOdBXUxB+s1KqLc6hV7TIUwUsUx
	 CgG2HxQ10rngw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96003E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173653295360.8008.661702768398836464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81fee9d610862e21b8398870f53f076673656ebe0ccc7683f23c0e1a889467f9
Date: Fri, 10 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736532953
