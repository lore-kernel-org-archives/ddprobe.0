Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BBA1E495
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727961954; cv=none; b=lzzowoFRO4Fp9yNMIvp8b6YhmOe90l82hXie0cY9GFWchFHoI/hrnCC2u5AOUFVUloajgUn+MEqfWL3GMBnFwQWYAm2xZbxtWYjOludw6w6dxSp5Xc3eFMfx4r2J6NI55P227h83ZUn483NuVB7ThMD3iQgos2j5OxnkiMNmldI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727961954; c=relaxed/simple;
	bh=ARpj//UKlqTuH7vkpFarpBKXoCJbdKoUlYQ1vcakmyQ=;
	h=To:Subject:From:Message-Id:Date; b=annjj0/z8vMZSqCI21VlJ7iiI1Pr3vE8sU2zjoPf2pwF/KO0BqirnSCOskxpTfs+bPkUe6v+GrRajrHAvFoij8M5ajByRXiyU0ZVK94/EXoEF7LdRtzyFHTU4Vg4yEq7pCsyTZUMVsjQqOZ2DlaOoLZbMWq/XdyqYWO9uJrHrW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNgn41su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNgn41su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5EBC4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727961953;
	bh=ARpj//UKlqTuH7vkpFarpBKXoCJbdKoUlYQ1vcakmyQ=;
	h=To:Subject:From:Date:From;
	b=dNgn41sunmdguyaUKlyJQjYeIVmR3g0ms+UfN+8xKsDQvdyy9uYE3xN7dW62AopXF
	 +jvWxM3Ev/9W3HzTRB0+nQuK8FhOI6r12XWN3tE0QI91YJH5q/tPVUyw3uWopHUcfK
	 46nRaWnTpZoFhOkVKBY7gMu+9lSyhWqgC2wliqqDRnqN1dfQ5tWacN48wyXxvxG1hI
	 40XC66Fr17kYr8tREofyk69GoY/9nEqk1iKq613Qs/QyR0Kvfb8PcPx2d2S/ZWGJnJ
	 7oII0zGjA/LBC82SjnF65BVn2HEy8w+q3IpIyR80TrXePsNdyQ0DiJ3u/OIciuUHOI
	 li4wzsvlpCESw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5C0CF34A9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796195364.14507.12098147191736301566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e3f92b2716b0b52019836689bc5322203bfcbb07f68a85421872a38d3bbe9d
Date: Thu, 03 Oct 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727961953
