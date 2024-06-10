Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBEE86255
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718037503; cv=none; b=fGWeilxoFRuugIDuZn5dDIy8ViwSVIj4iFJzOC1lpk/sStF2D+wyH82R6S/b5Mh5MPJOs6EN89LDMcx5pBV3NV6lRth530zbhyTFfNVyBIfQwEDpVIkvMyA03r8D7bcUfk055NW52YqyTjoXjFxRsen6YpVtZN57pXEyxhrZ9Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718037503; c=relaxed/simple;
	bh=owroLbjfKgL94i7ll/3g+C/U0YEyBcmmDnaesUcK+hE=;
	h=To:Subject:From:Message-Id:Date; b=CufIFfw4Nv/JDa297BTxq/PoJ6Ycf3Rjbra3gIMgGrd36Yy2bNAFoMen2x7NFcmhFCMfsVAWGcI+gNOxC8xJDrYSZrOZbDPURLDF0A8wy3nS/L7PJ/91r4fc6v/GguCMoqvkZDQB+ESBsZJ15rs0VjnO2gWGbFoHf2WUaUwV+hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jra5i1wl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jra5i1wl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F03F4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718037503;
	bh=owroLbjfKgL94i7ll/3g+C/U0YEyBcmmDnaesUcK+hE=;
	h=To:Subject:From:Date:From;
	b=jra5i1wlEoDnD9lx9G/iXy/YzLspO2maF/jc8nFW9JBWYZNtW94e828Ap9ntlLsD/
	 LVn6EUSB1WX9pGXQr7OqsCvhI+J6MwGCrZFwMqqkbUWVBauagA4pa4Qm+MZNyGzwef
	 31sJ5btErWE+4cu59/9rIQyb7ZwAYBGtlZo79fXLBwTBNF3yXIeR0JU5OD7BHKVcDz
	 2iVmyube5m8PWBoYyVdAIfm0+OjCq1H8bGVApqs1DczwINT6lRANo/0yIvpk+HGWav
	 hDElZEpmg+HkRtpViMWiHWfaYPzFjJYt8vfWxxip9v+9al/zXKweYQIF7lzpGgAZEh
	 KdxITbndRm6kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D76E7C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803750287.25609.13182947314569106142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00371e9f023a704db0820b63e04e782996ac995552e7252bb2d0fabc5f7b6abf
Date: Mon, 10 Jun 2024 16:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718037502
