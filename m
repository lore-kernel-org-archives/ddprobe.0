Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C662FD1D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764304974; cv=none; b=rG/0JtSgZLHLznQUGnpjWv0lN4uLF65bKeWb2U5la51jtm0lIdto9AZmZiP4aY/uNPeuoRz7ZWw7vXhhBsRbxO0LDifa+nUJxYtcLk+LN5D19uKCmQUZhfUw9BJeVSdJYJ5kU72BpcTEhyqxZrAg3iSaqLnfP/ZPt2QZRVcsQDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764304974; c=relaxed/simple;
	bh=RLbUv61r2WScLtR70N1mdRWsnH6kZxJkTgOrVNv+HM8=;
	h=To:Subject:From:Message-Id:Date; b=OrpHYPvAeczR+Zsp9qAKo0z3cZNVu8jutXFA0PG6cenUIny06V9kqtITWAJHwap7TeH0UeyVzRUGilGJbsfU52KX0oBijVgtM499ZYGThxzrYjZugOVagxfw3NrDERY7CbnrM3WVqVx6ElUAPzeCP3F0BP785fKhUojoq1rFwC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxFHev1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxFHev1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5719C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764304973;
	bh=RLbUv61r2WScLtR70N1mdRWsnH6kZxJkTgOrVNv+HM8=;
	h=To:Subject:From:Date:From;
	b=FxFHev1YiynTkYjlTV7oPhwXySWXkjM9mtcfaQ2tMv2SN4OEVuLNLx/98ko9nU4V/
	 ZH3T/DwGO385ex5WirvaDHkFi9xDh/AvTjHbQXs8TCG89Vszvc8WlvFqOL0kJiTjK3
	 cRW0tk21VXHPx1VreSlWSi4taK+o98mCmTbBbP2DHyrTxNpIyYzmD6aPFVNwJeZqFu
	 wLOQmbXraMaP82m8uaPMElvlCdodVWJK7KLTK/p66qY7NpOP9ir8J5n1VXUdRXjttK
	 cBnx5+mVdiWKjuCstH+gZi8ErJaqBbF5wkutResDHNuf81/u4ySrSSBP8345lYzSIw
	 FxWINC7cyWvRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB0CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430497359.11579.2640132681933432237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c9f88e0d279704d17e952d9836d3e29abfeb97ac066d358c070ab685259df6
Date: Fri, 28 Nov 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764304973
