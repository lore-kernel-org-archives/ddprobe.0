Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130A9158535
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770561234; cv=none; b=lKJYjM2AZUhvcD+18xOBOAsQpZECP3gx4v3VBlLDz7y8OkLoO2Y4e4vpCu2ZKTbVqkwDnPEPtX9qelT6OXZ5246kYHfQhz2JvD7OjbboI/dNlswz3+r6LVUetCiJIiAp9Iz127BjggaPj3pIOUlNowDLS+FU+LK7Kvld6eeDvrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770561234; c=relaxed/simple;
	bh=9P0/EMaPCSg5ksuOh2yrarxi+Ox4RLajRrzHIAZcg7s=;
	h=To:Subject:From:Message-Id:Date; b=f8EP6D6NLNBzhnPgz6DZRoVSezVyKublFQFD6arHjc3YKxyHzgGkvcxRQOD00576YQZ1APfzwINyNjlIUhBFcfAYXF1+n4DdP+1nzmrwo5zejOU2CZWUfX3wTzQqz3BOSvA7XzyOiZin2ihUA5cQM4yb22oo28oc9isPLqfiZbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXYyOR5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXYyOR5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFECBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770561233;
	bh=9P0/EMaPCSg5ksuOh2yrarxi+Ox4RLajRrzHIAZcg7s=;
	h=To:Subject:From:Date:From;
	b=PXYyOR5uoHesceJ5tbzfLG4zITU3sG0aw2rb+Wiy8qW3cghfsSIQdVSs0un8TYfD9
	 UCoz3oG/z+m96EdzzTlPsPdPs1IOV2jZE0YyiSLA+SCkTLYwu+pAy/Ete9PCbuyers
	 ZFxBRZg/A4FeTg3PGEq3pX7icvM92BcSsp703CwzVVgHCHr1TQq6ezNTgHaxVNR237
	 RoYoad9UDrJmei8qZMf7+pPfdHzzAX1R+CaHrBQUUShpGuvqeMTTu5IyhswiGJ002Y
	 xX6OD7xO7e9O3hH0+7R8cTcxdgXwnwBpWwMaclITjSxb5drp/sJPQEzYUNZrSjr0/M
	 WH+oW6FIR/4bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957ECEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056123358.7745.12115034666137216769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a47d4ceae53310ee2f14195feca8f8d90c4113f5dc2ddac41a475ba495a648
Date: Sun, 08 Feb 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770561233
