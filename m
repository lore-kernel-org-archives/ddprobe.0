Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366F228DF21
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750364394; cv=none; b=ebh/kGNAdU3IbUvBlQTogG3NN70JqbKZv7SFKp6IvaT+4PFyRnTUV6YdgeFvsoiPoU7BLEakTm+mFFQWtI47SZTSOjKnGgLRbk2yXn6MQA8m5zwoougghhfBLg1yLSFT4Bhz6kPaKDZ3bKsS+pxn/456f8Bi8jSHwwqiWLFfK1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750364394; c=relaxed/simple;
	bh=IW2yXdKmrNuNwI4230KcJetCQsGLR/Rt59EM41Jouzw=;
	h=To:Subject:From:Message-Id:Date; b=mTn41hjOLX5IlEt2tmYxRCW3giHgPG5BQQS7Tq41kHmEAyTScKdHk/H60y3Ero3DbfQ0HfhtJtoZTXUNrGw4G0l12ZJ8EcowoAgb5aRzB6HRh63btKanc+ymknBegoqBbGILUPDy5XcR2BphKlRhUiyUIM0vDanhhLZPzlCUz7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6ThVViV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6ThVViV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2243C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750364393;
	bh=IW2yXdKmrNuNwI4230KcJetCQsGLR/Rt59EM41Jouzw=;
	h=To:Subject:From:Date:From;
	b=a6ThVViVZVjdwi0VyLTuc6ngg9VM9FUD7zM3bz08127rVXWwSVMjXwnIy6M9sQhct
	 v9clTHlt4duRUzZjPa8JbWBn5pJKOLDDdSHlVvqcjnVcTsyrePABQYtqLuq8TDq4Wr
	 Zu3Ok/k86WWZu/+ndCsRd/63lHgw6hpDLC1t2MHjaJ5Z+CjyJT+00f2TczuUcvjemQ
	 C//DqC3k814auaFLPNQ4rU8C5Sitkh4HbWZso3Ye6QEb96GZpDGwpjw+l0YrZbrZDF
	 yKkrCqfbHGmIrCQAODfIoWAc8LdJME9Xbiqn0OZvN/alM6soKqdomud4H4S9JsUjA9
	 loHO/Dl6cVeBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92394C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036439357.10599.16029354307832820412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77569a895984d2700cd60b829d837eb36afe8174f1339aef10d734ddb6d77f11
Date: Thu, 19 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750364393
