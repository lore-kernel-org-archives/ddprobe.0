Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEF22D7DE9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785599434; cv=none; b=EGdgnCc5mrFRt/BlQh09t/hvsa1SIoNFDP9eb8IG6OQZgAcmYj4hYORLHOl/t4iJdMa4Jp8gJHsHDns/dyBrXnE/nRywJvt18WhShpEgVoZ8Z1LNwwbMz8+BDMELLLaU47pIJnLPCMKOZssGdXCeZGkuyyPHeFZrV5XYasDPdyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785599434; c=relaxed/simple;
	bh=8d8ObdovgvfkaVGnAJROsU4uj3dAtpkeHahZJprJTlQ=;
	h=To:Subject:From:Message-Id:Date; b=o9uexu0QglZ8LIt+KU3aiiCbwwOWJxi8zbUTMyhngvjIJ8HQML45bJPBwj8hnEQK/x8hxGuywbnIawb2LaDkhcD5pwUYjGYN7PJxAIMJEH7Wn707BPn6y+BrUl5ZX/2yZ6xi216DZ8dE5pmsknwCg7TAZZPU42IKvPjNJpoZTC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbrJ4W3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbrJ4W3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D61C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785599433;
	bh=8d8ObdovgvfkaVGnAJROsU4uj3dAtpkeHahZJprJTlQ=;
	h=To:Subject:From:Date:From;
	b=QbrJ4W3C1mLlK9c/KojL9nKlmxnbcVi0Gm8hS2LIU1wg8vdo8VfYqwY3VyjaPXybS
	 MpACCWmRygaO+0S4XXbaJuiOwdZhDvqDiA1Wd+0FhaE8Ui6p6qkXlLsYQD5QzZXbq6
	 VyTCSGly3XvkBPz1Ve/WLfYmXL77fwC861NrDCGPb8QyhB3ean9MDeZeY6qdevdCnt
	 ibVL8r2uZmpJQU3VnwuONFmAxYAgYnd5rBaN7zy+tc4+81grvgsHIZ0lLptKVwaxgs
	 By9fzWTSFwqm6Si0YcDvL/qqC65u0Uel7i4mYs/fI72FW4/LvcDkoghZoRV2jntRGs
	 zGa+4p8IzrmSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE237C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559943370.16899.9059973886793615267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e669fdf16225a65a0e67372ba453e6370cf16ded33e5eefdaf7b4c4b250d9964
Date: Sat, 01 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785599433
