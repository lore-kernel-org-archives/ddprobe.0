Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247801862A
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778252854; cv=none; b=ju5u9gdr1liwMr3RWmjzn4j9ZEq+9TE7Mc3SWpCtQ2Gu2HZEXAVS4swjHzceLGismfQmY1t/7IODzqmGJPBTvd0swigthKyYAdO10iBBkTOpcLEsWxP9HOsSvuApKlVFk5cG7BfLikBtVr2QBggVNSew4IZ3wm7cJr9+9IatOws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778252854; c=relaxed/simple;
	bh=AYd6iKlA4Df8b4Qy3StEhO/TPkmbB5z6J3OiCW626rg=;
	h=To:Subject:From:Message-Id:Date; b=iKSOgemHyt/ZEMbE5uaEEkaK4k+g4XJ+fmx9xYSLnr5vo0398TSRqGKb0COaxI+xCj53zVv5RfrYx0/lXbHQmyIUCM5BRqIaNiYdA9o2uwY7GrW97YVy/cL0qp8sWyUq0RZlOwtxbLpUUifR0Erol8oAliciGO/k/WNGHthUzOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElBWvfhf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElBWvfhf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C391FC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778252853;
	bh=AYd6iKlA4Df8b4Qy3StEhO/TPkmbB5z6J3OiCW626rg=;
	h=To:Subject:From:Date:From;
	b=ElBWvfhfnBESv/tEyef72gQMzGU06mY3p98akdQKSvyunyGNWr6lCnZkfHPXd3bbK
	 KzM4gFpA28BTfYEm+VGT4sf3ucmPG4t7cbJysd1QZSjOXDY7UoNQ77uQci4zrv3zxS
	 +eYGXJ7xNJ3ZMQlO4NdqudJmXwzE2nj9DK0/Km+L+nXwGjdzmDgkC+9xy3AEIEhIWA
	 O1n0e9cYW/D/5Sw/l8OmbyrAA+apYCgEhUjzugesD/JlMf5T7KcxbL9jpOQrigxsGR
	 A4ONBhosJs50rvyjbaZU59J+kOeEHeFFI2nXAEd0xDWAXOQyxwtAdrjzIKsuaoJyUb
	 KktmkXgd6dcEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2ADFCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825285372.14245.7935938829927780787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e5c717836c185cad3cc2582726562f9c0ad2b8d9149bdef267028feb71079a
Date: Fri, 08 May 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778252853
