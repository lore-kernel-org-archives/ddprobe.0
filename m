Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3664D1EB19B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784868034; cv=none; b=gu2B+HA3xc7Ha0PsP54U4WidScdtkg9QZMZyOVYSNpuce0vAJi+uDSyfGfbkwr7Y4AzDm8d5xo45pzHXTDdSsMxReamYsMa4Xuxf4tQvcoGYTxRk5X2haSCv8lr0ZXUjk3I/H/1mWZ8lSuB5XCYtEvuDvYrQz72S6nte825Z2KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784868034; c=relaxed/simple;
	bh=H7AFPMGSubaGxk3ht/73emscaMru/yH9GEBqd/GAut0=;
	h=To:Subject:From:Message-Id:Date; b=FL9E4aE46RRnDqleOgc9NmaYk+SowkX2YCXOAJeFvw26qRFWQOHLpUwAmjiVzoXDwGfidosmvLLH3logcCJRDp8R183vT7T0NIy3J1/siPnGvOLX0CPQJTh5JWHsw8XJQ+R/0wiT3ldcd2UtOKeaaBTmhfSV/J4RuEvsc6Xg18c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9Ux415I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9Ux415I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1793C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784868033;
	bh=H7AFPMGSubaGxk3ht/73emscaMru/yH9GEBqd/GAut0=;
	h=To:Subject:From:Date:From;
	b=M9Ux415IQPYX44l495KUcp5D0zGnHs9krjIugoUCCBfePVYk/UhLxZmZz4tawKEn/
	 9l8T6/iOj0w1pEUjMUqSD7pK9ZiJHUdVmKGiFmv7qC1Bue8w1oek9rU2K2Bed+P0te
	 aLfYleC3Y6ba3geDZPgpaOVK3n/YbtXDp/2mK8Q811YNI68ROc9rd4L+aWin+wEDSr
	 A94qmOodIhFEbl5NXqUeSckdUQK9XqHycJSFf9cprM5eaJ+1eIxS3zTCYxONSYQLUS
	 TCVhHxRWzU/QP5s4EPwkcGeq4g2b9vXIsILt76wPATq7JNndNh+wlXPDEOWSpk1dLm
	 38KXwJ253+eHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE81BC4453D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486803368.6807.14860010003273667725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfca9e331243373b78db0b6f8d094625078482c3308c949a9c520dccf0832f3
Date: Fri, 24 Jul 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784868033
