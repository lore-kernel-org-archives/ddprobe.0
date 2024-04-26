Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32E514A4D2
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714146143; cv=none; b=a/XKvttVZZ3YFtCmxL43jsbGlJ1dKYo1VaH9wdI22gkV4TzReVQqzoo2sh1q4fSkB4KNnuZBm9Jm25oGrrAfQVz/U7LRedNLOFY+Met/yqtMIodHsKAZ6OI6rAz2fkru6DKeXGvshxwsw3ClH0e5kJ3iQCMDBiM92u2oGzmBqH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714146143; c=relaxed/simple;
	bh=aw9xFonpyLVFUY9zOfUsd4OORKsUDafp1Jzidej2awA=;
	h=To:Subject:From:Message-Id:Date; b=hlwHrhuOvGUbf5WV/y7bwNQHXVuQn6p1JrzzUrSpmF9GkGhiF22/il2rHwWxPULnWuU70s214coG+KV5wMx5n7u7tR+YdTD6Z2nukDeifYn01HNMG0nFEDfzxN/eWT/ZT1Kf3bSyYTLeHEOseARuO5j8uS3FpQ+q5SrcHZ008UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTfnFk3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTfnFk3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7451C116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714146142;
	bh=aw9xFonpyLVFUY9zOfUsd4OORKsUDafp1Jzidej2awA=;
	h=To:Subject:From:Date:From;
	b=BTfnFk3BSWcX0Noz4LUBPvP+DJ7hoJ9ydkrKGVEMswKw0iK1Pk4pNIfXhkxWUyk54
	 eazZed6stjyABtVLSXj3j5+tFOU7IkdoTLaziXTqS0pgjmwXr7DGBfpE+f5kuROjvY
	 0l02HbrHo9foq9xA9a6CmHXNhal+qBxdKe5EjPEbnVM/yOrrvGPCatxm2N57J6jr5l
	 r/1a5dibW8TZ/KmE1gGjKb+0bcjP3MZiAxTg3Qr9hCiA3sfo/2aVlTsxysN/uihVhK
	 nB+MykCUkHcvs7dCorGcr4Kp/EUhCK4SnhTX1qKTH5gDLNmgBE5cUWDEiXHQ2Wqwhj
	 CIMnjQFgo7QEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC76C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414614277.20609.9160962835545802994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbbfaad4292b408bdd1e291cdd74a4b3f2f52dcd0f7cfb48426f2ac4b43db5a
Date: Fri, 26 Apr 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714146142
