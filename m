Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C3F16C867
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724846754; cv=none; b=iD8QD4a7DCGeQ/Fh3Ol97clCG8SPoMKmGqhK4dloH06Vq+l5R+xu3a7klriSbz8+WkkHPkd+mNmzOc19SMz0HtbS4n5TO992KEBen67Jh0caPZPoUOa2IwBprhraKWUrVdVB4p4snvbkV1rN4/z3Ze2CbA+alSvGDhNpRFVZoFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724846754; c=relaxed/simple;
	bh=MfK6UZKScOffc36x+xg+P7PwXjWtn1DOdXVLswtvEcc=;
	h=To:Subject:From:Message-Id:Date; b=UBFZUvaNjyQK2dYJvejeTiNqwBbDq/VGin8m3TGQMjPCA//8dbE+AzXqDgcFD96L25zBW0d3F/YnpKg6Gbc9GcRBl/zFdGIdCfDXOZwRcvEpIkgWTdanmWVFhTl4kQHY9Lv5oGqFFeo08/5k9o0o1xh/ZA0n6KX3NDh0mHd5FQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpMjqV3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpMjqV3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE63C98EE5
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724846753;
	bh=MfK6UZKScOffc36x+xg+P7PwXjWtn1DOdXVLswtvEcc=;
	h=To:Subject:From:Date:From;
	b=SpMjqV3WaAedqTzRSq8I2mvOjmQr8xpAvwXjSPwgY+PjiITkd4nPeqM7Jik+vOXZq
	 FL/Jxut6F/DSL6RAOhNfS2py9dX2gIfwI11VsicHk99cGEheR+YQ4THqEal0HlP2a9
	 vwZNzDMkub4H/2YIx/SRyA6rE+0q7mFgdDW1yrB1fWZJ+6C9A7lOfsgE+pckXQqS7I
	 e5Kl3Ni/GMHjid4iMismQfcD1jl/ERbrHdEBH0hOgJaXllY1SJoXlQ/IylgORCNiK3
	 CdbDb16QLmN1iHD7DUTOOhXrHXIwSU/d7yi5DL2GxlZhrnn3NI1NQ8tktTIatzaiwc
	 iAirnw9iiJtKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC62C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172484675363.10692.6287290015581544294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991ff0c3b45f5f725b4f1f66789165cbd42a0b75b8642d4dba1c6c9c861620f1
Date: Wed, 28 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724846753
