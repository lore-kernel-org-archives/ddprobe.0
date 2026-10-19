Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0FD625B0AC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792371034; cv=none; b=hpW7CyS7eQmws1ucHORb6brF7qZnDx6+kvoiq3aLLwhzkVHWwhZYMiy+RrWkBiQ3XS7MJm81UjuTyJsb34foRJXlL8RZ2dRuTIzI7Howp8/vabwsn7sgTjyX/x4jucRednRB8k3I3jRjUpsJmlK5q2E6VmK+NncKymlV4/oP6XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792371034; c=relaxed/simple;
	bh=frNHktHyztDHYqxRzCLrsUE9hpcJLJNJjD9cLwQ1bRo=;
	h=To:Subject:From:Message-Id:Date; b=mQiOfPCTa7mCzEs1TaW8zViDNHZ+sHFipnL+TleBA10z5CB6KyqLesdeOpHpvkZCtuJlDIJ0RLi7pnahenRz+peT1htNpccruahfQ3Vv6Xry/HwMdki0TlerYJtQRsp4zO4mivKQVCt5cDdYvyiq5qsMb6Go5N8zKBOF/qqYdlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rs5IamPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rs5IamPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F31D1C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792371034;
	bh=frNHktHyztDHYqxRzCLrsUE9hpcJLJNJjD9cLwQ1bRo=;
	h=To:Subject:From:Date:From;
	b=Rs5IamPfUMlFrAk6WHpW7la2jJ/ZxIPq9w/IcEg3Vegaa3xvER4AUPcyiuR/S0qcs
	 FskqRT/nXi1KoAKqlvMMOYxft1TAhdC0paWANsaDgDscVI7sIk5rFM6MNiJxRc8iXp
	 TpyOWdqDl7j/g2Fo5sk9rLwxSc8BA5TjAUgARAiqIpqCFTzyORDmW1z73EK+yQE9Hk
	 +sQFmEqlZblYZivRocEyNQNiXjQAiTyiUAjHQ0zzEPL+CKm7xsX5i1yWGfNqxblp4e
	 vGNOldOozYe06jzc7mXtRD0Fcsu6NficS/NYc6AogMTlRmGswwc3rWXP9KXW7NQcTu
	 7Ou3K/nTyrEmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A29CCA490
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237103375.32666.2962745093191508222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12abb5a79ce97b416f10b5dd1f92cd257557dced3f3a161cbf7340a2acfcea9
Date: Mon, 19 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792371033
