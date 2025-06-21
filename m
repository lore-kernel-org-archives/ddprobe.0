Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DAF4A23
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750484994; cv=none; b=Ecm9JfpOYN0aqB7wmb54KlQyuxkLp0lhP2xD0fZ3U98lU8NbjY2lPj1jiGE486aFzuIF9MPqE5kobvKCIeBhE8zDOdIuAu4Waddj/smTIyreUVdvbdmGAQoGhNv2yPk7VMliXK2wuBOvG+TJrOTVHw2bLNIPoncVsizZwKeoEEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750484994; c=relaxed/simple;
	bh=MQuzcFbilR8WaSN7Oh6C63uJBMyuOv+Bdlzu7kOJiQU=;
	h=To:Subject:From:Message-Id:Date; b=u3vX+EjszNNT/Mw/Umbqlnzt7FzLpiNlxyQN2eEjNaOqr56Cpi5BOOTH+MihdyMevJ+8TbGBRJ4dR2HUPEE5bz9LoMNxdXgQvsPmPx4evTmQZvWBNg1KmvSk8dJt/sYuEm89G+qkaQszaSsAbrZ4nQBOx1PxsXKGWxlLlT5mDbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNa5Vvs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNa5Vvs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53AAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750484993;
	bh=MQuzcFbilR8WaSN7Oh6C63uJBMyuOv+Bdlzu7kOJiQU=;
	h=To:Subject:From:Date:From;
	b=YNa5Vvs4PhdruKTwD1+9ucGrQwpBE7c0oTydr8kR+OnA7jzJjD/w4hGgmy8lV8/e2
	 KcRpO8+iW53Ku4sYVuFl0rvpkDKxgErmYRDX2Pfx30LTHqYz02K7cFd//IfjPCi+2X
	 F/MPl7wHhFhBr0IA55uSHhYzoeTA3s8Y/WFXDj9UWD+lbUrJdE7QKAsfkpLVwG6dX1
	 0kQgSz0x8aVAz06ckf85p7j/MWkjKItFX3jr2n6pEtRuVLQbNCDcB3Z9bpLFrI7R6C
	 lxUTRL2/UBuXsdzLvoFsRzFKEjDqRvK2Y7Po4dlJDWMnJRzIiV+pNQ3lQpTJeJP6T7
	 pqkskqUWMd+7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BBBC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048499357.6920.13314524943529059110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b6b32f34fa1b1b045fa94c94223e2238965fa75d2094891508ce425b22ca341
Date: Sat, 21 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750484993
