Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E91612D21B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792235434; cv=none; b=GLl2ipTxESg8keweitOo2u3ZSa1pijmfsqbE9drCR4KCH2RKO7qjGERo8BqcV2fCRmyEmlYfqWTnCJ4al71Lthv7W1eyK0Lh0FKhK1tI8vR1XpQeS39mkF8/NKUppALS5T8TAXHa3Llc2yezx3Xdq1sbvrpR3gJam/WZvRF1SFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792235434; c=relaxed/simple;
	bh=Y74M0Zrd/OBOXeF4IjypUAHDzNWPU/HSywvaFDr/Wuw=;
	h=To:Subject:From:Message-Id:Date; b=oCZ/QDcibJgT25BE1owK5zFMMUDKTC2SskPqUbaBkJ1HsgGMyWrcO/sZxq+DBMA7J+y2xmrv2UKcI0oOMG9pKnshBdDIRd51LCdvSFfJJy2hkKrR+GwmQt0QhQOWx5GH6MAvXuRXRE7GW8qoe8dcqxpkmZ+pYh6TE9szPGLYe3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQ/Im0RI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQ/Im0RI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 008A4C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792235434;
	bh=Y74M0Zrd/OBOXeF4IjypUAHDzNWPU/HSywvaFDr/Wuw=;
	h=To:Subject:From:Date:From;
	b=EQ/Im0RIuwhfxdV8Ma6JURO7ggTwQkBVLTk3UR5ykDMCIDvlKynguPD7Pb2G+ZquJ
	 qEMgyV4h5DSDrLkVXzY69nKfWtuEIImXpZJmOob8kZdOdZZ5AmT3zkxJNkKe3kc0/9
	 v7wDIr98ga6tfemi42Ef1WWb9wN1Gwvyrl8JWx0jWxnjpHuTRYAnvHMoyx8ojC0vMK
	 Y+jvSjvu4dHtNECfEr60zKvFcgAToNzHjYcDs31D1xM5q5OwUWacHheInMHYN0a4Iy
	 mi0USCNS6OSr6KKPBlxfSSzyeDbOHxJBuK9A0Xj7nkA+WnNC5gMr7YFKGo8jDrrI57
	 VsNnLjV/HuBJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49C6CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223543371.6166.4177709853097439026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9ca0006609319336386317dd70a515cbbd458ed926964765a51accdc8c6d69
Date: Sat, 17 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792235433
