Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B3E2F2E
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742758194; cv=none; b=S7ZDc7zznGznGB40p7o0Am33lkL8OCtn5xKyxFRYcm5xr20zJyN50ym/WQgLMxQ3dVW/DYelYPfeY9LCgLlxJarIhwpm1vxw4rAvmn+Eqg3HJqcwQ6Tb2ZWrIyCC3wkLGr891eKbhTsMp3eiC5O/2WivKvgslbdXCznJxz8PYyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742758194; c=relaxed/simple;
	bh=FxhHmDGg/P2+lzUon9IFrSy72DUbPOvwgfjhek/kPoM=;
	h=To:Subject:From:Message-Id:Date; b=sTdtuUXx37q+3bauhGNp4zcSGR96Y0zoLsPxZxX4Qc7KUO/iVYTA0bYezbdt90zv/Fv0dP7EnadBKysb7dvckWcmsyyixA/pyKxeEZ+KUCarMlVVES0NC5Y6U8FUcfbEmyuhP9sGQMIXepBgfcsn12k5DAPiQbbhmJtwAtoHfcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvnSBpZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvnSBpZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC6C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742758193;
	bh=FxhHmDGg/P2+lzUon9IFrSy72DUbPOvwgfjhek/kPoM=;
	h=To:Subject:From:Date:From;
	b=BvnSBpZcON14Nqp4/kqKqipWJte8IUCo9+P53PG8x9D7kyBjgs03SYIcVOyKI7g6t
	 oUESi9HZc5bifN++EXoVrs2y7nc8kZL8OLICTXTD1+S5kOZP+/Qr2MAPFSYPLg2vEC
	 uR0OLHnQBHXJeOgLsBF+DXG28ukP7amE0otTTTdwPyKVM9G1vuxHa0XbZuD+BcMUyF
	 tWLw5JoFyidIJ3Mn+u7xWbE+pwxBUF0NaHyhAx7iMKvPL9kQnECbAgwlYh/xgyeaSH
	 j0QWkb5WH10yozyAFvyLRCQxE8szs/xN+5LXGVj9L4nedlXu8iU559wAN3z1XMwzs0
	 8foqDip/39nKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944FEC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275819359.23986.11474584240530845951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56e7642f3d6cc24fba6dc4c4365884b7867c7924f05e8cef965d3384b8c5e83
Date: Sun, 23 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742758193
