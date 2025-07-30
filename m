Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C59272E43
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753877394; cv=none; b=aeveSCSZGgbxufE5yYC0ityx3pPd9n+rTTnJvR3oSSiij4/lovD07qgy1cTQakOIFUSMsTG/S6CFbsD+YMtKE0q5KevghBAqG18x2dDSGN3GeGReZqlDriiCHPFhoT/JrigZTvCrKkuxwVftrneN3a+ouqIB88z4pY9gc5mA6wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753877394; c=relaxed/simple;
	bh=+Hp9oMv6blZ6KiCc9+PxRSD5Ws/sW/oBb911j+gbYeE=;
	h=To:Subject:From:Message-Id:Date; b=cbO2isjU1v3rKxW4IxEKPgvRFCl3Dgmck2KrBAkMQTkOlPSDEQydBJzqmIEcnGwvwxi/wAFo9bqcrPOxr3rVqBSIO/b7TaO+d66SwFTcF/XWiR6xoT503QvhLZPXPi+Or23QoLb0WX5wY9jAQjEGVZVBSz5uEHcZT954cIQzxhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XC5rSBkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XC5rSBkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DF3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753877393;
	bh=+Hp9oMv6blZ6KiCc9+PxRSD5Ws/sW/oBb911j+gbYeE=;
	h=To:Subject:From:Date:From;
	b=XC5rSBkfMfDmOWESqiy/e5wMQutCJEb0pFpXeHPqkMC92W4zSfCGrx/Xp6P3puHN4
	 OINHKEjyMVEYRDTclg0vltKj3gFe9/6aGQwqLqM/jmnAdreMRDXtn12tYHl29QV830
	 ztGrZzHVJXj1lwgTsX9AEqN1byLgVK8DbMJ5zz8eiGlQZsxrlHN2FLfuNNuj1IAFjt
	 Nt/77d2SZA7q+I4zEQe5xTZB9jDVbkPaqy29c4W+PTQiUQ3vFPNutLQ/QKmbHKflyl
	 qQbPhE0qhqzDSxesW0EIDsMLyslgfapNCGbHo/Mzr+fFSo0eKx7HY2Ld5jOMu276CK
	 1cwuI8Al53Png==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13DC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387739357.9535.7876722998368555425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1eb298e41f2a965f334aad65dbbfaba70032c6e0ed6685cd64264b26e7a4bf7
Date: Wed, 30 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753877393
