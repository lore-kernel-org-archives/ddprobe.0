Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E92B17C2
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 03:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714879343; cv=none; b=qwXW3m8bwZ7woFaCLcT2lMIfJzg3od7sXid/AJlAlWoR2b2hrdYzSgE3aSqOypJD0IdRxtaC6g8RRVd9bmNDACAv1LX1xM1hmsD5JHqCFRxtBSuphufblSUFsT2PPSy36dgh8RSUMSg/sYf8QrrcdYQ5YjDDskLz+7x8aGoVtRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714879343; c=relaxed/simple;
	bh=l4U+cpTAIW/EHoP8S/KylYdD0fyy6ar6d5JF87csy9w=;
	h=To:Subject:From:Message-Id:Date; b=FKn2Ktr70I8pSclO/Rzi1B3X0NSBpYs3T+kpubatPh7kp3WgIXTmx85kMRiF4N2bReOH1/w3Hx9rnb1ewj2iSYDv75ZU2w3jaoorRvAif88m3dqnSXUUQqOjtUdYldWceDBBuH5saeWVMrtXNaoss1z7sQtiUJNv5d/ebq8hOY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHRIJCfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHRIJCfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D703FC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714879342;
	bh=l4U+cpTAIW/EHoP8S/KylYdD0fyy6ar6d5JF87csy9w=;
	h=To:Subject:From:Date:From;
	b=CHRIJCfGx8Ban+gfkCWi2Gy/FMstW048qeMlM/JA6J840xw3DA7WtB3PuAMSmB/cL
	 0P0kfQXUCnXyCcNYDwBvTgFQ+k93tdihJQvYkcYJ7AOQug1fUCk8X9auSh6w51vQAa
	 I7NgOU7Oy9crfio4+fzSwO5/zB08BFbiVkiGbmOF7EPVJqTlvthaGQGc2ZUxkg5UsR
	 ZwB6lVh2Od3gipa19NZf6DcAUoFzdNWHkohdLw2CGCX1TNKyuxu4Glsu8JOX74/Xq9
	 FXrxBkEDQIl26agkTHk48PNt2B5TSNxGJRHpj0adTo9zd+S33D2JhgF6FXCycotEgw
	 I0/pr5Caq12aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C060DC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171487934276.12466.1960683367399145873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e10c8cb93a64734d73db05bd2058b8f0502ddac86c4b686da080ab0dc39218a
Date: Sun, 05 May 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714879342
