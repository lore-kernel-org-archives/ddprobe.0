Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E8217A309
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745039994; cv=none; b=B6vZiGnaP93e5ZObBkSelwqQGlKVKsPrImM5UGQsDbA0HW2lYyIyU3C2m2q3uIGSFJGfJgnm8lB30os1fbJkH7Fu3/V/fbi81jfZ2rJCKdJykjMG5hgxSX3ufXtumCuM6eDFJoGb+7BhtDtScU55/nUMtVMqAa3NfqYa3iT6ouk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745039994; c=relaxed/simple;
	bh=OfgMXo34Cud7GM41Iryv/hn/bqf/iWeWeSiQ4Hm2Am0=;
	h=To:Subject:From:Message-Id:Date; b=V2wfRKz1h4Q/2RsiAM/aGufiPGMVDfPPIZ5TdyQba6vGzh1R14jGE3qGeddyMXtgmxpjbibYmDzI5uO3VPQirZKbN2VVGeFjVUHTj7dK1omlqqIf5E2KCaDnM0jMQU2ca4p+zYQEjrn2CWyKE7wi4dqHNvg9frKsfXaff5DmGUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DT5S8DEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DT5S8DEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98A7C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745039993;
	bh=OfgMXo34Cud7GM41Iryv/hn/bqf/iWeWeSiQ4Hm2Am0=;
	h=To:Subject:From:Date:From;
	b=DT5S8DEybD2dao3i3HXDfUqm/DarE2Yf4k0owCNn4Y0HmRqc3DR1fdX23r5fo+/8K
	 zEZfm9ddT9D8vTyDmqgSPP4ovfe5fLc4Q3B+O300LQIy7mrdPUjc8LfaTGj24j1Nt1
	 zlCahhNiD0ksupn2ZHe18y8tRBYTR+KpnsTDjowfffmTBfy9UDL/cymZ8BN7X43p52
	 tY8dtARXv72PSAg9+d6oAhlRDH08cdnZ8bSUCsurOTKGavFg3BbpXEPPZiY5NocSV0
	 KqoimH2RPcpMiEgT2mcknUjkFxoFUqlQkqtOkuid612pwfp4vEo1w86KjbK7Eqbcda
	 M+s2FWBh977QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D299C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503999360.15616.17093224431500835366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82d929d248a9dbfa8de0398972be261ddad3cb2c9b4e036be8f85f51b852529
Date: Sat, 19 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745039993
