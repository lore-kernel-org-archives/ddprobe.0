Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CFEC5F87D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719142343; cv=none; b=Ukr/Q5xJaV1l5yuGw/NYWw2b8azR2rDmk4c2c5TxwjrEB/xPeD/RgLfcXZuTf08u2nKeirk3BBv+xkCdSrBWdLXRw8O/8WpGES43hT/9Upp2o6uD3s0QN8CXiYVVTIvARV0js8GfS6LkBff+jsn6Ifn5N6P3kJUgO0xEf/p93yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719142343; c=relaxed/simple;
	bh=qW9qZBeHijBtu+wyYVW5mNrhiHbVY19f85RC+vVlRpk=;
	h=To:Subject:From:Message-Id:Date; b=cvymc+CxonZWS5dZ908b+WKj2ncjtc09ztWxkNCCPHgLb5y2Z4UyaelkJO5HdaDGSXK+jUJtW8qDwBRF8lht/ISrNR6Bn6kxCCyAdgYqPuKBq6antjSKTUX0BlrPIlL1C4qC1kGMm47BfCA+Mm9WizqXAz9iEHeElHlSHt0B2ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDWZQu8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDWZQu8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0202C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719142343;
	bh=qW9qZBeHijBtu+wyYVW5mNrhiHbVY19f85RC+vVlRpk=;
	h=To:Subject:From:Date:From;
	b=oDWZQu8TJwmXu8/21m8lWLNivg3B/s7E7uWtIwtPxaCLbXY/NS1ARiv7Rj5PXb9Wq
	 em8AByO6/0WFXnhCdamUbU8Pnj5poP4hDluT+BVuUHEBiljNUmEwCyQiJwban91kej
	 uVykotEBVo0RKdyi3NYf9dVHIrfZ2ZWhM8yACN1RqLMbOZs3A/0q83NeyVpiu6n8m6
	 qswOcOkJnJeVqCJYEuNjv7zgorycurBgr9mqEUvvCN1hSUWeHWBGSSyY1Y3mri02cU
	 +9J2oFrPbJbxOxm7y2KX40UMUf6DfvhoYUAWt6bMrhowiIBFNcvxRpgeIM8pBh4vuh
	 +xQJn3BBIrOeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0D7DC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914234284.5650.10356793431654711499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4858216f4ce0c0950126d8a218f2fc0f9889a9fac5397d3a3d85be9d71a82e7f
Date: Sun, 23 Jun 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719142342
