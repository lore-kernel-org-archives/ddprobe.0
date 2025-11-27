Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B5B54654
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764261774; cv=none; b=sRm4LAKIHlwU0aRtojf03qnN8rsuYsmA8E7bPBfzYbFSNY6LIE+7a7wDh1VUG7Hx1ptOXM51y/+4WVVAQzeXrDoJ2lv6zEGehNGEHOCvcZ4dp5Egvoyg6IfujOUcuvfksCew8WOgmGUsjWfCoRuzF6I+T92yROVM1rrfWABSeVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764261774; c=relaxed/simple;
	bh=h30IdRoS0fmTC52aIFednqtHgxt4G26nflMBo9wZJoc=;
	h=To:Subject:From:Message-Id:Date; b=FxmvDlE03O8jOqvSkK7t0hvknrKY9I8A3XVh1oYJhTbwb+lteIPVbP8eleC5QMr+PZa72lPtGhGvoFsQPq9oEg4mcpTvFsPxvIlqd3T21nsqnSvVPpQ3t2SLkJGKDVdj1hjRMXmOU01hqwxJv8mLd5LTgnpNZgAm/B/4c3RSoV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBKh9gSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBKh9gSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6728C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764261773;
	bh=h30IdRoS0fmTC52aIFednqtHgxt4G26nflMBo9wZJoc=;
	h=To:Subject:From:Date:From;
	b=BBKh9gSdVBxGdt3uQeeVhN9a8Tx5iTtotEjIaEaT11DVWGxzdzmwPOJ14dCgV/wne
	 YmOT7p0zXj45OvQ3EZroRE0TKSCY3MuGE2VESVZRseNC5k3VcR67vhxXl9g7YFQRC4
	 6x6V34j2XTeR4IMBk5WylciChjJxJ6td5RQTlTO3WBYu3gGDsG/Mjv4++sZVviuYlE
	 DggXHFXgBmGW4bMJqyV6sLwGW3EQIVOLTIbXIvszw69pBxwB1EjaNpcLh2vlelgvVw
	 AbrcaBo7Fz8UQjkYByQiK/Njh2mF6Y7+q7hz4uIFaHK+0QRFkdXSm8fJGO5PZ4vuzy
	 4twpORiM25gdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E95D111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426177358.15561.9572377771551901485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486cbb818d71d0f6b93b0dd075180b52e8dc5ae153916c58633a6213900f5bdb
Date: Thu, 27 Nov 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764261773
