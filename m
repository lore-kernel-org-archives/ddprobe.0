Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8B515A4BA
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713961223; cv=none; b=cJCPw4Nie0l3DlpiYTCp66p0dDKoNc+Xfg3MpZHIqBwgoOHwQifFQqTWtmiEmM4lYZkjlk4gpCIfnF8QMmhRg1hobuKvgufozXvQqqb8ql4CVuOsyuAZVD38LSoRql6nr8UilIkbR+RLXlYfHADDiIIx59JG8rrY+03FbREkOsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713961223; c=relaxed/simple;
	bh=+6JDLgHlsSjqTsapAnitxGQZpWB/mzFn9yJ9Q02lZTg=;
	h=To:Subject:From:Message-Id:Date; b=UljRdjAp9XbMnQSMMrSaEhk0cvoT8fzJLF4V6NKvzjyOYM3pgiScTClb8mfPOxHqmCoVaaPc5eXac9JwDJ4/Esu/rsbZRhm2eEg16DvI5vXWqKdo3cizOvL6ONxiITdJ9vZsxkMaFEX0yZdioSnUXENO0JzY5o7oWzqbBHeOM3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9S68kSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9S68kSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0868C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713961222;
	bh=+6JDLgHlsSjqTsapAnitxGQZpWB/mzFn9yJ9Q02lZTg=;
	h=To:Subject:From:Date:From;
	b=o9S68kSEVzglS3L3UCGuvDC+UcXREsQd6RVR4fK9x83P6m585dQ2RycfhDlIZv/Ms
	 AN/BVkwWNn/uSXZE/ZubayXOLL/dK9+3CuSGkeCXHYxci7JBAVDdT3/I6PxSs0Vww0
	 SUeRYX/23gOaKRXGqcGYsUpHatzHnvMOYfw/HNeZID/YbLmsTlEGPff8Ev92gPxg58
	 lZ6fQ00MRvyP/ODGWPOE8fS9XoLdol8GuVyxWDywzoG+uLUs3EVlfq9NFbqvPzpij1
	 AaCyLJqTmtl8bmWaA8uab69uL07sJtn98wpuUVq2m6VDBMdgjM7zoLBbqUfDwM6fUg
	 oJsNDQcGYThvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1F6C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171396122281.27649.18368437799746036105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0547c23327324af9085aa20f4267a1d2ec89fd7c0872d09133eb822ace7cc4
Date: Wed, 24 Apr 2024 12:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713961222
