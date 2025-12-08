Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B508B67A
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765173774; cv=none; b=ueJ9dNNPpAOWOsInOKZpsdS4XMsSZ3Mh+v5vOurBrs44lRjlK5QsFBQKrjYK0GPJIpbJv25uDeOuxYdLiRhJ5e05B4efJKn58IGVlVktR6tV8vGUlxywyQS/Hz8L1sVjR31DJVm2Ms0zLaUdM5VC3vuf0r+Td4C2AnNfB5H2Wnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765173774; c=relaxed/simple;
	bh=l5rNwYzotRpj2wmFi5ORoPH2AUnIOUA5FVXuZ07miUA=;
	h=To:Subject:From:Message-Id:Date; b=Jy+YH2KhVu5vwe7RRvJ7Xnzx6mkUbJkH8HPfuuVKSSi5/RaPaGl5idkAdyjwO5NsFbhM/XzKYLiixjP5Fx05+XCPnWTEBb+lOcZ68LqBBctJYquw6kvAyQ+kU4FckpjJimrhkx4ue0xPdcuWnODnpApgR+VrTGFlGRk/vJxsiPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSztdVcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSztdVcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38C6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765173773;
	bh=l5rNwYzotRpj2wmFi5ORoPH2AUnIOUA5FVXuZ07miUA=;
	h=To:Subject:From:Date:From;
	b=DSztdVcAlukLL74MnLaXz/htqEddb69KJqjonNXjcnAZ2mkmg9d1lsHOySbCwVuzT
	 5ISvn/ANcCYH8+7u5jQY868PjPSO9PN8M9u9Jc1uH3nXiDJExk3CoLZMLPI3ENyC0e
	 GFR2OVU5T2gq+gqhymuVqKGkJRA/O28cR+zoAS2+1TsYbFp53/aCO4sJ9EEqU5LgxU
	 5GUsb09EjTroaFh3Luhdz3Ped1oJPesy14mrBYv9Kb4oOXps2G84SGO1KmiqfmNMXK
	 vQlXhNCZ2QKyjaO7rE7dpMbZzuQm6RaFUK2Wk6a3aWAucCPfWsbwHy+nNQuX8Rgiea
	 QQLGO/ld1RQOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C01D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517377358.4328.10377514837781861227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a066bc8c513708399c62fa9a8c13d72fe64ffd16429209340579f2b99eaea196
Date: Mon, 08 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765173773
