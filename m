Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8632360
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743293394; cv=none; b=TjfJfBVo3j69A6sFk3cRDKGRGvQjdeA6SIxVhSot0dpO+kgLCF9ui9FLBHsx6KocQxHQqNF9hyZTtoLvDqAWUaWoaKzgi5/HZHzuEzR9RPdEqKj+b0GgJqCDlRRRXlSZKwlUmwQytVdpRAf1G4h9w5bYY1YGKaLVtVcgi+ogjqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743293394; c=relaxed/simple;
	bh=XWMJHnFhIbnGXdMDYvwDHdftOy/EOoVrhOeTSYatI5o=;
	h=To:Subject:From:Message-Id:Date; b=u90OvoxuI/EHFd3WP/U1VYt9NcSwhiJ8fd39JWjUAIGq5gf6IyDrKlvwGGwNTxeqx1PSkBzJ+pqibZND8yKVVyfDWtV7D6B3fdIpmDWvNTQ/9FZvSWf7cDBRFZS4BsynuNP4k55F4R96ZRe/PVK6nCUO/zrJED3ckRBD0Fhd4eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkG1svzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkG1svzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2982C4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743293393;
	bh=XWMJHnFhIbnGXdMDYvwDHdftOy/EOoVrhOeTSYatI5o=;
	h=To:Subject:From:Date:From;
	b=jkG1svzhGXNdBewzxbCBs5uT2HJSaYihVBlBc0y5hST3MBCBdej1cBaXAFtYH0kvo
	 N4rP255tYaLwWlr0hNWTRbHT//h39X0NimqWvpLX3SaWbqAQ5MALqP9zm8EQvvKFb5
	 rgQweERE8aqkl8e4xAACFL8xf4pWr3muoilK0vl+bA4ou97nb4BKLqo3h2BNJiAIrn
	 lnN5wAYvIs8wnQZBYZOkkAIBZ8giExDVaAUeI3+iHHR0iuk5Sc36B5qpZP+oMggWmz
	 9NMX0W+WgN8Fbk4NjRWFrGotdHUQsocBvkbtHq2v2+HnVVwZeZH12gNiOViNuHUFrm
	 IccV7RT1Mg7BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C723C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329339359.21349.10748483639473347798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9710be7c907f4d0aacc59290f201118ef7d81a9020152527c3223c96981c5676
Date: Sun, 30 Mar 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743293393
