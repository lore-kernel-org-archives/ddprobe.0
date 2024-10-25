Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1235B1C07F9
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729842954; cv=none; b=EB8SxJpkCpDXU/e8jSw5US7Nc0qLm2RZCjPuVbudaGcNntLDIsGM7olEJhkh/LrqNqHGv/5ZIys+nANgaA+GMURc3Xk8pqL34FyCS6VPYM3JuZAJLUBjKs4P3/r8wqcTbDQPYLnvJGs9HSe2sDXMkrGCCbPZd70kN+WrtUtJvqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729842954; c=relaxed/simple;
	bh=gr0ZpI1D8kRvcm8agktlTR9AlCUM9dbDuw2UD3NAzHg=;
	h=To:Subject:From:Message-Id:Date; b=Iqf1UmUvp/PIffcTm8OC+8eSdwfMgxycx0h4lfgC4Jb8/PpnHZ+Mv2fmfsAs8n6i+Zn5no9uEqlSppB2UXVCcwyuprQ8ULOe1ItcOb7k2fis1RDNm/U1MQbdfOfEuRGOYcwxOYGdD15k6Drve6q6N4XqH9cyNTTPX/kZKz4tDd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoNfdugE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoNfdugE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE76C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729842953;
	bh=gr0ZpI1D8kRvcm8agktlTR9AlCUM9dbDuw2UD3NAzHg=;
	h=To:Subject:From:Date:From;
	b=UoNfdugETBXhItXaPS+/5ZQVAlTOkgUCpMG8QtnM90bifkISJKg7nDtRrb+GYB9Uc
	 tbl1RXxR5hMvxR2d6WAG47GMHMpEVYs8usGTvPNHmm52h+AGPkhn38fAX+G4QrTUIi
	 gV2bZx4/20vngFyRa2hjFs8QkIveVxdzix5a3FI4Flc4sHru8YquPzxhIO9ZhoeO/m
	 gT7qVs0aHMcmtgT5FEYQr8mGAkLQMsRDK3NvrI7VfspxtSuXnvGTD1vT9DWXM1Jjno
	 kmEw++qNknNcNUIZOTEP756yjeq2ocLEEkfx3sDCOvWqMAXEY6kbrjcEE8THFi6AT8
	 v5K5uXktNcpng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92825D1171C
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172984295359.16732.13000280541287915321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a93542be8987a240e8337ef4815f69bfeea51b3476814c5827d83e36f89a9c6
Date: Fri, 25 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729842953
