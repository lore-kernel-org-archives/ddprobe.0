Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC723ACEE9
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782248194; cv=none; b=UJss7dy++M8m2ricrX4prW67DeSE2s/2SQMc8CFdv8ZGusOKijV5Xny3vWwlxS5vBzqZkUSFuXvYaCYu+3KupuR8UnJxaG6Q+SJzt1Ux3hOK3abtYuwl0rBXu09wGX3KFvq3jEybHC/U14trNI3ANHAz+BCDvpAcY+gn162K3ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782248194; c=relaxed/simple;
	bh=k1AIAjIrfdx3ToLV7pm/YFQ9wVuWEtQV27RRnZFxX+M=;
	h=To:Subject:From:Message-Id:Date; b=tpyyhNftkbVlVGuHd3eSXArhNDdOFO8tUm4lHakgUUrQfVGrBNImJd6hlRYtfbwFBOCgu7vN7uSNIkyM0oOj0h03c0Lc18tXlF3MgUD0+OQJGXV0ky2u/0Gfh88kbDq88djY4UU7n1Cph6OvTa/y13jyj99E58JG5tJI+LQcP24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHlq6vRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHlq6vRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E43C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782248193;
	bh=k1AIAjIrfdx3ToLV7pm/YFQ9wVuWEtQV27RRnZFxX+M=;
	h=To:Subject:From:Date:From;
	b=XHlq6vRFeZZQ4GqpTOMkAIG+SAf4wL1REXJY57G+IeKMyDgNlbYLXUk8qqpRWiylW
	 WALXH6cNC+TTz3FUkXlq4EHViUXzVtmynw81VBN1XRXQwa9BnxOCp7Bmddd59Q4G+c
	 uQAF5pvSuBR8DGTNyEF8sm2d7///sBfSpA3fWMpc7kQh+1ZkDM9Mj9GVzM48wxxqLQ
	 OJ7qeJUPeUfEXn8y2bNYDoWLn9hBwu0T1E+eWUmgeSrgQ1Z5GbnJqNWqwz8wqshuOn
	 7uSKZDIG2Mevl7SPjJUZJIhinGSxmkoPgjKZSJSCySrmyeMpNhSZ07D5dBamlHAATQ
	 Z13gsurcV7Hig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12EDCDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224819371.17789.15610466808887543215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46fb9fba9b3063a084dd661d8b6dcdc2fd9994d37e81105c048e141d1657448f
Date: Tue, 23 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782248193
