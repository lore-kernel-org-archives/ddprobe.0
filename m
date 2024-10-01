Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22672282F7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727793354; cv=none; b=kCjdspwjaHZ0/lW0gKBNCqLQOY9+lrvh+pK9QxUzJ5XdGhU9fZHefbA4AuDwseA39hnWZi8S4g/LSsO/DGL+3ETbOU9o8j1jc6obwVAkgT5LvlIeG0PLhRuRbTV3llEzhA2Qi/mwv3cbrPe2S02rD4eB5jQ1r+5L58PfPx5N2XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727793354; c=relaxed/simple;
	bh=sWDT54Py90yJJRJnKnXHXvCbB5eyTkoCfxMyrE6xUbg=;
	h=To:Subject:From:Message-Id:Date; b=NaPuvVwtJ9Jek//i6onZ3v11Xj0DQ8XCsGM8lQyd60mpYSemOrSrPBHC/IrwQ9FycWxIz6SJ6EzdKehGJ0xXXY8zFqPS61Jlidy6FfEyfaB8Shau6do04shOeVyRG+XrMe3Jv16EURe7C78bysBZPpI6Reng2LdwN01TtyYHqJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afcGWnSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afcGWnSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59AFC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727793353;
	bh=sWDT54Py90yJJRJnKnXHXvCbB5eyTkoCfxMyrE6xUbg=;
	h=To:Subject:From:Date:From;
	b=afcGWnSmeT/iKJG9wv40xrRtIydgppvv6Wi8a17iLTI1YVCUjR5734f1p35y2Fi+N
	 I6TNK1xoUt6a5lu8Xb4tCyFFstLqmsiBWgzKxU5toi4sCiwLaAUum2lvGQV9xM7ZNe
	 41PdeMzzuLWuTY4bw07GuW+3xg+Ty38kdXbeE1z8oWh9x1L8Owy3HOUmbZTMmp9/ce
	 aAHgDCoN3PLJQmyEgr51/LSF/dAxb6hvsLmJOkgxq4TLjNUBHtLg7f44eQVVNybng+
	 TxnpcyFpLjMAFMDb4gb530OQy4CprWLhkGeSr/fSCM350W0rb+klHFFSnZC7CG1K7N
	 Mww4K/5jmMxWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6C3CEACCD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779335363.16191.8364731564798520275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c12c71eb2d9e71665b4d2da4ee820f3f99717100868f377e4cec79bdf24636
Date: Tue, 01 Oct 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727793353
