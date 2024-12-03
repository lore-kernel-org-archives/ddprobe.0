Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019D11F76AD
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733239554; cv=none; b=Aig2WHSGBWvsOnLOCsndD8G1XZoBAyaQzQ7H4qffUyohlBBpadHL4NGlyPWDUcpfT97obAdegSYz0k58aWmPfhQ7SUeYmmtafBhFjz0VFhxuvX0eANbFOyVXELUaA5g6wwrC+v3RTnI6e31JY2qM0yN8hUuhd5yruxFrz8KeDyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733239554; c=relaxed/simple;
	bh=Ayur7MA/Bq8JqbAfttxUJ/laQfAH1a4iR66wCtvJpUc=;
	h=To:Subject:From:Message-Id:Date; b=se3GcOm342uS7JIAk4yDCEqy2pu+RnSmLB6ssXpwH2b17ZRdURNIjcORQE7dW4OiEokueWg5kGh+WAFXd6OrbVjjGhRBdTpW221rbKpjphTDfDZXzjdkmhphLV5baZMZvmqEsJHJOcrMgBKmTX90YkBKQtWABLN1bn8PjzTgVmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQanX1A8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQanX1A8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC66AC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733239553;
	bh=Ayur7MA/Bq8JqbAfttxUJ/laQfAH1a4iR66wCtvJpUc=;
	h=To:Subject:From:Date:From;
	b=dQanX1A8UuENfjhCVpXW1CNdKwg0JzoyqXoeDt4GfFoH675CMgHBETZrzGtNLu1iz
	 uywp38yM4Roa/x0BC9y9kBisxu3Gm+dTiZ/lS7Bo4Gpk3w07qpL5zE+V9DhxAvyZ0D
	 3aMoGPqEYygu7gD0VMUg1hokboHW47E3KcFQ8BYaiWNm6DSsdt/vRtMLFZvA0PTTPk
	 yFZXyn4z/X1HdnA8JGYuIOYIvUv3KeKY5WBwsjyKEh4GhQZ8WpwHxG47i+xtzthZ56
	 cnoUe+GM7G4qu4xPwjdm6h8CTR6siorm31th00UtLaj3LEt0XQqSvyeyUrx0/EvL6w
	 GG4mgtPc6hf2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7496E64AB6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173323955366.14698.10825055849862659387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ecbfcc64641260bc0ced0c43b948bba5cbf45a685e4b5d0c784886cb0aadca
Date: Tue, 03 Dec 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733239553
