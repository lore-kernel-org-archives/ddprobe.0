Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A273255F5E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769350434; cv=none; b=CQBSUtCrsJZZR8xAA8mgP0sA0hfpkwf19IONMTvWvLjW9K0aVolLTd21zKACJCzct7PVQvgF2nn1wiwiNMmAnt4od0zRxBzOvHOCbPyRUi5/la5IgDkD5QNnd19IrfxStJwKzwIxwAXhPqmnSF+1jLY1SI7Kdn1prwDIpxqVB04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769350434; c=relaxed/simple;
	bh=Ru52NZUPsU3MU4U2IBVd/4BUE9w5j1PxPcfvzJwy/mI=;
	h=To:Subject:From:Message-Id:Date; b=RE4x9c4vDJQLlN5D+2WsrdBa09hkiM4tFa4eJtheg1VUJHRfRoRXTE6cqn0jg6M+jlxerH3PTROUcT+aAxu6s8BV1+tszgWDnw98MyHeK0dxpS1kYLXIlxcd1DT1uLtLrjbFPHljPGSEDbATmgVSSbvtxFwOZfQ8UHzjNPeenRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkIqoaV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkIqoaV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FF4C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769350433;
	bh=Ru52NZUPsU3MU4U2IBVd/4BUE9w5j1PxPcfvzJwy/mI=;
	h=To:Subject:From:Date:From;
	b=dkIqoaV1MuLkmMi2es3pnpuGmE6FfNQynAfUQ/ZtG7DhlQN0+HG2Lh/XYIFTfCs2l
	 3P2laxslV3hrBiLAcCQ4nRNerU1IyVdu5pjkhQWxhJday1xkBx+Jk1D8Rjgrk8AexI
	 V3rDypNqr6h4gVBmlpvnRfk7UjShReZBHnNOqylDpbkXSFK8B54enSVVHnV5efnFQd
	 zPeFF7ALlaCcUi3hIGoBH1Ln0oJxPxZH+Le/1evwE1wg6QMAmWs9VZ4Ui/u930bhh1
	 Ws3f8UTPXFuwK7jNQzm1eYheNvg+zUz/+g2HGoFSB28NGlrFzJfiOdSP5aFWLkiJCC
	 Em/wxbkWdsLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9433FE63C8E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935043358.1396.3008049363226718517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5787c0b7e7303d8f79215527a3f250633a68f86150a741cc0e4891f4254ced54
Date: Sun, 25 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769350433
