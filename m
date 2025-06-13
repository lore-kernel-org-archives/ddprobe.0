Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D4823C4F8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749853195; cv=none; b=EL4PsDzbI5wjFOLpFVC/M+3B4+rmF94xmVAA1mGWLbI3iL0ndtREupJcODYfPsbVAxEq/dtRrDi7oCA1TyFkRKfXd0oxXyGs71fh1ALsZwg5Z/oOusKk/1NTjLLjiIBGnbIl+VbC/RY4rJCCFGeskfbgT6Y6ezk72RtRNEscIvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749853195; c=relaxed/simple;
	bh=meb/CPNClaBUkA7jt2uGaLTGj7jvQULMO3DQzidQ4/4=;
	h=To:Subject:From:Message-Id:Date; b=KILejBsEKd/yLcEWb/kDOGsMZPWZFPQByiIn+k/l6tTfkbgIMsPJ9Oqk1xR1IhCUgDXKu29ibW8QM0+ioqR6irl2OpoMHMhwB75c9v93LH/nNpuePzQL3bMSitc9fZjVr6yK3DyYHoWF+9/qC44iCrj5Y/9cuAl1DXqYhcVi5Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNFA0hy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNFA0hy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749853193;
	bh=meb/CPNClaBUkA7jt2uGaLTGj7jvQULMO3DQzidQ4/4=;
	h=To:Subject:From:Date:From;
	b=WNFA0hy59y9kJ+HuMazAZFyii0Z9+M43rj0uWmCdiZ3Kxj8w7EeKBLUuIIMVtRMpH
	 H3mGGYBwv/6XrE0f2Lw4d4O8+3EXe/kcImp1TsAsRocea65w1uvNO3gPInq03iZ/u3
	 3qomtZ5NKSnnpBIY1aJKc2j+Ox59GqPXQ79QBhrL534d85OwflpjCKNXqKzfnmCrBk
	 V5ed85Nc3WJOlvOK5XuhLIJd1+A30QrAgy8gUWa16VJ+U6sPtPRvIBKNSHq65bmhUB
	 QMxhXzt3JUehgPjetHYrtk068qvRdUdsWxfG72WBIE0UIK19dXjOR16mZsmHj2h3NS
	 qFC/Vr5yD/XNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DBC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985319357.15417.5819653991472653313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d0a6baef4cac999eded8659835000e28ba2e1b9daf4a72d6fadbd0e68ffec5
Date: Fri, 13 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749853193
