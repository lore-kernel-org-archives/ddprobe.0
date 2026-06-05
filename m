Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8C637C929
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780623274; cv=none; b=ZsTZibhJV+iMCynXA9l6vndMdgqtgT/+/mynhUJ+avYXTIEhYVaQJTqS0AhlaBm+sndF9PqIjHQIEruNhH7dFAvsYNDzdw9PMOHQicokAhmqT3R/jrMNHTBbzXqoOFXvW1jhOxlmdQ+Sm8P7+WABYzkG/O6a1LMeQ1OVRO4gdyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780623274; c=relaxed/simple;
	bh=9dPtgEwXqWOWlqkf2QYeytoaVnozfHqzVg4YOcup+qU=;
	h=To:Subject:From:Message-Id:Date; b=H1SNGQw+LI4NCkHqf6wBgXl3E58q2KH5Ytwz/iuVbjTGU3gOzhLS7n9chBLMUfhUUMJUGYchTV9GNZ0KEY+1M9qkxj5cl/LmHgbfuDT9Ua8HrMbDw5bLyHeVU9wq6NUUNxkh6T3pBQaCK2nzaxwcktAiO6I8TfwwP2q36xRCmw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NS6ti0bY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NS6ti0bY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E12C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780623273;
	bh=9dPtgEwXqWOWlqkf2QYeytoaVnozfHqzVg4YOcup+qU=;
	h=To:Subject:From:Date:From;
	b=NS6ti0bYz23v+CXG0rkBD4n+qrbVHxdLsHGpW8FvjVkIv7V7DyHtNwnaNNEYlhnL5
	 03eTJ+zBFpbAsq0RXF2jPpOVZ0CrqxK/fu3Dv2YW2U/ZgzIN0zvydSId3JCo4TIud2
	 Dx8awrsAkHsP7JXTAb6GJqwFhSh8QyyZ+IXe09W7rrh12dEef5+OD70rXBm2YnkT6y
	 N5IDt0MTiWkYK+5jB+/5xCpVCYxS/XtblY//BDKB/NqPz/QvkrPjluXFwqcPCQIOOU
	 a5Qhq3J3da33P6hruyybiMULZld11rOrsH7fi+NWs6LEPoi+wd9AXA7OpTihLcssvK
	 CAQM6Stl1EoPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA959CD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062327368.23446.6505962374048188447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee52c83776f308770218cbe74387c63d59c093ad2f8962ba72ec62c785adfa7a
Date: Fri, 05 Jun 2026 01:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780623273
