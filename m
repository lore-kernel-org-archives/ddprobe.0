Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B7841C71
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784510914; cv=none; b=Sh8ZOtHGT9efsr//b7Rl9QChNDyOYDEK0dLGE2XQHNQOFcI9+LaofOl9k9rA8doO70d3jOKEs9RLVB+jUuK5mDkX2IRw5HaltXsRLLbJcE7L6RX0QvMO4diwSf+H1jSIBYY4u6h1s0BXUZBlBa5QXNjkAlVnuYytL96jdKMPdpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784510914; c=relaxed/simple;
	bh=KUZ6OsJ/bOySX5hH70kAw9sxkLNzwZ7KtFS1FpjlzUo=;
	h=To:Subject:From:Message-Id:Date; b=g1DKZZR+OUbTIn4cvOfWlNCC27D0apHUcWgujFa9GDclyFDPwo9BUnBmA885Op/5mjK7tfU4UDU3yt6L/JFSYZpOa/hB/5d1i2AIfRSuERGo5humxFfhVBZwxdkL8t3TESK9FuQs1mLmYv62bnfu3OmqglIuwmBO5FyeuhI/nEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVb6KAAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVb6KAAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCC4C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784510913;
	bh=KUZ6OsJ/bOySX5hH70kAw9sxkLNzwZ7KtFS1FpjlzUo=;
	h=To:Subject:From:Date:From;
	b=kVb6KAAwv1/2TSPaosvfSCYPfdBsYd9WIgoydHIsjdsgw7A0yoW7gMWIr+cT7lii3
	 OImudgxk6RUwDXpBLHeGLZJ2j/fS0W3/DtXp9+10GyeDL+1B5RhOICnXutn/AHw39E
	 jE0v3HqxeIkebZNR93LastkVTgNA2g7xYwgf8mxiOftWdBhZ+wW6cr7lVaI16PHgBq
	 ZOqRPBCeCr94xKJAyh4nZuC/aP+GxdAAcmgREDc9wZKOSeO2jEp2H0kTJ0ZVyCQ+YP
	 2KG/Bbkw0+IxmGTiLmt37VNL0HRrvq5R7nY3IvQhU3fVWs3pow2PtaSALtlZPDo938
	 n9uKIAirBN6Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85BAC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451091368.13092.16632807863014270857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e18ae7a39fada59d7f049666ec72fa7d3352ba36a9b36a4c924c4304470284d
Date: Mon, 20 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784510913
