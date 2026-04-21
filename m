Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FD13CF685
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776776254; cv=none; b=oAviHXIKxTG3dlAZ6IVwgovGOwhNaECRYkBtknyBjzEGQv1elWFQbraRSug873HOlTxayoufNrKszBa/0TS5Wlk9Grjcc8D6cwC6NxyI5i4aQc2W1U8ECGtS5KQuYKkQ5++x71tpnO2ZZVpmWYFa1LU0xJ+VwfmftMQ8IxasU+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776776254; c=relaxed/simple;
	bh=92sa4QavWiHs1njM2t3pjc8JwZXXFjEkUXiktUy/bcI=;
	h=To:Subject:From:Message-Id:Date; b=Wp4ndcHTXG+sRjnvpFNw3qmvN1yXnG+o7dozUnvEIL9iUPg5edFjcxi+flh3NtPlk8EMfexn/J6cQGHEtDqtuASZRXDAYHOBFgUiZC0ftsSv9wh9JEqLgIKndymR6fSa/ILBOcW2gc+clGYnccX3smbfwebvGMl7XLW6iRuzWfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0BqHG59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0BqHG59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E67C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776776253;
	bh=92sa4QavWiHs1njM2t3pjc8JwZXXFjEkUXiktUy/bcI=;
	h=To:Subject:From:Date:From;
	b=T0BqHG59lpFmWdckDDhtqvTwR2Jl5C8yMbndQ5DYWbTZD6xHjlGo2JzJLSzA4HSS2
	 eDuVY5r9QK9sjfvHdp5KDsaL8tjJcdQ6LGRH0pZ0k0uQg7qDeKRvhcxV4GW1c2hdTO
	 tCMUeDsuPfs8aOEliOjcZr7IOXNRmEk5Nl3YjddVXLSnTP2HU9QHWwZn4Q/On7FAye
	 w7jYXhSChZ/H9UUw4OUUZYu+o0Xt1s9ipwh+1JjNIoDS3oqXejmX5onC8kKJHWl33H
	 G0M6o2Vh+ZZx9+lRI6n+zTrmbM5JfaU0gqnu88nFpiwGa+tEFSTB/07ilV3oC9eSoi
	 BokjQ8bJHrXBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A915DF8FA71
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677625368.23436.17776830090733418183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad784f0f5b599874999b788076fa50f223bd7923857ef60579c439d0329c89b
Date: Tue, 21 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776776253
