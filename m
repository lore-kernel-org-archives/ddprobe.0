Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39018175A62
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780808674; cv=none; b=nvrDh+lEQdu8d/+PEWasNDxNy09cH9Gt2n7CsXv3yWn7pLhIG1dzAYL1aJKEDL7LJlboVLCfiowoCQKD1Yxj2zXkCqjj2QDbJH/1IIc5tPWEGr/0tHN4JkicM0Y7NFMz2hcZfS6IEsN1kk7Grn7Yp1zGgO28gloierAi3fWGG0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780808674; c=relaxed/simple;
	bh=vHlWVuofBYGyU2kboi1WsIwkJZOY0sudVbsd5fTesOs=;
	h=To:Subject:From:Message-Id:Date; b=kqAVQGf2L2o9r6rRzUu6a00y9BV5GRWgcNJcu8ZsJYP8seVEbUXhCD8yPDfhRwXcfyzOh8TMDBlkAQOeEsSCtr4LY4CPCjRsUOqrjErytAr6XlmSx0Pln/Zl4qki+xQBTZvOAMbfBrYVnzCaud2j/tfGTCiwO00LhJIiXzTIXtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxCQEK+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxCQEK+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2B0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780808673;
	bh=vHlWVuofBYGyU2kboi1WsIwkJZOY0sudVbsd5fTesOs=;
	h=To:Subject:From:Date:From;
	b=RxCQEK+Q4Y1ieVMAdElu43N30r0C1y5vSVpnaTPl3oOAIBAVjSOEoGW+Uwzg5fhyg
	 T7IN2HO8J7X28rws68G/wk4fFXT4bGFE5ClQC+sU3Ufd2j840gcQ0TidQa+rtxgwFR
	 TlI0/4hlDzL0O0J5Oj+criobCNjSp5Ycf78Q1ICeZGXTiKy6Ay6vCLvHZV3s/ugkw2
	 KcHZTUlD0OPszXuYyhmaBDZxNQLruXNWmjs+9YK3U9I9e6aFMitMIzg9hYIDHzQfpz
	 2KgfkzP/05sWajgihrJTeXXpNa6onLnDH9kyL0rHtmC4SXVO30RkkG6o7F/zYF5CKi
	 9ZyYIu9Dikcpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC68CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080867368.27219.12875603715661475019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d0180cfb12c0be4f4d5f10b88e795bdb6924b97e211ab1b8f6cb2618dc8f8d
Date: Sun, 07 Jun 2026 05:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780808673
