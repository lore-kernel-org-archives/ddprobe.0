Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B071359A68
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786554034; cv=none; b=c6bT8ZunS/s6Gc6j7EkmrGjkC3COfpKX/7Tk/Fydv0u/6/qb4pIT2o4Xb3GmNblysJ0R5G+BMEC2rfV899qYJcXSJpothpCSHu1EiiYFiyuRGFMKLl03RfXTUtrs1kd1tVSDH5Ey7/q0uEO8psKTXeIygPQ0lv0jwViYpntZcqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786554034; c=relaxed/simple;
	bh=oklkcgcTIr64phWPd4FAxHoifVy99eycxUJI3zCQNP4=;
	h=To:Subject:From:Message-Id:Date; b=K4Cp8IzvvV4Q7uPUKpnnWUJ0pYQhpoAg1vu5sFgWFfPRoO4V1u4+iQnAZXiulnX+B/T41sZDlvn5K4r+Lat3VmK2zHjYdRj8fHUbGtxBAzkGvSSqesmtLhUl4PT4J1bBnzsuAIPK7/U822RLjZdUsW1/r2NCk9/g11+tb2M36kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1CzNAp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1CzNAp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D744AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786554033;
	bh=oklkcgcTIr64phWPd4FAxHoifVy99eycxUJI3zCQNP4=;
	h=To:Subject:From:Date:From;
	b=O1CzNAp5KMptILYxDBiXA4tAfNNkSNa2ugzAydfWx6TM8UVY0kcgtwPDpFM319K7/
	 Wea4mM1x0ZajAD5ft+zrlMLl/TQJVuka3HtSZ1nQmKFf+3GZBJ8SsNaevpfK6QaPNF
	 5F5d631mbB25sTXsc8lUnCHT++Ij8akDTWWN4mZQ0GubMoGn5fJxpWhtagJLKVphTb
	 A1q82dAeosjJTeBSk8BREpi1zh0Q+1DvhGS2V+fKOHWXbXduK7hEgPRs2qwWZxBplB
	 GSg+ta4Dlkq8Qr+8ERVF8bNVKdwdKwcwyPh77v5zBlxq7ZZkxayH6285xbeNOoxDEQ
	 G563o5RTHJX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD60BC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655403368.16381.13865256955890180691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a45efc5cfe6bc56bdeb6ef6e265b5f20c561bc059a08b67621cd3a5d0bb7742
Date: Wed, 12 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786554033
