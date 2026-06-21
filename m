Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A335E573
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782022594; cv=none; b=SBXV7Ho1/UGLVDyQ9JLK10dgDDNA4Y/D1Ro2VcBOBCyUMhV19VTYMSC85mdUbiIGJZ+pH0y0vxoZANuCk72MRDxYM84kI/rm8t2HDdfFhlF/iZFBT50kKqJo34jkJbLSSfnIZZiVhb1nQQVM1/75fhzG4ULFaLd8uRBp+o04Q9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782022594; c=relaxed/simple;
	bh=+Yutx728Unl3rOa8Ui5jhh5TsV+EvTUtnAel77lESKs=;
	h=To:Subject:From:Message-Id:Date; b=MtEblU/bxIB5zYvCjhpdh76mhw8Uicof+dZQCJiY1Lw77B9uKH9RKxLgA3NaI3pndKRFqbSHfLssP53pfF7TcNi7nmnFKZeJz92hyvexeCO/4awVq4NjfcutuFrktoUzpqx37bnP1hFLznAoqlTlU+APhihtS01AJy5aLUEb/S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j51cTQ58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j51cTQ58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3600C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782022593;
	bh=+Yutx728Unl3rOa8Ui5jhh5TsV+EvTUtnAel77lESKs=;
	h=To:Subject:From:Date:From;
	b=j51cTQ58+eBQ19wSltJrtYa3VQoXmu+gU/5AB5MpooTfilgxTFdH9wxDWtnaDQx1X
	 uRrLaEdaJ8HGvRJCIiql4rWu1FM/HAVqqsLMiFvKAMwouIG40urAzwCsvhIZBRc8VF
	 APHMqhEBrX+879Fw4EngsRYK+/43XgUak3rjvIOtXGsUxD5GVVyLapnkWze9NvFIHm
	 GYC3pWTaYL6AbltY045jIB7fFvtUbt4BZ/6J0ahYzqODew/DsxKIDlYFVJurpUtlO5
	 6ZyE1hdNaXHcpBDteviPMUG85ggLAU8nDDhOh/xLWgthtAcgsD84iLXC4rXdwf+BzP
	 H9W07ZUbuKznQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30A0CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202259369.1224.10645913431313579402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5b51f7f2d4812803bfc4209996cec4e37bb4778ba05f462924b78b9a2a6416
Date: Sun, 21 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782022593
