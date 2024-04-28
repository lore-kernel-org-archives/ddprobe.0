Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE24A55
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714267343; cv=none; b=jVPYfXYGYWmVdUEpRx9ycJYLCtZviIMQy0xIAq2NJN181Iygq4/SErfa1o6HBh/sgs+rbZQsxRGJfjXG9Myee8YkubRqucWglUNAaQ5Fzi2fDF5E55hDgP7e6hwjCFx9A0uXsKvMBpDYPM7bPIudz5ZK+h+KGoatmuwbssHr73I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714267343; c=relaxed/simple;
	bh=tOop/hInBbC4WBK+kwrEwMaSjRj/hqi2iKTWhMIvUyE=;
	h=To:Subject:From:Message-Id:Date; b=pOlloP+MMLWCSY27hy8HhbpY6I3/T5TpdjdLlIiS7/VPUSOV4pWW6U2kEeIfcfbNgBKGlGKhwk5mYXaMwynZBZ/3UR34kzQU+E96CxHOuJlb37yh5vbLNKkaH0yz1Zvc18spm9z4rjwmfELI7e81zgh1FTDPgb2wDk19poxi8Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKZpS9Ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKZpS9Ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51EFC113CE
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714267342;
	bh=tOop/hInBbC4WBK+kwrEwMaSjRj/hqi2iKTWhMIvUyE=;
	h=To:Subject:From:Date:From;
	b=RKZpS9Ju1eYvUMctwsfiJQCZQZySkbcnRFgtBao6h0w2r7kmlWewa6YjEK9rwmIQR
	 0ZAYwVub26wizpnaKrn3+AdefyqdI8+wI42I7TVjJzgthqJsD+OWrZzojesZYfIf+C
	 /DrqJ++xJUW69E8WPVlFj1M2yjkeb8yoKXdljdR1hxNnptVT97wZb4/GISCyj6Uc5X
	 ZOT1BDA9kTPhzdPTQ+nhHkXFk+WsfK0ohMaVJzzo83LplAkcfvj0xOiG5lXNrCVL9u
	 QeraHQNK4rYa8F3+LIdmfkVhJ3EiGwdZdq4kSxSQrcGcERWE92bYW7EcEhU53m/DSp
	 AnZdHXn/f1+hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDFAC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171426734277.14118.11497966431074784953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8733649c837bffbba5d280b0017a67fdbad9202cdb9109f51bba3a27d8d4695
Date: Sun, 28 Apr 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714267342
