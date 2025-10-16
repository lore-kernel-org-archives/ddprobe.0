Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E82298CBE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760646594; cv=none; b=SnHtJ7a9rHfLsgTN53u80YXhgxj1yU9agIZUXGA63FcsaqE4Pbj1T/RMcsGMnVE/++TNpZMk5O18flSDEp21clHo8AO+jKNjadowbRj3DAB+j/C4Otgrs5j/mDpwbM9pLkVpwnTkrDRoBmydPkVKU0xU6fMbJ8dsIUWynbcHP5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760646594; c=relaxed/simple;
	bh=m/AnZsdy9/06RVdNfctoG/B7IFjLfmn+wxnmVPjW+b0=;
	h=To:Subject:From:Message-Id:Date; b=sKIDmRpKJmT7GtZGDlITOJUnbtNU5VSgTPs40xHJwi25sCjZpaItHSCCmz2SN/ZNGr38C6Ajo9n1UcIbTUPxCfhsOoLS74mE4FzfrDUIQykouEervVJdNRDGB/XwkrALY3QY4EfKLEI5vx5tPDw7AK/j7k3Y72Ge1UbyKJiEDQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABEfdGyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABEfdGyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC89C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760646593;
	bh=m/AnZsdy9/06RVdNfctoG/B7IFjLfmn+wxnmVPjW+b0=;
	h=To:Subject:From:Date:From;
	b=ABEfdGyB2qo2+Jweu+zZsjnq52vLwniHSFSTh32KCTXg9c5CVTnkQl6cLdC8s+4Ub
	 5K0BB0cOTs/lQrG2t/E8Y+Vf/XVDKg8zHEL3tHXf/xxqG+2tmesulq+UlHdCdFZiIX
	 FYY0GFehFqQggLaeoASp+vSE56wvjVZRg4VuVryM9WGjoAjGRGpxuPmByzDRiMYZjh
	 T64rOkFAfOlLV0tSiQ1oztvUJMVKhzC9vkOGqtanhnXUaAdCqV/Cp6QUDCjyVlsVXx
	 QvXa4gMqntL9yo3y9L8ct6emDO2WSN7S+JvQwF/bGkHqJfpmA2wfAbg6Vkvi3FDaLG
	 NVBzAzzbO5ubg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9DCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064659358.31826.8512727124948984489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a93ac6d837d7243b95575f80da64e2261e2f56c22d48ac2bb0ee932b21d335e
Date: Thu, 16 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760646593
