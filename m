Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66F869DE2
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708461497; cv=none; b=nfmV0IYxJNgLvkgVzVO4f+EgKj0ppwRR0j34Iwo5eLukdGZEwfZe/rwMhe+0spfCI5ZlrP2XiDCAC4yTpk4SjAXhU/AfWw1aaOxT2AUFXpN1Q3/4KMBzKckAKAObzqqcLzUy+ql4293aZRbSst8h2xY4P1bnnokdhgaY/NdhTJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708461497; c=relaxed/simple;
	bh=djFe+gOJg6Idu1qsqiz0AP2E5crfzPEnpXki0I6fvhM=;
	h=To:Subject:From:Message-Id:Date; b=af9KWV+FqGregDKlhKLGDihHsZ48e+xJtkw8LcUy5ScYsfLqlomE3zcGUX5J6lat8HcA8FR3gheJ1O0a0t8690VowuF3oLqNZ6IrLF0lfilZsE1v305UjWH35HAaXtZJxowFkH3JEJ9uA8J5KB+zMrnIaRtK0t4OvqcUMZ+3vXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5Vo+JE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5Vo+JE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F08EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708461496;
	bh=djFe+gOJg6Idu1qsqiz0AP2E5crfzPEnpXki0I6fvhM=;
	h=To:Subject:From:Date:From;
	b=N5Vo+JE7fZBft5qE7B0q2GpxHcPQUNYsyJZHwuEAYUSC3kS6pt9tN1dNbezjURWON
	 INo0xKo2Hz+fR67Q/mntHPCWlwoIYn7ru/syh/qdDxnig75wDGR2NJ1WE4bl8e28bu
	 0yNz81vG2/NHsVsxOIZUFMTEVNsA+o40cCaLx5S1beIMh5nyBoPkXpg+rciU2Q55fp
	 Qfy0JhSL/RYYK2Yns+sopaFDKpoIp+JQhlMw6LclqvrrdHLxlGqhvpBq48m7VgoOeY
	 t3Dd0xYpVjbeIz8SbMrMzEEHtvQb/pZ/vQARoPzRG0NGP0OnRvRCgzjbRnrp7WVLjI
	 YvezP/8zlDn0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F506C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170846149644.15247.12205702366135317926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9975a1d8a9d28f9b0c10194752ec8709086a5c07720895b87b3836f423f062
Date: Tue, 20 Feb 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708461496
