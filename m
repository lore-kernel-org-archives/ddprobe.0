Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCCE2765ED
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755586794; cv=none; b=oLnpOrDBiNfD5bMFPoQ94lc8nRuWBiMzDROta6JFWX7Ljt9deaa1kFcQuP43XwkO/WoBUH5L4iyvN7i1s4WhBZMTQU60DDewlwBuJwJgutdVifXW7hJoRNs/xGwbbfPAmJ/uDS/xwlsq6Ju8wBsyHKPNHdJlI9uUuJk+6v59YOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755586794; c=relaxed/simple;
	bh=sKcTWp29K0HmZxwQEJEdGGXpjMgfd0hEf+ylunczyFg=;
	h=To:Subject:From:Message-Id:Date; b=rA75J19GH11PwNNy6JSkceIlz0/h3gcUGXvhmgUFDJnVkn3OuDJloK5oGRpbS/Gzw5Sbbte8JijD4Rpv9mzYytRsMHH+dIrHV2w1Zly9mJ3KWtfyaS1w2X+pmxKdhr8xTdxSxOQBqxWdfj0m9ESRREzphQ8bIVjvfTBLGqEL7IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tG07oSxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tG07oSxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDC0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755586793;
	bh=sKcTWp29K0HmZxwQEJEdGGXpjMgfd0hEf+ylunczyFg=;
	h=To:Subject:From:Date:From;
	b=tG07oSxwDgFqgp4kV06U++bgTLexaE8HHtlPBFifB5FezwCsgMI8LWXoQec2XuD6K
	 HYenTGD9rQPUMOhMvlk/LtAjttCW2754IGmp/jF1crbm5SSxoK6eMjjXSFL5+yesdM
	 yZVl0nsij3JirbUjSV74Y1NTAI1ETmilaxS9Ex3wSOrIcx3nn/vlNh6iAZpub4JS+9
	 VZZwmn2pzU5hVyX9KW8f91MnDVMRqGYbqrrTcl8srHyvcvJAIMkYVG8cVzoDhpatjJ
	 2hb1DicGjAIE4lGafDoRkmmY0ua3WlP4rJsc8UQxa1UKOHdzIlS//Xtn9+ZL02hORM
	 +fsqqs4g65xLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D816CA0EE9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558679357.22689.7349277072882004900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18368e11e943cd43eb7040430842e1aaa82efd02fe1b33c3218d75484de1eec
Date: Tue, 19 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755586793
