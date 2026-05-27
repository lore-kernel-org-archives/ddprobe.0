Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1FD2773CA
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779855154; cv=none; b=dFf+tyN++klNAw860qk2p5Eni3676ClEtFNrTDuYE0go1TBpVGjL/aY58dcq+ZM/NIYLBxqTLTP/f/hfnXxBEWwLigNxMe1qW7Llv7BUk1CkIRuXOzC5Ktfq7tUgMpql9KzUQ8z5IFg/R4inhjoeH8c0ww0H2otgXkLxQhUQbdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779855154; c=relaxed/simple;
	bh=PCevNPkcOFjz3rqSGEW/MbClSofGUpz4W90z1yqzbDI=;
	h=To:Subject:From:Message-Id:Date; b=Z4Uzn2Eu10VnoBzTO7Z7AKAJDq19rB8HXireIITFONwHaYArD3MCbCiNzvaXYuw7cpShwhPtqgEUyzbbk1vrxNBTvjr+OOQxP6ukCgRwXkNrYf2zwHH4mQcbygI2sPJr8v3JFpNFMng/MwMBjaCdeoVBU2+rILks+cP/8ridwTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdf2nPNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdf2nPNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82E0C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779855153;
	bh=PCevNPkcOFjz3rqSGEW/MbClSofGUpz4W90z1yqzbDI=;
	h=To:Subject:From:Date:From;
	b=tdf2nPNvLmRjfHgVlYzFijhT3bgJbChPUtw1bPCG+Pq9CNhgy1gqjbUcvAxFRDWAY
	 w7YehqBQgBp6Gz3y4hyhRAy9vpyLpRuVjCYhyIqmhpHTKpOlPq0OC7hnehOISSqSPS
	 b811leeISBimk0YmpTxkme5CHdA7JbTx5n/cLkeJgWiSZbPPrZ03hoBKa6u/dUoyXA
	 9Ptr0ryDnXBB+ytSCm/J4RQw1vOaeC+avwVJrQVbUxpvTfZghnfN+EoLAzkSOMpolA
	 xlxeJG5Gudwfn/KPfdTEpr4xNBCFznMU40+k/brd0EwkvKprJJ1Ez1Fp6488kxBwfA
	 +7h3XQvs5NIog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0406CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985515369.13284.15457579484886400920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab023c8108a5fd58a3effd2b9d6d4103df45a40eec4e9409864a7a8430eb4ffb
Date: Wed, 27 May 2026 04:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779855153
