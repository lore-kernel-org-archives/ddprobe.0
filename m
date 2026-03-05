Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D08F3ACA65
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772731494; cv=none; b=KxImns18no/g7mOFS9QnINEkxmZlWs9GogHmNJfWH1fRSOIl0OKgJzMhvibiNJH3u25eG/SlKwDANfsWyjWDdLjZbMNJEc8G9ZuX7mjIG+22Bs2sroUdo3YhtkFXhRAoXKzn9MtnxDJzSeKS01QSMknZIrGX/UrU/A+I0Cw1GQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772731494; c=relaxed/simple;
	bh=LypKG7HHdycbp/Oew1ifAG2j9uWWltm4pBItI9an59A=;
	h=To:Subject:From:Message-Id:Date; b=KVVYephv0ss7oeNtDUeYKn8t0cWE9pEqB6p8RLmfgSprWSrrvXC7j05BAEF5ALFG/OELg3MgKWUyke7Gf66o/OIwv+EHk+prNFvG8iZna6bF24dhOCc4e5LSamL+O5NBwLF++PMhzCDStY9LJL3Sg0dPMW40XK94vjpzNe31L0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oh10wwu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oh10wwu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A0AC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772731493;
	bh=LypKG7HHdycbp/Oew1ifAG2j9uWWltm4pBItI9an59A=;
	h=To:Subject:From:Date:From;
	b=oh10wwu0kwwPumQpdb/ZteNwcPVenQAukkRfQZfE/6W3Eo8Fd+GyymoQnKH0IENs9
	 vkkZV8U6S1/E3kQegZtKfm5zxupmEZYtLvdnFLjzjS0LqOI9pDQ+lbgNClGcecbxEH
	 Us75bwKVB+X6FLVw8nZo2LlT0QNEOwd+JII+reXzS8Bd5ZDjWhNAIq6LW0rbwlcB9d
	 CglX/ecOsweG/nic0JR+M02DXQK4Rmlw4dAMztH2zPGZrLDbZ+StpJSN4GAkdkvY26
	 SpiBmQyFecHyR7jyvKr6D6U0g8rFjnMZnN2ZwtBNAXQzWTxzLYQhD7brkDLJzFWd1A
	 q+DdkLASNlNPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BCAEF8FE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273149358.13469.18299946698917634302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69eccba57b91316b95d546281e1f511e4a1700789dc8c4dbab6c5af6880c69d
Date: Thu, 05 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772731493
