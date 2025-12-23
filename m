Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270CA20FAAB
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766516034; cv=none; b=F1AX/eeg0NxmdrYAUjLJ8RVwmB3r5euGgBat5TEDxzYsfYX+4rcnQOiplCnH+4muhoADoiR7Y8iG2jXgxAi6n1/ACY0eDEmntZcJOnU8lv9eyi/Nbf8QvA7WVLV2/q7lzbrUPZhgDUzl3KeGJy5EKUrU1YBHaPBiOC5oo6O3+RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766516034; c=relaxed/simple;
	bh=hm9khZXE5oykZhdUQBCUTiibU/QoiwTWgo77IBfMhd8=;
	h=To:Subject:From:Message-Id:Date; b=snRFhZfnubvipAXza8nfFAOrNvSp5SEXJJO5hgFielC+P4S2S2/UByVXjnqFmgmz46DydEViCxWVJqyd17tTUu8fL2GgOzNk5V/ypbUEw4A+3n89WGkkKqumIyd/yew+88g7cKa5Q/yXdjBX9HFwzGsfHNVBtGPe8703YA+ZvIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMt91MoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMt91MoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1237C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766516033;
	bh=hm9khZXE5oykZhdUQBCUTiibU/QoiwTWgo77IBfMhd8=;
	h=To:Subject:From:Date:From;
	b=LMt91MoZ6ZvVUJ1padb0oH7a16lw/DgIEQRosmiqvR3AKoPFsWVGg0clIGC9+wN6X
	 NjsV7Ar8up71WCK/bh9JhwT9pL8AewTq86lWiPwdUNdsWjNewyx+1qofqxQwCAiudG
	 da14UWRVVVbxXakEmUTl8qX4fz7xoEfJCfF7A+b9pTqHaHoBcFIiQH3VLmTQVizSes
	 zvJBVT8PZZse6vHfEy0ABqp/bh5D3JQxLDN2vOROXhhZMbRnEI4iG8Qqdk8jBJK9or
	 TGnFi3foHiQ2WMKrGLsemmI7Y7+uh32mol0uGP0eeDr6UuRBm8h3+I3yGByNAY9Pog
	 xX4ppEwSTSgGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A8E6F086
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651603357.30844.10533386720728196113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed74dd50aeb553e4eff0c1661b8be53587c6c695aa416a5a43ba7689c7184fa4
Date: Tue, 23 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766516033
