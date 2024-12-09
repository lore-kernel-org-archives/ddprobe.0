Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFE735973
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733753154; cv=none; b=FQgwt7pa3Fn4zms+QLd+E1w8cqDGrt68ZbeVuV5hAuwBdoujRCOXMcgxYEH5XWuBDI992AvbxW5xwAJiUDxjCO8c0b9IsPa84zz9lz61g/Dx8DwcPzswl6cB8Gd6kQndwgZAgQ2Hoa/shHLkLnsAsxe09Gc0Cz4AytXuAAcjkyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733753154; c=relaxed/simple;
	bh=tmTnsvME74tlm/ztdPB9eR5azOaOKgmsV5kVvNyvej0=;
	h=To:Subject:From:Message-Id:Date; b=RZq1h1QRNDW5ijv3S6V8Ret0eaCWkWEKPDzVa5Ho9x6Em52cYEmKSy2BNqoZMbVYpAf51v+rfEKUMRjHc11lwQGT+2+xjYW2GhqhHoEb6MEhu0QABHmEOBavqGkmqjTveXv/GfVpQw1NqF4FQBPG//EgiMdaHdrHtA/pUYF1Ef0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnRpBARO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnRpBARO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40EFC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733753153;
	bh=tmTnsvME74tlm/ztdPB9eR5azOaOKgmsV5kVvNyvej0=;
	h=To:Subject:From:Date:From;
	b=DnRpBAROi7d2W+wP7Atsn7rP+DEiMYXtC+CbTyb1CEFqu86A7jZbvERxgx/deZUub
	 x9g1B5FiPfOSwuo94RQv1e9gfr8iMPPkhBn87a6JZ8mUGOiVCZFuHMhnUNImktJ1e/
	 xtGbZUvUcXhEOTD1qBzetaBs/RPuvzWvbuyiO4n8SIb1IOYYX09wHHPE3NzpTMGj1r
	 FSFCtNOXs/iYk27EJKPOY3XIh/IZXiUnFl3lH0TcthH2/Eg1huATN23GbI5Ayz3kL8
	 cQ3gqnukxwkn8aF2/ye98vAUrZq6KaAno3O3FVqtoOOcOxAfrScXDgA6m7qrxxFi0P
	 viSixxlNNdllA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C580E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173375315362.27190.15223290014377995864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33fe9037c08e024dc32713717caa0be89ae8c3b66cfccbc4795bf93814a9e01
Date: Mon, 09 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733753153
