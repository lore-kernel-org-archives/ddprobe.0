Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4530C146585
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 12:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741867734; cv=none; b=CV2+f3N8LT5z5DkepH5nx3aH4cvsnwEDn5SVF6qyMmfJrap0+12Qpe4xl1Es9slKutJwxjTa7xX0R0cw+rrqVJ5jD5LS5Ml44tUmv13fA/IsDGn0quxuNx+a9ZplsHeehE7ZOfwqnw4nt1wyyUFt0t5B0aihVVZohioOk9/t/lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741867734; c=relaxed/simple;
	bh=K1YRoeBtVOUjGJGTsElQ5QatkVKJJXafOJ1WEN68Xzg=;
	h=To:Subject:From:Message-Id:Date; b=PSZXTg4WhvSZ14cfN78nUZFF5zI+eesp/nD98c8qnFKyR0FyN5ninsxi6fS/3Q3JoRoZoFWL23k68jDvfuY54equpRk4fpTaCuITUBoRpxpZu4M29YCFWXLy44fDBwug+s90wFher8CQ2OCHX7DogflIAiY1e+tdbrMv1KkqPpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4B+wyuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4B+wyuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3A8C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 12:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741867733;
	bh=K1YRoeBtVOUjGJGTsElQ5QatkVKJJXafOJ1WEN68Xzg=;
	h=To:Subject:From:Date:From;
	b=d4B+wyuuCl5jhtebbMbZ94kYA86qtvyyeRZS2OlxSdekOIgXT2mXEBXoMNL/MLvSZ
	 s4Ze3ii6NCUoQn/KghvA4mpOd6S46ZL+JVx58a8cfxLuBnG0RsHo4HMiIe4wA+3iWT
	 kd036qA65kDAtnqkoUYjYtjUnCqPmdPYZrtiXj0eXQ2XIvAro2vD7/5T62ElaIsANn
	 PGzDjvv+2iblCBzLGROzn+N2zlNYYL9rxOUlyn4mckuIOBlx7rxHNs0+VPZesOrYLz
	 +X31RxMrAeIVeDlY0O2BwG5fRUL7iPvzzDdKM1zpQkX602mDN+/ZNi5Tiganp/Als3
	 tpW/BosmYMOgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A57C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 12:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174186773360.12584.12761004807327477152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587bb601722a6c860af0bc4fbc42f14b2ccfecb78c30a4791cdc13f0e13fa753
Date: Thu, 13 Mar 2025 12:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741867733
