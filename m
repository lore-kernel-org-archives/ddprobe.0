Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50136331A7B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781335594; cv=none; b=fz8OttGYfk9D99C7+TGSmt2IcOvTzmqwUzOxC/J/sjiMbS7wMvYCfm7WJuFox6yib5FN+F5ZM4nkGxerdBUOf/0QUv2B+rbVwEFkVVKFNXfufsBUOyywV5x+0omW3m8yEOxdIzEbOWCDBXsZ/MmwEYpPfQNobYAiJsz6uqF9M/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781335594; c=relaxed/simple;
	bh=2vyU1RXwTpa5Nqvekzkk5EMLbnl176EZJs/FkEkPhKU=;
	h=To:Subject:From:Message-Id:Date; b=qgH/kK7c2zeilmXUDcG2DrI+N9cQqhsI/fgibF7GckbiF0xu2uf3V5cpGiq3o09ruZ8SwGkNTtnDP56rLSECnruPVDHVcg1ovmmcXsjgDquHpAHR05YV8fj+aPSNypPviRvUIav57nucdCpQw46Li/QtX3zEiV48sHFqNAvnNEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btxF9QTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btxF9QTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65D8C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781335593;
	bh=2vyU1RXwTpa5Nqvekzkk5EMLbnl176EZJs/FkEkPhKU=;
	h=To:Subject:From:Date:From;
	b=btxF9QTlUVvMky6VnjgUADz2woQxfYGIQ3uXz6cdHsu5c897VjfYmyZd/UdVDtzkP
	 tm0yaSvH571gAma5x7KUjgB0Q4y8G3OJMueYQo31paRkP+c0+02lcTewWMObXNt9X2
	 E9Eq0g7nCHvYYAzXjlKHiICXCdnNiGPDogfg3rPbthwhpZe8gAQCrEoEQTi7W6aizT
	 UHO/qCHOA9uvuyyYyIousodHGgoxkDusVzPY+GrQVkb0Vga+gZyLWolZn8DmPVp7Ox
	 SDDg52vrM3zNT9b/FYanmhUhRoDjce4pU/HZ0cOmrPE4bo2Sz0vsHKpAp1K1jmPYLB
	 YmQz08hkczahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A962FCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133559368.22800.16576554974171054776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165e5bbd5ccfda3da1437a584631a169e2c435b93d8f4051feff6bb5ba0dee6c
Date: Sat, 13 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781335593
