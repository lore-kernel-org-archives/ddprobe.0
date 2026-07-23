Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD4A34029E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784817034; cv=none; b=Kn+To6UyQ9qIwU5lXyvPRXy5cSowxk197lJo+AErOivx56MwAnNFBfoZstVCWgpw6ui1XPoe6eIL2s7+SpMzkZN+fI/310OyscqRutln4ou/0GLWl88MVliRx9u+jrtP7OqV4eWtlU1+LJTltRY98va+kjyAi4ZUs0hsBEkXNW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784817034; c=relaxed/simple;
	bh=bRI/uYmBjLerK7TtPwTQ87EsUu8kBirFUDMkkLWU5eg=;
	h=To:Subject:From:Message-Id:Date; b=r+pbtR5zxEe/Ldt4z1wvPxa44nvNHdVyRohhTYlv0/A4w6hqssC4zHVLTupPYtS+IoAZYHbcZYG8vZsb3cpcHHLxDWmNzF4i1zyzeG/sOF4YVsUN/w9pXwWIWN1YO9xjKlVvnG/DF4mXJLwbyd+OYgsznElk4nAXwnU5LP8bhuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBX8SmFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBX8SmFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECE2C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784817033;
	bh=bRI/uYmBjLerK7TtPwTQ87EsUu8kBirFUDMkkLWU5eg=;
	h=To:Subject:From:Date:From;
	b=tBX8SmFMYOMQVhalt6vFm7HcpmZ4+JWkFAUdTWKu9lf+RjM6vQ2xcZQRD18doHUpD
	 UGH6tdVbc1HNDgGGsPWQrJuwehNlx3JiOgXtf9m61Dgu4zQ4tXpqMfx43YXBYeC4T4
	 M8VLSoc1pniGmWlLLLyAtxo1hIBViw+dp/07S6w2leC9xr1qb0aWHhIwBvT75PkXAj
	 opYSWmDmNv750F4rrhZXEmk1z3KrQOZS47TnscXkvqWmNfGn+SCmOJC3x5j3XczQnN
	 EW9MuO3KT/2WSyZPw4GEn4eucPvkTjsaiaUzKn1akZfj8D3ZonRjxqBZUKM49HY6UF
	 ypFghn/tzdMCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A8BC531D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481703368.4527.15360037508492519901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9f2c15a854e8fe65bc6dfbb12d5bfea40b858bd42b065e0be21e27933bc3e9
Date: Thu, 23 Jul 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784817033
