Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A68D145B21
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735196754; cv=none; b=H0wAmqES5UZ9+9U8C7DYKKildr7BJn0pXBC5MYKWjXpkF+mrAuWLAF08psN9516PEwEt4YkGBfGcYM7IgPm3vYjsJ2fS+VIMq4kvxMfSdrC2dDVvsPkqxCQBRETWs6/d/lwlM4tUe2H/sQfZ7WoSJVqDFX9CG/dLcsHpF36iFMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735196754; c=relaxed/simple;
	bh=msNrqClDsTlKs5mSe74QP4ZAY7oHmQuP6gUk9F+6wKg=;
	h=To:Subject:From:Message-Id:Date; b=GIl0J9Y+oBSYwqUCVLueo9AfwHZ77tX2Qj9gSlI/ar95fXaFXAEO7A9JPbvxVw1nka7CcdNQyEppnCsoR6GkekM9hW+x0B2EixUBR9+00SXo7eDjQuiQd/eDwqlFm/YX2U3bcz1SokEGMtZKdVZ3xzdNTJOut+fZOgsGaYL4OXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KR7FF+db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KR7FF+db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6599C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735196753;
	bh=msNrqClDsTlKs5mSe74QP4ZAY7oHmQuP6gUk9F+6wKg=;
	h=To:Subject:From:Date:From;
	b=KR7FF+dbU2HWr0fSt7mhu1pyYDa7DnOMYjOcsDKwfUHuYj0Wu56PIoR2q/Rl589+i
	 z1Os1enZnB0Dfozu/teVhshnuv5PkccEYbiC7WPfuS1vrEMhDqfBGEqtuoNHSIyJ2e
	 IAVpZ2aKTgodsSYD1PUduxmZyAJT/8ZtK2YHepeVXp/1gf6MnPXi0NLn50f/stRKwh
	 ryNqlFxI91Lbb2iUWSPF46N6BeywumASmVrgPZ4xpTarnVdlxfCoOAbA+JwsGUvk66
	 sp5srPskDVsrHFybSf49F+hK63vkm3TobPG4iYCXUFg9UW0Zi5JydLv6mlkkNLI5HI
	 0/h4krzvIoyPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF692E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173519675367.14023.17814065246344959744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2313ff8550ef319deaa1503e140505e37df38693a750817ef94ee426471ee5d
Date: Thu, 26 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735196753
