Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D6911CA9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781281594; cv=none; b=B872FyopC/Vgmry8Ewo5CqLzmwFucITob9W4B3cSc5MM7khEfCzGNy70P6S9JG7QLWdrCEdW/K47nSjLSVN8b6dJdiBaxHzAwK33AX3ayQyG2mPiXrc/MDfpbb1fHgXybFqSBkkeaSPxiWqdcEjlV/0mj8GoP4Pu2/i0WF1HbFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781281594; c=relaxed/simple;
	bh=xOEaEEo11D44S/fzkT9SJEYTMuaS2gPKt2sfMXlU4cU=;
	h=To:Subject:From:Message-Id:Date; b=cGT5KklfHwUgzTiKUaascNcZ51hJoguTXmIDhDdTrmhSGLDpCrJArNOnQ632+TapKQbc6FLciUvSnwuUyar4G/R4ybq1p6Kcxd7BedMHz4klOyFq4KnQ3bCyUZFPdaq0fci3sDElrQht6CfuoQTsuDCERbYnY//Tl0SJky1/ws4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAW1kKPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAW1kKPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA311C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781281593;
	bh=xOEaEEo11D44S/fzkT9SJEYTMuaS2gPKt2sfMXlU4cU=;
	h=To:Subject:From:Date:From;
	b=qAW1kKPX59UkeYChOuHr5OzPxyroCmfTm8FJhvruexvNOU9SCMJuGOYtIp99cEjQ8
	 bfNYVdzS/c6mJReBSyvH1U61T+AkmPaLdkqOwVK1Hh44RVBETRk9x3ZXxttV6AXq82
	 +AKivT3Iv3yBevm/boJSGUzFheSkrNuroF+ok2OFl4A3cKPVlZq4mbOKRFiGMFqbgM
	 7K21IqbjdMaBRpkMREWrLf7MGvVNPo704MxoVeT0jhXkCg+00NE2OQNMQV3YIhIG6J
	 LCaBw1hwdxrdHYBksZ6V/RCFQAR0BaBJMa2x0jVS+lru1+FhFQ2LgifQXrjwobl2j8
	 GSopV1PoKD7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF41ACD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128159370.26429.13527605492564131642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1806b03072896f38292c5b7dc11d231f54c9605f096d8c92c253c1196a64c4
Date: Fri, 12 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781281593
