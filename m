Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627632F7EF1
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788571234; cv=none; b=JDXloWeVb3EX8VIS03UvV6gNPcoRowrzyP+sTt7DTvwFCYu67x6wM0ASKPKVo3UexJLjhUk96EHnhCR6nzrjrH1KPe8tex/dujblpYiRwXJB90fEWcV/T/OsKN6nUI3x/hOUoCPGqfA/TWnrH2/WuoIpX7bL9bCzG/+NqfVerwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788571234; c=relaxed/simple;
	bh=rAxo1ODnczMIe0YQ2clUep2TbkNoikjAAuBP/7CXJRA=;
	h=To:Subject:From:Message-Id:Date; b=d2ppKM//c1uyIx8ZUzRsSiNDK/iXy1KG6M7tuWLW/oLlEuNQH0alSDnCzg3t6FGN4zQ4oAcNZwh7nCRgm9aFkjKdSjq5bkcgdBDi2PaP783aVuRWQgTDjnIrC9nMTi1tIXV44z54GB9cDEPhF42etdt1w5e1c+kriE66ZQJxpho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iF+twWUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iF+twWUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF229C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788571233;
	bh=rAxo1ODnczMIe0YQ2clUep2TbkNoikjAAuBP/7CXJRA=;
	h=To:Subject:From:Date:From;
	b=iF+twWUkI3QjnIn+Fl1lycn04OPny1970/Cqsi/MQejD5hBptqsGSdBmFniJb2F9f
	 b30AemoUfD6VAhNNZNusZCLjtL0yNPx1bU81OniEpWWY5Wqyo4AW2GNpFpve6K9L0v
	 a87kIJe/HJSaqFumbI6px4ppf7igYWpxTJfuFiWMDqs0H1KKIuh9bk85qfV7JtyYes
	 KEGhtTqrAZZtLTZKk3wkpJxbcOMQgUIJ5+RMMxI9arXe6dtYqMKg6kP8/xc+1RKShV
	 djyN/j60fyELCP4cU+PcoEIbaPTnlhDkTxUPkajU60Vs2Ngjr2qB/ttzoJTtdVwNFo
	 7cPoBWVWDRYgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C01C79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857123368.21870.2603642476836578448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8305a677ea1452fad9babf8d1f8a2d3e318ca095108c8dce118c9eacd1c242
Date: Sat, 05 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788571233
