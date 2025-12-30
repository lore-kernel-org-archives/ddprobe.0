Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CA823F26A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767114834; cv=none; b=aEktbHfIoNLVIoh3zNa8aDpoG8zEwaYkzwS3o4+RrYIoYsgKod4WQvVoxs3vLoCtyE+MA3b/ixkvuDQLrkPEaatYthOl8hFWY000ks5+qNga31Gaz5XZwPrmu7O27oomb/q34C28Kr4uzQtE2byEQ1KepuZfqKVz/sYalKXvSnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767114834; c=relaxed/simple;
	bh=oHJyzVw8B+sqPGzgwe9FUhr8v9l4rHfWs/825wV25S4=;
	h=To:Subject:From:Message-Id:Date; b=LOZkksvUsLiZgkDea42DUFJJH7yCKKImdu/E/4fkBj8E/faDEBLlWX74JbWpc3QbFlRAJJzbpuv+Mov2vP+/VrzoC+U4AfsPhY/dnEhJeTT5ctvk6LtNWd+wGK79Fag5mAHid2PJTY+Tcf7HxYkc7z82k+gqiRV4fnoTYgDi9Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTVkD6hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTVkD6hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED9DC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767114833;
	bh=oHJyzVw8B+sqPGzgwe9FUhr8v9l4rHfWs/825wV25S4=;
	h=To:Subject:From:Date:From;
	b=ZTVkD6hyntd0YLDnHLUbW6BqHySiRtj/TMCFDSlWDUBjRpepKYWcO2jwRuT4z+5n/
	 gaI8uBzj3yHn2diFcC51XXOjSA26lzDFAlnYcPLWz6xjWKGdoHNLADl3OfZLP93q2A
	 41t6YmG6v07O09nLfpQ+WLwZjK2RIFaKoSzwynhXyV8d/E5BGn6i9a+4TXTShFAckP
	 twN+MGDx1I//L+wzrLbJRy9SU4/d7WG+YTkWoibZM/4t5DpbLlGpZT0ilSFF/4tSZE
	 F5jIteKuEaBHblz4XPKJF7qwIlS7QMDeQC7hypPf0dYUKCJkE8/+UFI4IL/aFEwq3R
	 9ircKOTLA5j3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2ADEE4990
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711483357.30307.14906257825336014938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5bdc5767e81dbcf6a4fae341f76bc737fe912ad1f535e347e5b2314e90050b
Date: Tue, 30 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767114833
