Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3897813777E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762678194; cv=none; b=ZpdDcrMlHSUKQU9s1l9BHWMNYkqJy8wEVe1irjIlj8OmItIM6kWJM6dO+8dqs3MEefDnyJxyGefD0XF1aFuNfrieU8cf6wfc4fgS0LT16pEaycMktVDM7SJjcfWe9xwkQ8/1EZzh9XKB24nzu0HHNchOfiPN9xK0h4XCEktqbcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762678194; c=relaxed/simple;
	bh=OyT43OmOGF4jDfDXrOLKU8Pfv0Zosah2KWR11EDZlTs=;
	h=To:Subject:From:Message-Id:Date; b=mkfH/HIAXoGCkG09k7QxBprlUGzLE96SQjNDteWjGa1psV2Jd11CU0/qNyfrd/GzF0dop5QSnBGuzbdnxRp0gauIH4tuNcVOBU8/aZuHtF/6HpdPcgZ0bjWCyCa8OwxMBx6vlRCokyyxzowIBTmu5K48Gu/MPmVs+eJp6r1i6Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUaVaiaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUaVaiaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C463C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762678193;
	bh=OyT43OmOGF4jDfDXrOLKU8Pfv0Zosah2KWR11EDZlTs=;
	h=To:Subject:From:Date:From;
	b=jUaVaiaE7qP/h+BzcwejebK8kOjxh7zlD/jdYvf58Sod+zi/KqRJVoipHglmS72A+
	 gjVmAeVHOnBdxSZpZ9aeygHyxWEwa4btSzQC/oVlYFR7Q9u/kuRemeaP4EOj8qO+Cg
	 eVTgvA0l48LYpOnYJP7selYtuvzPTjG6M4Z+qzEl3d5zV1AhvfQDHmNjp8CpitU0LG
	 5twfxjsatzHu8x1UjOQTkMI/VMHCXXBIppvV773FaSoQWK+PDg6fepEF1K12Myh63w
	 jN5mIWNXsPN+0use84Q/kPIZokn046Jofb7eGJHtKdA8jO8jNpqtfSxt7/L4L+fNRS
	 EJqE+5bEOAbOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920BACCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267819357.28800.17349684024956253026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40dd17cf6f30c21b283768c66a9e8551d39065e55f943c15a6b891917999c2ff
Date: Sun, 09 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762678193
