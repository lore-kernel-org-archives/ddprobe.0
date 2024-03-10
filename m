Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F7D39AC1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710085697; cv=none; b=gxud8C0aOtfBfTO/zSW9sFYEm9P7k6lt9pKVGjASxjOxLFg5/TF/femyF3TUFkZlAbSP0xM98OIfYWvxzGAVKlicDm+w/wg7c6TLMXN0vPfQL/mI9oRS3Pk9T5YZ4BbonD2YvR4vZjYGKVF4bNH/C/CVa+pesC9VEMh00mgqOVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710085697; c=relaxed/simple;
	bh=d60HWO/XOYE7ONTfSi9DFn5DNwwFea4qIhL4/Dzmohk=;
	h=To:Subject:From:Message-Id:Date; b=P+vXsdrsl+qnn22IwSZ+8timL0Hp60CKXNAGRiootxd11L9JyugsMVFL53Hn2FO+Ggh0ViAxHAxerLe38RctI0P+cNyffJZUgxuvGULDtR+ya1UahlJmJ3neuLX0wurrW8UoTM2HWQLHQHIhrCaC8OqnM43FhHslZCJp2wlCM9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HR85p/sS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HR85p/sS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1AEC433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710085696;
	bh=d60HWO/XOYE7ONTfSi9DFn5DNwwFea4qIhL4/Dzmohk=;
	h=To:Subject:From:Date:From;
	b=HR85p/sSW7eaB1tZosFh5GyIyC8mTQxaZARHPWWqS8jIwAr6Md58wL/ZAeqSrCubx
	 rstS/ihCWHJs3uO7BS/gXuJPAHXUbxO4BjYjN2UigjDN5Ee7JXnr08TbOcKsn461OU
	 1CMWz6fkfL+tN2u8eZT9EwGB8DdESR0UnuvmKQrIfSwWVjMv0YHdqmom+zq6B6NeKm
	 CJX4w8SaNddSgjoi0Hp5iIxim26NytCtfKAjg+kBs8IDXyCFeHIiAXRGox/tJHus6l
	 nXyee72IrJKfBtCBARc6LrJ237+31O3ZrBqy8GKf45av2r8qUz6P58y8u1kQ+FykvF
	 VamB7R/j2R3mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620B5C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171008569637.26963.17998902547521881925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab11f99ad3493d54db7fc10114c8be384a23d4e87320580d66a306b85a1ef340
Date: Sun, 10 Mar 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710085696
