Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3DB81732
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770536034; cv=none; b=F27bK/Zs1ldVljs9aPFJ3GZuzJlUKDfeKf+BvTWw7EtVpkkachXFZtZG5j5brie00ODMHHEksXylyeSm+xR7PRcHDXSYkOyhbUbTKugY4SpSaHBh0hXuoplvAeQv5v3nSHzyHP2j3kD8e4arS17dLySmGmHzpVSWBh5oCOC6d4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770536034; c=relaxed/simple;
	bh=KrRYgfu59Yii/Sl6mx2satoscZtvsJd3FaDWK9+dsZk=;
	h=To:Subject:From:Message-Id:Date; b=qSqvplhc7P6nhNdXWf80wOwWoTWSVG3R5Dbnv+iDpyAoevN1siwy6v1d0cD9axxrfCSWrVnVcsrSbnzazFga8HbuGEzRIqQkpjCw8ys3TeFDlCW8ERWwgTktLbXnxQVGR7pJ7guN1kYVKohcLiHhO28HuNYPhkp90QPjHhZArrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYjyZhvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYjyZhvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABADDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770536033;
	bh=KrRYgfu59Yii/Sl6mx2satoscZtvsJd3FaDWK9+dsZk=;
	h=To:Subject:From:Date:From;
	b=VYjyZhvYd9odG2V3t6/t98tWiW7WZw/LnnOmSGThLd1zK7HbVHoXCuK3RVbyalPcq
	 T92+EAkTFN67soJiYZCfE5Ysmu0i00Jj6JzH4lha0nzmV152eUXlloZPvWSwjOLm7S
	 NlK0hSReU1yOW3T4oUq75EU4FdaGSpjnD7psVVQVOLmRXwMpCjcRO5KqbPmJuAf4PM
	 32xOZk9E783vyYx+aRdP3dfs0pcxfz470iWg6ja6Z/n4PpJT1NL6ALVyKaAJ+ciul7
	 8Mfbl/qG1ElMkM8OQI3iZuL9/eZ5sLlxu1P8x0T/oPAnQb95irwYOAhImO0XEoyuCp
	 IOt4DHdufYp9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E9AEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053603359.26716.2901243819787400552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9cc1da9c9ef98dffc758f46c2702dfcc6f4dcdea646241dd9dc80f23217661
Date: Sun, 08 Feb 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770536033
