Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4042939022A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782242194; cv=none; b=nY4kYj1cpwOiibJC8GdPEh6RhV856i39ppTyullvhM3KtzkzmDN9ze67XEe2XvyBDCLZCNx36eledgnlOc8zWnLVB0c3bzNg18V5BHr0wy0kwmBVdY7/8hzg9TetOBwqvgLEpXDUh5WQv+nfaAzxWTvG9roRbW/+9wrl8K9KeFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782242194; c=relaxed/simple;
	bh=niwtafEWusR/+LdL42ZlGXHxtrlZKWRecyCkWC5Bh/Q=;
	h=To:Subject:From:Message-Id:Date; b=Lueb0kOtOP1XxFxu3vfLvTTgO/dGvMZt+CuR20f6Il8RLrMut55NTmP0uBLus/IUZUoLTohXzIq9LBrTZY7vciSuprGuGnF3H/aDxK4B2tLgKbOZNOVdFuKDyT6pnNQ+4USV2vzmlk0P0Wy/YmMGbFX+lg/WgxhlF5izuRKpez0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAIQMVzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAIQMVzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B8FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782242193;
	bh=niwtafEWusR/+LdL42ZlGXHxtrlZKWRecyCkWC5Bh/Q=;
	h=To:Subject:From:Date:From;
	b=oAIQMVzseekhAhFl++msXlWvw8v61/H5QPp3czgslkOQgk+pBKDkyKyqOXQ+tCTSe
	 gMZuyhKxDADzFVeZ3jy76fMP+a5hPwtmjMczih7v7VQGuOTyIeRTxJ9w+s4pLRq1M8
	 JMf4Yol9REziaV5uGnwioOzeNUt4tiNcsy0ycdC/x2uOCeQZuV8TwY7DCTsJF784Ey
	 3gK+9eZsXLv//ncq7NZJaVig/ahytyGREx7U1DCbAAWyahY/fZaoJM2/7ns8cd3n8q
	 H3JCP2OR9S57q9Tuk9MK9gns63pjuKlLhqhmA1dPqcS4sK6KenyAsTpl2tf7o2AHbQ
	 YCDjq9zGR+nsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2FFCDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224219369.7449.14030975818246852519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72057d887c385937bd0122c7b80938e493d0dceb0c5fb0bd0db9e90576387263
Date: Tue, 23 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782242193
