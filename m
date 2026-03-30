Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE2C3DD518
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774897494; cv=none; b=dErygS0G9l7Y7FCXIg9SiEPUoJaqcnrZNaMWJsltUc9fX2qqlM9/nUQYB8u6w02BrCa6lqjJsqtRKzaA/a4h704LRo2QUgGiznStG2NDoKV09m54S+uw6qVeEeksDgaD2FesQty7EblS7dBy3BziEn1BpvX93fabmkjOf9tNmak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774897494; c=relaxed/simple;
	bh=gKfaYst0THzCsBUlU2qf87rrbRFP4IOrrvts2NCkUPU=;
	h=To:Subject:From:Message-Id:Date; b=l6KCdnKnHImHWkpiglPju9ejcOIEqviNWCzStRxHsGI88VaxrimXmjb+MMeFDgGH+y+L9bAvea7b6Ulc1IGfyBHsWKE5q6hn6j+vraxo5MY7MWIyrAYXkQbmLyjaWuyx7iJMEMZ7FGjzKZLTco6oRkYqA64Q7d4FNpruEjmVafk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTpiKS9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTpiKS9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A190DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774897493;
	bh=gKfaYst0THzCsBUlU2qf87rrbRFP4IOrrvts2NCkUPU=;
	h=To:Subject:From:Date:From;
	b=ZTpiKS9kR6vZtCttlX/5lcGmvKLMrobr/FUvgJLUcWLK0E2wGLav0JMs6Ccx/6ZlJ
	 UAG/rdtc8PVMFiIIkcVtXPmUV5Scv39Wfl9FKvAV7UIJEJ+LhGQqcTH7zEXVq/T7HV
	 z/PXt+WWDL7xj6bsqYeYL8iuvYpIywUlxTsa1Ue+ffX+UZgSGufuBClpkFSAAz18Kw
	 125Csk5lMmLriYQIDZSQ35BZgmBtvB9bYVbi30ATr1ry4+B/9D/iO1Hvn3kodBDFMb
	 QmwdLPxRCJjYd/SlhF/evjbDGgXDLYfWmKca/MvR+trJTpRVonkvYGlz1Qz47eyytR
	 8zHqyqxo8xCNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C41061B1C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489749358.26073.1932888310808326825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c8512e828b5d27c81f493e16824136fb9b5dcd60afcae8c8e89b9c0a0c9d6a
Date: Mon, 30 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774897493
