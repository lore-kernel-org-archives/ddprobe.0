Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D92664CF2
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 09:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713778823; cv=none; b=nbPETjzkHXRNFl5GEnj0OXIZF63FHZGerBt/ybmeQLcCR2DiHxhS2/JCZyT8xTjFtbUBydyp5pqa10XHZUA7sZPgqF/uZtdtIWKg2SfmF6/dg7lIJueubiyZCjDseN7KZOdbli9927STinsY+Xa3GjItsArt1GuHLGRoMA5pEhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713778823; c=relaxed/simple;
	bh=tfTVP5HZD/iBMhVQQhxwk5+8mBs9dvFBIa2zbmwxXk8=;
	h=To:Subject:From:Message-Id:Date; b=Aq9nk5i1fCvqbOu685zmS7GSTdYxEJ8LAjC4AaWKATK7KQXJG30yNrZnerPm/mLyY2cTffyyygck1T5M6SvEtkrfqa4vEasNrPlAdppWIiC9ZnTPACYqYIBC6cyPBlCYiP88NAsR9XHVSwWtkp5++oqzmo70g3oqEeMVYVX4zFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hevdoJiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hevdoJiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3F0C2BD11
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 09:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713778822;
	bh=tfTVP5HZD/iBMhVQQhxwk5+8mBs9dvFBIa2zbmwxXk8=;
	h=To:Subject:From:Date:From;
	b=hevdoJiPTiwW48GfvAhrF4KXp1nG2foAV4cZdkBecuslBu0Dyjrbx8QPA9it10+Rm
	 Kuv/N6Dvzo97tAMVPqetmLJ/lZmvyFhoFmCfLnZugQfYkZgfvTf2CEi11ph/r0avMR
	 oTIT/NgM2gL9bLflpfCDddCF7J0DAtLe1ia5g/QeDXueeoLI4tVPnNZ3zKkb1DzMWm
	 cXvUT2ajxlPSyNzKusp2use+TNTFyLTB5tal1ZeazuAHx9ZD/3Q+1fAAmwBDm/nLgH
	 Og9xNSXnT0/Wuogkx4CqN6UUzvFBLfeG4TyriW8QtHpBfL+u1jO+Y4MtIs0mxEhl+z
	 QjLknHigAtzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C757FC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 09:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171377882280.12797.11433860334414797989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3cdc186ff62b81d9ae1f3fc20b16a2bdc5cf5a46f0851b3df86c2f65a618dbe
Date: Mon, 22 Apr 2024 09:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713778822
