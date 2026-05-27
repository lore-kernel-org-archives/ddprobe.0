Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0688B3B5F63
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779878554; cv=none; b=SMs3CrVQKkuRVWdvnO2VfB7Z7aJ+OIggFOPe/m1nk+EznsgEP1osLz6/5N/1V0B7R7BKn8LxBMpDWLM3MABSSp5z0ivpSOuMIiZGlk64WntLZXUeNYvc4amBFHsmew2Kq+E+0HAAySjUXFOqEINrErG0JAcKUOAvxzRAQuhF3SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779878554; c=relaxed/simple;
	bh=pMfxzdXo1nVK9rlfm8MUQDWJps5trGvi/oSxGkHG+GQ=;
	h=To:Subject:From:Message-Id:Date; b=KD5HmeSMWRIxbFoT7ATyYp0CAFBDX5QmchdR2eb+Nkho+iT2rWix2qGQr7kQaB5BUUU/MYyGcGasj57Xrv+sUZZLcmbvYKB1PL3hGvk4P4nktujhEgbgac2QiNDVH+9BwwCSdBYcDyDtoO+MSMId+tFVJmPsWe05zAlxv7vAfOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEunSre7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEunSre7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E38C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779878553;
	bh=pMfxzdXo1nVK9rlfm8MUQDWJps5trGvi/oSxGkHG+GQ=;
	h=To:Subject:From:Date:From;
	b=KEunSre7Ag0n14v/RH3+qayVWH7FHjH7boEaB9zS+BodKdTlm+9fqRTDyoTtynrDQ
	 gttvR0B1ORMCzDmM0JFEJ9QSAZ2QJvhkq1+4UTrbhhX73Siu8f+DCoho5iJju6mCt3
	 JW96l9Samef/rBbY0yaSOmyEyTl5uf81uUkrTwF9ppvrShSeNZKbqWJb8aen2lD4QU
	 ECriMSsZt7O+z+WP5qfp7uh2FRnrvXvnJ51gn/8rwD0CV6vw0fnHctsk60Bu32HeVY
	 pmuAPPegh86lpXeUyKiiXqts/9YO7CYr22l+Q0oYqdCCT9WZQckpba3LY2bB/1jDYo
	 jiXN/LuAMa3iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A728FCD5BC9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987855367.27578.6986701541730927814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be03793e1ae366f811514802a7762f42b15783db5809a6d8c32fd5d1476f67b6
Date: Wed, 27 May 2026 10:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779878553
