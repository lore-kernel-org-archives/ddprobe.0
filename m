Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E9F37A3AF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761762594; cv=none; b=suTuqPQxL7Rx8fseKWqinBE7pPlfUWSl8HexoJMuCpOofXGovxmiFlxslKTwI4w4WJftQLdxmLTzrj0f155GnyvbaP//rIc1spJPehBNPDvxzXsg7e/EuUF6egaXaNuOciuaIN9NAWMFms5KmomKmpG2p+Y1vUDYqdCcfqIh8hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761762594; c=relaxed/simple;
	bh=mREGdVYPQtvURolAkeLlHfv6rXN02WTz/a0yrHIBo6Q=;
	h=To:Subject:From:Message-Id:Date; b=aKvgThNF1qje0sgBynWA+0vmot0RBpIvv+zXpUlRkOvbISa0duWwB9sVE2x67sHxsRN5E7RvSHjFvNenzUsIoh+ueRsiNe5kZoimRi04Jrw28fISz+uaJBxoHY9AHazxi147y1x9/gugbPJijabybdjv7avwgUdB9yvtKhQqLVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZI6oFnmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZI6oFnmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A047FC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761762593;
	bh=mREGdVYPQtvURolAkeLlHfv6rXN02WTz/a0yrHIBo6Q=;
	h=To:Subject:From:Date:From;
	b=ZI6oFnmMz9o37ZqfVUNWxE8ZklgWVSSxFQYUGy1vqdGf5zlw9atCabAAb1JYvM/Ng
	 42b7Vhy35AYYcLsEjkQswLMJDAiiur38HvDcqVeJzI4O4nU8eoTvoFwu7at0qdmetT
	 1oUbkWD995CZakWdmj6+bu4CEtHuf5qqKc57TGdUfxFuw86HFnt1hcDlJ+n3A/nEzC
	 Yw4T9BNsXaIBacRnT6U45V81h6Nb2mkICxjL3bjYh/xO3Sl3o8oCLteakWA+31PfP1
	 zns5koXHlU8wXg4MkycO8D1DXiyDewlApfDp/qKz3OzEd746ef3NYwmYuV3TbauhpX
	 MBedSk+P9mFOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D79CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176259358.4565.14856760221376751455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd415deb3588524197e705df90f3cfc7aa39f41b719814bfa549da59d812d02
Date: Wed, 29 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761762593
