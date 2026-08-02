Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F47548986E
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785639634; cv=none; b=tyUCrkWG7QrLs5+++ZXNUmz2LAFuKAznd/MmR3YmHWrAPNg1fuUAYgThRKXdC8P3216LxfIiw0EgbQgG2sKyidh+nCKM5/ct2245wuEQvHXpr2RubsAsQOz5uvteHSP3RmbRmIu9FkGRXcFze1bKvV982wI62Kw0FdXjauXpGL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785639634; c=relaxed/simple;
	bh=lwLtg3uei/5/yHHUhIZ7LXMrq76vtyO2lu7cIuQyjcA=;
	h=To:Subject:From:Message-Id:Date; b=bf3gNkoGSPakZDRzxaaYcgzP8bXfut1+Y6hHw7xOTEzNIKI7reN6NIqk5E7c7tY4oSUBYvCY+OiI2tiQ1OeOt0O1unI2KfkxM5umPDUw0MaUr40NSSPAHih4Wf3vO0kXporXi+9Av3jbhWkBl2DWNc0/mmfH0R6adg6SJmc2HjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZgMhvEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZgMhvEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A5FC2BCF6
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785639633;
	bh=lwLtg3uei/5/yHHUhIZ7LXMrq76vtyO2lu7cIuQyjcA=;
	h=To:Subject:From:Date:From;
	b=ZZgMhvELy+ON4X5Fz0dc1IyFJcRmjK4P1iNHt+/NBXVRNRZUv5vVG+w7s2QSdHY7g
	 lSEMJURuvzP4sTXl3h2p+qfH2DnPNLD0P1R6pqId8EwURTDtvohnjVU4awX5y3zPFn
	 FNTnvQKCMDe/OvDI0EZmtaZsy2CDVUl6cLK8QbPlIa/NWX9AyqeducaTs44mx1mHOw
	 E3Ti29DEtXEssI1/PproKQRkBYFDDdPy/9UG6U/UC/ZiC9UQIjHP3TU9AzNrj8JApy
	 WjvXFfL2UFVy4xOVI4kiFTTZLy9tAyR0UzXUZ2NZ5zYclAhkAP3pZ7ytbaCkt973X4
	 iVqbaeHaU4zsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE130C5516F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563963368.16023.7255241226172102140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec3d27c4e28349af0064ff8482130928f893f61d6b369a3fc96b5b62884578f
Date: Sun, 02 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785639633
