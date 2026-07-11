Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438662D0603
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783800514; cv=none; b=IimZ8VZUUxkirvEnqlQGNy2l1BMsZIjhvM7N4Zmsu1o8fDiDOPuVgtUm9EfRJsRKAyW2V35SY7h3GRmHWqyzNu/H7g7+US7cewz89fqsD5m1uiNnooxHbPpAqicUBauG9KKyidyRqbacTLJQajqpwa0nhAgJ+lbJnTX9E3FoFTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783800514; c=relaxed/simple;
	bh=/pI5W1P98crfE+hKlsuR0fc7vZZ/kv9XtAFs9FXdw8s=;
	h=To:Subject:From:Message-Id:Date; b=rXoBdn/HEX0RJQF+kTzc6FF00q8YVkjZd1fl3SnfaUhzfbA0aZAULMZODOpamboIqpwbEWrI0DlvkyjF4lw01wkqwUzAI9eszkQceTNkDlrtYGPH/nXoONorOi8gCEw5/bN9Fg28HE4Nwy2nzarK08Yiz0wrxk9n1MDlIhp3pRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNgKyEx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNgKyEx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FF3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783800513;
	bh=/pI5W1P98crfE+hKlsuR0fc7vZZ/kv9XtAFs9FXdw8s=;
	h=To:Subject:From:Date:From;
	b=WNgKyEx++tpSofgiDsMIoX+gkq2R7z0N6vHrUyrBT0lm1QacB6dTgn796ZUpJ58sN
	 gLM9IOsFFi2sZRBQRIupm0LV3fQVXxcmMMDYDVmL0JcO9e+YHdsUjB/Gkf1frlVn3z
	 QpZntX9H1M1Jf9kT9LNUARaSxV8PhOdpQJp0uJLKX6Uftb0xpRutf2YmoECfGIDLri
	 WCs7rfvBlKB9PgkxfuEhQM5AO1z0V1esVNTMGnq91fCHdw7jjJvk4ciNetkBfkOMfe
	 huMUOwVji8r4CYLrvY5AeBGRAz3VcpYDbeoX0rYebGsnLQ3ijIMe+T4mvUEeUf+fs5
	 yp9rVHpkLDDaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC396C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380051368.24598.10165338004954435180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fef99eabc3ff6c8cd4716e8d607372fc6a449de85efe6f3fa60bed693320164
Date: Sat, 11 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783800513
