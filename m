Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C4F2B9BA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753500594; cv=none; b=ZihjQZh5WMZXoHC6R8KsUpO6Ly2MXpF0a8tImKTVacU0DgOuCiM3Lm/uszxNx7llWdndjrlGJ3k2l8WiGkH4yIKtCXIoWR8fYyLa6xQNKjAOBYJZcye2R8ZuRooa2n3nPbKtBL2aYCSV8sZ9D58bs4RhiL5c92xBJAVc5U0LZnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753500594; c=relaxed/simple;
	bh=FflDzq62Uh2El2nuG7aX9FQiAVufapCpB1cHzs9Xo8o=;
	h=To:Subject:From:Message-Id:Date; b=EHIXTIdPuyEvTUbZTQsgy898YpH1hUo5XMwluzQgwAM+EQbh32Udt+QMRAhVskiADVay0mbxn9Hi+RaKiB2EIe/lXy2VlMWEfl3v2qcRStR38oFloaAh8urXI/F1tI8uk5TfrTfi/RuZlgN/KWEMjeRGdd4PRntDWeh+9FRIfdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTzUHQsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTzUHQsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D4CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753500593;
	bh=FflDzq62Uh2El2nuG7aX9FQiAVufapCpB1cHzs9Xo8o=;
	h=To:Subject:From:Date:From;
	b=UTzUHQsZh3HVipcsNOVrQlDqX+4CiTUSPZIg/9RqyQYtv3WwkTQWkP0WN510tWJjR
	 rsXzTtZYbdN+bhzBkhp/KUlc5t3WwhihLKMEjGGYmXK+tNIGa0JaHeLsYic95ZAyIs
	 CK8gn4kTgyNffR3XYM3kLYdB10zy8xdag0yeNoG/uHI6afPLw9GRPBJYQvz7Ctw1Ac
	 8m8Z4UUOA7Z/d37SbqaCVhX11wPFeX50ETE86cMvd0Sn8N/F+ezLwmjtjLUx+sIfvQ
	 oLuNJJqzMUPlsMWL29FGs3AkSr2+OqLetWEvM+ILoyXWXBblsSXiSAhyPO8c1LBm0x
	 JGvioL5AeIk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92759C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350059359.21809.1143663478918776500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a724cc47212463830ea913732eae599c34c2dd293a53e1fe25d14eb57362d073
Date: Sat, 26 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753500593
