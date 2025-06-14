Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2774F13A3ED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749896394; cv=none; b=U0dkU9phfLdbE/T+7044PoZlEAmW7gKPnk1NxqANnVwfOKd8+DnhfU5Fq4dfzybnskon0nlSXInxStE1gpiD923xzHrUtPSh1t0PhdNOYjta8FJD+cbY2AjpLdqK4Ub+sNF4bn4qm9a85Vz9041odx5MlvQ137hItWlC8KivTDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749896394; c=relaxed/simple;
	bh=iEiHwqnpLoM/3V8hfL1OoHtx0WX/4dIum71ybwSIg64=;
	h=To:Subject:From:Message-Id:Date; b=ZnOGXtf+muGsULPo15H6pL6STLuX3E7cdnDeSz/2Ex1NEM0FfCeiGd+XIkldTILCfFVg0zPv0GN9VgJQGrPfKIVUfdHuDhn9ONKRupky2sPgklTyTMf6rqSDYtaUcwqdodBdwtbCfRaR0dodDbicdbPpvtD8ijvSIOLcMuequ8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aab7chqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aab7chqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC25EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749896393;
	bh=iEiHwqnpLoM/3V8hfL1OoHtx0WX/4dIum71ybwSIg64=;
	h=To:Subject:From:Date:From;
	b=Aab7chqrtkJPE1sa3iDLcWRW2REUVayEYwNBBESEPk4LPMAV4ni5jfSEyIEPurG9k
	 NixIJNyMlLko9GIu7K21Mvf1NsDHjxqey6yyKzSGyU/FlEDqXcA62rjrHdkWlgHzZb
	 iOhkaHK8PoO4R3voBFJESn/EXy7Uxgt7Wcbzz8eevDPzsPGN3+WHmQho9iTixh92fF
	 EaH/vLE91X2+zSeYaIiqxq68kYY433nGoj7whyEvKREwgi4eY7dAkPJxs25fz1UjyR
	 eodIR0qxjjWNXxYcJJ2AeNKhjaHnuerSyHUo+UgfCmckYlxPgjVNt+TvUmWeKZiVX0
	 q2AGyw9K55mLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E1C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989639357.13172.16590768453957998640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59805d10736719aaeb5a4aaa4e02cf426d0c37b1a9808df843244e6a302e401
Date: Sat, 14 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749896393
