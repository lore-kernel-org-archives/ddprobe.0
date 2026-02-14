Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B8363CB
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771103694; cv=none; b=b7L+v7OqdhECdxqEK4qqHC/40btP9FpqGs+HJVjKLDWX1CZna4D7vBFYfAN853IUSebtzaw9Q0lHvFHAXTd9OXYMR6l66WNbLMP706XLylemrhmi7ln5JidWJFm5txf1004yoK17DaNAQwCLsfIn868KBxuUFgALg0Beps6xoso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771103694; c=relaxed/simple;
	bh=gjI67MT1Ntb4EzB8fhnK/dmg+sYqskpqIRlzuVhcjhA=;
	h=To:Subject:From:Message-Id:Date; b=DOI8QL0yIJtPzvT7LJy72RkzI8KrDWNmS+HMMRyjmsqWvS4OD0Mx5gQuhAIpsnMf4+TCxoQyBXNWqJzR9kc1VTHtSvdvka6GFPNkVjPPWM80GqSwgsMqNNGqBpnwko+45TkcsN4M48HJ6xgYNNf7di8xUwLln9V3LQjjRGUg9uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnnXxd7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnnXxd7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA33C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771103693;
	bh=gjI67MT1Ntb4EzB8fhnK/dmg+sYqskpqIRlzuVhcjhA=;
	h=To:Subject:From:Date:From;
	b=AnnXxd7mYYUeLPyp7rvnicwBHOmXg486/v/n90G0HV2bzThE+ebD4Zs3JFdPsm3fT
	 hoETuLaIwMNNpnqcNnmVFMegeK4xHnFjlHi7cEz4GWp6jzEO45v8tQXxwrDf8cEcoY
	 OjW/wAaK88lJcR5draYTzh2AIt+2h8vhBSz0vp1r77/0pcGXkgYXdpeqg2dbWXOZz/
	 DHt/R6Mu4fs+vqg6Xvk3Ws1OfI6ymiOuMT4vqW6qCtKZmUl2F3WPLXwIHJ1niV4jIG
	 yHaXVmVStHmeMNInIsuyk/YAJ/n/ovuGXno8gyR0laAsQuZvJ5QpsiPDYurdLIG6Jr
	 7rQH7mPWQK3XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0D6EF5852
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110369367.31416.15655790598064519672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0b757cdc691b9c4c9438f8c79bdccff7cc3bacf260c3d963cedcf832c523f6
Date: Sat, 14 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771103693
