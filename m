Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1BF285C88
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774535094; cv=none; b=pTYmD3WoSgozlP5MMvgo9pmKNomsXqxqIQHLGddPZWu2ShKrqqodws1qfh5u8xEiUbbj7+JQ8PaEkm9PQt6H0X+ke4mabD4ze6AUaVnOSoPdfFjWWP66midKkc0CyaSMz1xwGGD7Hg+2PlyRzn6/Cy5tragbWbkuzhUUDulnUaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774535094; c=relaxed/simple;
	bh=0TT3gDkwwIsh0u1waytd2/5zmE8yEQsjaqZRRIDJJ5s=;
	h=To:Subject:From:Message-Id:Date; b=tcSwbGX/csttCkcnSjYdfmu2OtDYY17b1rofP7vZtjo3C7jCB9uaBHLaVmXz9fKtk+HK4I7vO0j6h0lNfU70Sd8TPZecvSraE37loJljDvU9ehJGoYkiU8+h8PDcCfT+0zwzuzP796rDuIGXxZNZT3l1hzzCqW7QqLn13m6wXrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzyHNmzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzyHNmzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4288C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774535093;
	bh=0TT3gDkwwIsh0u1waytd2/5zmE8yEQsjaqZRRIDJJ5s=;
	h=To:Subject:From:Date:From;
	b=bzyHNmzQF7dGG4FqQcG1o3iMHgEXMWoISxyZfljcdZq1QKvckOX8+85EvhHQg5/YQ
	 R+F7NPjz2R2WM6paxYnfZskImnca7/xt/LCUxk3PZ2ckwnAe1WBsXM7CtqrAuPR7OR
	 xQzVTsyl6rYhkUyPuNm5OCNGOp98Wgs4/KhfbRYPY2ZWud+30ar6iG/iHGa1+z7hRQ
	 vddsboEwowQHA+cXCO/v9NzEd9E6j/DafXaznOOI9V43HmmlgRKCrA7y080W03AaU+
	 lJi4PKxIh6LvR0cTwPXdpJ8w05FJMXpuv2W75zABu0sODyKrx7YXsQg+b6Kx5/UVrD
	 nSqRDIx2urKXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111910A62DB
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453509358.3774.13269782100004391521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b31ebc640606feea86414eef42f40f8a9ecf030f47762fbc824cf9e0571de11
Date: Thu, 26 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774535093
