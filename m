Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B217F9E4
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722651354; cv=none; b=KC7dgZNMsJPoBe9AqiE7I9+LEczqT74cfs8BL6c13eyO0g8pNGJEtwOHCIn+D8IUXGWJhFy88eMXLu4D/qcWMNQajTgIg3dDwSSqn3U/V73Q5AK1g88rKsB1hF6HSA+ZOUJdIiLCFCmU+1KSq4rxEU1rjSTaBlMWD06/gTQ3R8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722651354; c=relaxed/simple;
	bh=rP9C7rTs2phAp93TyKY0cr1djJVyTTvl6DGODy8oHjQ=;
	h=To:Subject:From:Message-Id:Date; b=q9EHX6vdiDs7A8A6lBrhTDJ63Gtls+BxMFa7dnySdh8pwseWyrJCcoz0iVkN8hbDafpXADI3kz+lxvx4DlgcKGWP1pG9fl1XGezM1C0+1MGTiy03QK0NSiXTtxWNZux7WC7iTHpOa1Y2ZMXSqZaBG+oFJvA6rJw+dKs/LAmFtnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0sZKDou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0sZKDou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB6AC32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722651353;
	bh=rP9C7rTs2phAp93TyKY0cr1djJVyTTvl6DGODy8oHjQ=;
	h=To:Subject:From:Date:From;
	b=V0sZKDouik4nERW/5anP1oz+noS0nDTdNo5afUO5vgMQgkFBLpxe5QvTU6KGdv3SA
	 2M81s/LmylTUSj6ogvxNAesNV66mjymDRmgfLS+plOA6tmKDYqp7N1j3o0Ev7Xy03M
	 D3uXPjDDNjUAT+/vFklTe/dDbhWg/aeMd5pUfaWRbsNznAe6dLpJ09Xco54wbF+0by
	 LFY4TfjWyQ/ht/xiMYIjaFn7CH7TR5ayemauTPruK/XbnagQCOKAS8RPC9EG0+Tyi4
	 COfvY3BGm2P7aw1j37KVn5ZW+qqoFm+5Vr9cvL4ZqOOggRO+jbrbFaaPIEg0hFuVWd
	 tZ6ddTU77cuQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4476C3DA7F
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265135366.30555.4073116925357751981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7472a34e8f04230b1a5e7f898f9c7499da74bde9b54fbb7b8347a4ba8c9ccaae
Date: Sat, 03 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722651353
