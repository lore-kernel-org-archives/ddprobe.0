Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C03A1AA1D9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755337795; cv=none; b=kgUSkbUfnaWNJPzQLVGo74C5bfBNn/BpNTWBfn5qnNIWvfaeTy6eiEXRiLgraGvouITAeRmF/2t2xKWGimjMMjMtALBkhaf0pxe73VjNg5xnQNbEgVUJB77lhRvSSZLTN+mz0A9lxIbYGpQ4Aft2HzYrx0rwOYFAE7nAF2uZCYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755337795; c=relaxed/simple;
	bh=RR8dpuV7HxLLLixlyss+pt4p+yvU9DwJ9LxzO6OGBdo=;
	h=To:Subject:From:Message-Id:Date; b=BRwS1KmvXH3tZm+xwkjM5WObjCUkIdlTmFUGbnLQzEDX4D5JW5yf1z5iGBSxnsQGpAZvTxAR+U9YaPUBDKUBaH1TOLDDLyfBzgWFG0DDh6L6hvV7SOjUSjdArMj74j5F21LgePgBs6Ze/2Jm6O7jrCFyAs9bwZWMAOZQGxCHrhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFzBQM/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFzBQM/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA9C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755337793;
	bh=RR8dpuV7HxLLLixlyss+pt4p+yvU9DwJ9LxzO6OGBdo=;
	h=To:Subject:From:Date:From;
	b=KFzBQM/IHtdJX2DYW4IzxHUbEdx0xE8Ql0adUT6uHf21pYRc3Qz8RydZcDvu9i4C0
	 BQ1eT9CQBKfM5nCEABUiH4rkh2DeJk3XwGkgvRDTH3lGJNmyPnsQU4aO1jN9tuLq5s
	 7vJlnbqhfi7CgruKjgQhQtmtNf/VrR0mNJf2G8Dh5HVFn3UwEcUHoyuw3QCYKCpDFV
	 kX1ic/3s028cSQdxX+h+t/8dA9zvPkPdb+oAbo8+Rj9WJpTIASesFJWY51I3Hx7Emp
	 8Qyo5z0LsDw3YNn0U2C9DzyT6pCPgsqTxHH0uL6rg84IAAnu1d/aDo5V1QDa+FQpYy
	 CCmtRvQgaeFlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9248BCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533779357.17740.8715094013880065657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb6b7fba3794e360915cb23c8310e2bb248d03f547ae46d989e4338e8b8d47b
Date: Sat, 16 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755337793
