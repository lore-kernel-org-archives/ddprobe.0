Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E84D156661
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786273834; cv=none; b=KKBHGnQvLip+NE9EW7Hj596L3hwXrxj2KhmxmbxdF0rzL0tOLLo7cgwwUTj5V2RVIADBC5+rUspNCbVCKmy45khSZjLgf5+t4AM+MR3YaQr9qHFFalS6bbVqjUiw73bLkl5DE9jWk3L/jefehgyhpFlc2xBM1OzFrASuf7a39ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786273834; c=relaxed/simple;
	bh=1Ut3/tkMtAdspqi6ECAy5NTiXOIY+4e5AD/n3W8M8CA=;
	h=To:Subject:From:Message-Id:Date; b=q+yhcuMex8BngJnfeIqfh8hBGbbL8l74/IFFi87+qWKz+IZz7R3Y0wQ7RycCt+YmqmCoQimuopxVGZAw58oSrNJWX082RRnjgmCaG+eZhz0DG6w6s+YFrOIlbZphMIrP49eXaNde2V9TPos4NBQsOlb8+iTDcuvDGQgO93tkl4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RArL14d2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RArL14d2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D218FC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786273833;
	bh=1Ut3/tkMtAdspqi6ECAy5NTiXOIY+4e5AD/n3W8M8CA=;
	h=To:Subject:From:Date:From;
	b=RArL14d24BDMjh9QSB2rmMNAciu64bMzLXNqxqbjgZ/U4fbaQAT+v6ybniGm3IyFO
	 eQezkgpIYTKQ1HHOCrbsbi30vMCgtc9YSI4juy3Bh7cOUZEmD7c03yqMR4ssEl+SU/
	 AJdB/U/jXNmSCJssRUgAjxUrg/HthrL+zXm/UU99CxE3zPWbicfHTNZ32syZH+1Ohz
	 usgcAByKYO7OWHNXHKcniN9X1ghtZAVlHwNlx9RNg2A06W0Bi8sHzmXBF85k3zvHZH
	 qIbX0v1Eu2vnT0hqnTSn3SwwyqPqxfdqNzwukkqTzhLGFpFT2ovzRgw6pb1hPdXhSf
	 EQsF/xtSj4iRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD5C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627383368.27441.14203974373402722481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0577dd1a7cbca83333e2c6992c9c90b8ff211805bc4ef5639d2c3929cd4b727a
Date: Sun, 09 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786273833
