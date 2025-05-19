Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8D927817D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747661394; cv=none; b=igVJjNwmKkaK0qK9eXOEuNB5f82/qk9Y490Hr2O0I8yphSoM9X2m8sVjVn/kOvr8q2d2ysb87cAUbOwhr/aHwBsYQ58wKmGFNeLRVuTEMCjgUjvouTBMGVRUk/OhJGBA8XkAUxd6GDsc2totZ16XQqHCsiybvPaFcp/K/1VPUHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747661394; c=relaxed/simple;
	bh=OgfUY11mjMaBt0rLgxaimlO46mGa+aX3GhZztLSPCvw=;
	h=To:Subject:From:Message-Id:Date; b=cLkmr26QZ3cy6eeHLj4Q3XmRrXbzXwJsIBaz4zTuwJPMg0Bo1YHvTaZwMG/2PDXhDxOPVal9ptfvLKjWwo3wEKmF3Nd0NYaq72iqvePix2NwiY1xAnxiuAiSS7KnOEKWvNc9txWNnkGIuV/zTo6pQpDT5NizedPLXvKYsOnJXvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHPVKrw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHPVKrw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06F4C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747661393;
	bh=OgfUY11mjMaBt0rLgxaimlO46mGa+aX3GhZztLSPCvw=;
	h=To:Subject:From:Date:From;
	b=RHPVKrw8316xqD9A+Mzo8k5BEx7IeeADFBLVBvNiN1P2HsxVwC+djc4yjgsLxwKie
	 pgkN9S3UleYFs7J1lQCujSohQy3nsO4v3rVYB//tshJrQ4N6AwLh4pJwibueoiJ6Fl
	 RxhTwQkBwCspIMCeGN76wM2vTF0E+/kv44oPs1beQBIaWnxniH1yg54KZaKWZyWe56
	 DdDOuGVtt6QLDL30FVdIpjnvHhYUtxyGHOEY1pEfm7h95cEj/RvcMKI3gobjKGsygT
	 U1An6IBc/tutP1SXEBoFc3I1coPRI6QBKpx//M/Ilz9gh8n1tg5VkYfDqNGyhB4o1M
	 pVER9gD5Tzz9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B4C3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766139357.13060.17587408306797287291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0ed4bae2a0ded6490a4296b6873394441e95fbb97fe882610495592a9e2988
Date: Mon, 19 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747661393
