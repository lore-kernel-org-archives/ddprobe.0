Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F5736AEF
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718744363; cv=none; b=pg4Z1k/0p77w1epMNr7aCrRaTVdkDKnyIOUztmvaFkNFFB5gY1ZvJ8NfbX8equIbBlaG3+IdiQAtSNuTVPBDdlp+LKoMfr46gd9lI+vHXwrMNCbCTV5yxjt+6LDTvIRVfakG+Q48MSTGsj3LqKo1H3EgWGuKMUyQVrYNwyIEClI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718744363; c=relaxed/simple;
	bh=llaRcsTjRtC3Knr7TTOwblJOCFI60FCJHA+P1cilNUk=;
	h=To:Subject:From:Message-Id:Date; b=bbYWKwQxuzs9KbjVnG8EPKDF+plioW0tGYkrd3y84CR0A/BYKleA1aRpLTYK4nO9RQ+aGVCERbQkvuJQwDq5GDxA0nwRFbjh6V0UCXy+3Nfphfy+uOD16p2gx9bO1p7nGbgHMfsG8nLOEZqKD2Mg9sUb5isHXiJuJSgm0pvgDfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kcvt2zua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kcvt2zua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC56EC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718744362;
	bh=llaRcsTjRtC3Knr7TTOwblJOCFI60FCJHA+P1cilNUk=;
	h=To:Subject:From:Date:From;
	b=Kcvt2zua6spl5qB2ZgeEneyoJSk+3hfDZKw6/R9qIzLu7bFekZkmlJTlEuNg8XfBy
	 1be+8sJ1m+lSG+05j29mbGUljIdpj6o7qONG5f4BPgkRM6wQ2v0O/W0A4Yy6SJKRZC
	 H4DzDZ9omclR1jIgH0nykMZck8nmcN2x/uSu4gzhiKKM7qKMZyi5PFXQcWxQdU+QmP
	 AMMCDkR2m/B8DnYfMfJK6geQfqUjIxWM+BkYUD7FaM4tfAmIGYRnmmRCfRsCNk9YDt
	 8D6+kgYAGxdFVGSHq3vNPSkVAF1opvjV2lXKj/lo3qPV8xaQkOd2JlHur7p0hW7qkI
	 NRNHg+S7svFuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3613C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874436276.10405.9614851968230117602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7645290114194e936cc650c330b09b14b885930caca02b7af3bb7736032ace20
Date: Tue, 18 Jun 2024 20:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718744362
