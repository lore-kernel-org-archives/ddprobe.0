Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D08F1386C9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781060734; cv=none; b=oqB3g8DfcEgrCgsoR+KV8pkvhS5BW3SnVRG6Vyi4wF/J+TYe1qoYPT4hZNWeJGmWLFz+X/gt/J9tDYj8kUteYYOHrBQiKp6ZOPhj2VhapC1DUdsOQ3zlQTwc0+HfzPh8t7qyct/qljg4iKnJwM7L8MwkDpV3i5CwSRvSZIJREqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781060734; c=relaxed/simple;
	bh=ADSgc5qd4za3O5wHgVQCODoeAHqQKteF/6gHJ3nSLUo=;
	h=To:Subject:From:Message-Id:Date; b=MtQekdf1Uu71VXQVBLLgKX3dKjKSRa/Bmcu3hEOMHCltmS67ny4TfMaoAqoaeX9Y7mOwLlflXK6iaGk3kHRCZwbMpalcDXsNNc4LOG1V09E+ATG5pq+L2UNrt/TSNqh9NbT9LIOY7dknJiPWNQlg45V5dkFCZ4Cpcn3qr/piPao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jirw3/Ac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jirw3/Ac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C760BC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781060733;
	bh=ADSgc5qd4za3O5wHgVQCODoeAHqQKteF/6gHJ3nSLUo=;
	h=To:Subject:From:Date:From;
	b=jirw3/Acb411xNHdcj/90lf1SpHysrxECe4KZ8SouUYzrslM84vb4bVYcPrFhcihT
	 MZXY1y2kVMM1e1VqFymYY/xHutIPAYhE6zA2YEbZIH8bDT7AdXY4nhIKwK1jbp+ON2
	 16CFsNqBFXtAxgPaf/SBviCJc8W8isj+stAASsqgO2207BVSLDQVBsUbKVe1qMzDJ9
	 RZWi9Q4GHLTfv3bnggixHYXu+yYz4+tNCh6NcaC8VbXBIb3aPaVuhVYHtxFe+jtrdh
	 1+ys4yVeh8Vh4OieXoNhgDBgWw600LCLhQb7RiAGse1/vjRuf2C+Ce1Ewp8fZo5Uvx
	 JU+EHzSuo28nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD356CD8CA8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106073370.20848.12864717951122364538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a76dd12039fb5b0827fdb96f674a5745fb7263c9a08142f468b1b86699b2cac
Date: Wed, 10 Jun 2026 03:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781060733
