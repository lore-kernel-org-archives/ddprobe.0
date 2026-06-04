Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEB443637D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780577674; cv=none; b=JoeUPgkNGT9rwkxBeHP2LtrTrVzlFhRNADlamb5cRafwJOb8hzdImevrE3cevyyNqa+FFLqNP6dTvk2GV5hN+KTIf7NRabfSZIdFeZ88WiZnqkgLE2wvBrDsHO7EV73I+CSn1mF2KGh1UoQuZiei5G/uUpY3PiEXTzTzioAaGzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780577674; c=relaxed/simple;
	bh=N+El3E0MOLc/p7I1iKsJOJkv1N+4IMwOburjv5lpIZ8=;
	h=To:Subject:From:Message-Id:Date; b=h70BXklbTyncw9pkgibaozb1R/MFs97EHz64gZm9+AKHepGVHZQSUzqYkjmgkVMJ1ODmjLbITEna/g2abWLaKnUiOJW5S/oTfXYcfxoJ5cxkpdyo4aNjsah9VU5n9PsxeGoVpKrFwdAoqV37hjZCZwJKMKPltncQ0PmbKh6h2B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzSVUvZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzSVUvZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5178C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780577673;
	bh=N+El3E0MOLc/p7I1iKsJOJkv1N+4IMwOburjv5lpIZ8=;
	h=To:Subject:From:Date:From;
	b=AzSVUvZk1cqU/qIts//VBfDU6fbqw+SXGQZKF5QaHaILWgvhv+vP9aiNi1ZA0KihT
	 oIRMb1eUt++WSIfxE+OXWZX71L/3SG4zVlbrZwM0o2Goj82uch3Uqb+D85ygNAHdHJ
	 xhAo6wWN8kLCimDWcXBrDXPIriYa3ywlKSbPCkfcShUGZvPsoYaO1VNOhbOwJlyA/7
	 Jdy+WvKTPS8r4Xy3UiMwTjVxSdz4e18CWVDlIhgg11B+Fvw8v3PBwMW1IPob0zqv15
	 1qaT7VVKD61onKCK8M24liZn3uytKayrDx4kPyKcsqXhdUonh8JxF0HjJ3qeinuokb
	 BTPDC1sAYz29Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9275CD6E6B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057767368.29627.8515446726546019008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9fb726ba14265993731eee0ac8d0c8fd1d07d8bc18ee4e663d4ccd4583b0a07
Date: Thu, 04 Jun 2026 12:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780577673
