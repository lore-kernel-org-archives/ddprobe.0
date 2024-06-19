Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029E12139CD
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718805563; cv=none; b=X6oI0a0i+ghKJruUZX6D4HlYX0AVkYfjfIQtd2Z/B0lxuT3mqhn0Ly+cI3nlZGIZxgO4d2t64ce8SfU0dBLdU79v9/Vju2+hHQnO9LPf35ALEiqFoyKzDZw9fpOtPGLJB4nVVQMKWJBLHrhPW6BaA1TpocQqLRAr6rIXakkY2g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718805563; c=relaxed/simple;
	bh=/3YFk54WAm0l/QCTDiCUfXoJql1v3Qgn/avUW1GN7Fw=;
	h=To:Subject:From:Message-Id:Date; b=LOQOYuYnEU1tbKF5trhIjRDdsCbqnUbqYjW1id+5oaqhDs0PARCHMyfaLhUQuOFhLbxI/7TGQsATJUb+LU+gGg0MPu6QJ1HdEc93gikRPU2E/kza6/RnVuwFy9mKdUCsfCgiIk0ecHGegs32/JWbPmGuA1eaD1gnIFsxWOTD4xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+mZg+DV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+mZg+DV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7445C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718805562;
	bh=/3YFk54WAm0l/QCTDiCUfXoJql1v3Qgn/avUW1GN7Fw=;
	h=To:Subject:From:Date:From;
	b=r+mZg+DVSmMpKnmLDWAcelEmW1lBffXlB+pAd94oMJR2AyiG6mzjRURxFtHYqQNAP
	 1tfTHBIYnZORiw+G+nm4e2pjkyhk+I2wYy2FGf4j8e6Hn92XTxuDL1folIxLd57SOy
	 U/mmlXN/z03uBCrMuYKgwGAn2kROlC1axp0B/FCN7BELyNq4Pp9QJpmYN0EPmsAmdL
	 TKsftRGGYBKxdFKbpD8hSbnVNIKCmqoxUgzzusgM3Fo3SQcK/sUCf1mubvVuvKf0ay
	 tTMR8lV97OdsCoIx2No3TqNpciN2QPVBx7TLoY5LmWH1Hbjr4DuLE9FC3lanznOANp
	 5snkQCqqs4/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD65AC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880556276.4001.9420665321833998263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09b73e12d82046b9993b6fbbd5b8551e15cf6631d98f2c3ef194874d5201bbd
Date: Wed, 19 Jun 2024 13:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718805562
