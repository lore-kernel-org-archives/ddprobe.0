Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33609125B2
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740709134; cv=none; b=nayDC7JXsFWcj36P1uhLsh/JHT/s0s6jzoRxks0Le1im4MeRyLy9VKLZlUWeGfYJPizkC/1l4otYnJjtAp/n1IvdelTm1v+4p6Js3zaZfINIkXX1/1lyLom08UwnZ6J1RDPSvRnRs3t9e+pvPjcKBu2dQMc76GaOsJwHW0O5sbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740709134; c=relaxed/simple;
	bh=bczlb1sQmwfNJYFaKx1df+w8bE2CxwYsDJdPgAWToKY=;
	h=To:Subject:From:Message-Id:Date; b=t4rNVb/LB0nqcAx281T9UXuHOAnc7Ildx2fBHM3X0gWuIJG+uESo3p7/EgrEH+JHck7Zwvx2qM8IGQB5fAZhDmFXC4FFaa1BWVDkY2oJQDWm7KLRomFb5sFDgGQUtZpDqK/HWA/ynSgoZ6FUsbSMsVVlHZMMDNC1SjKoedQvjZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aX6I0HAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aX6I0HAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD8C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 02:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740709133;
	bh=bczlb1sQmwfNJYFaKx1df+w8bE2CxwYsDJdPgAWToKY=;
	h=To:Subject:From:Date:From;
	b=aX6I0HAMTQeKct+F7uREU2d88GUpMUsXHNalPhKdpFJpatV4WenhwnPcTNYD2KbVV
	 t3UEB5qq00HqeNcrO5Kygm78vVt/Jlq/hMkf/jKLB/ca36efW+WYMF3XWJUoxsqWBA
	 K27nEWCqJgIKjX02aaFED9PNSNUOuYVBq9qgOlmuYH/X84z3ViCR0cDwmVKQDooKIi
	 G4mySj941rdqEPBW1PFEIet9qsDeu/RkmELRsH7vEoPY6ySE/yNLfLCWJAeL06yDs2
	 iNWS14GOmEZy9SS0eMwf1OUaF5H4G01B5wPEnKcO4TM9bKg772I17sX3S23UAbjbIx
	 +boHau0FBhGXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2DC19F32
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 02:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174070913360.20951.9148743502203609289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587b13a826e984ccf4a87fee0145e21dcd6251040bbdf315fd75e89dda30d906
Date: Fri, 28 Feb 2025 02:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740709133
