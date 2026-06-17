Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAA13DB300
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781706994; cv=none; b=l1hooqp6qu8NQKj7JBfkZ8yXhBF3O67mstBHot3ocjCW+wJwTsedTd40oNTRxSzJFZQ66hl/+LlGhunLCSZ+2flvpoVQKwPlmbAF4a3vghFNaeGAZApOj4yqzngAKIbXVpngpgT8GU7A0Alzf6N84YBlJ0kcfvEXgBAT+L+sbbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781706994; c=relaxed/simple;
	bh=Dcka0m8BOVO7hF0+yQ9p2PNm2YDaotM7e4/j+eftMBY=;
	h=To:Subject:From:Message-Id:Date; b=ksL75GJF4vbe2y4quS6AXLlk0eBEm9IaYiB+tZajzHXKykszIaKzPTeFi8ujsF0oxE/48lMKIJ6OokIm+oCT4Sz+HQRWtSHmxuaPj1AB9WBlL4fRGka3pzonM6P90LpxqBZ87ST+UKr0Dd/k8Djgbf1lRFfVSOBF3MIYYNMkv2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omcROrDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omcROrDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B49C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781706993;
	bh=Dcka0m8BOVO7hF0+yQ9p2PNm2YDaotM7e4/j+eftMBY=;
	h=To:Subject:From:Date:From;
	b=omcROrDLMDHFG6fspDEoNG+XhJd4xg+0DpXR7lW0obNU6d9uVkIJBh8yut6K1rZhS
	 AsBD6MUjKovJaTYbze44khgtupZJwh9fCR5BwlslofxAJD9V1v2GLb73FmGEK9sIb6
	 KwzPvBdamL0Sc4DvxjJBDqnNe5un6DHXmibKYP3FfXdmu9mKeFghOpH+I9N71adbDE
	 3q5v6DelwnJRLiUWaBgRaN0F40aqSVlBLfzpZBybmeZAj4/r93bWkCF4J84Bh1Qo0T
	 FwSdLIuvdMoj31U6e9HoYL6z09M2iqIjAHuOf7CFAgIFh/m6d64RSUP1ffusyILNW0
	 ova89UXxkjEUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E45CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170699371.17839.18173834652588664482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd5fa15f530a03f3bbcd134f35755bacb0c468e35cd80623ff4f98809ce66b1
Date: Wed, 17 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781706993
